const fs = require('fs');

const raw = fs.readFileSync('dokkai_raw.txt', 'utf-8');
const lines = raw.split('\n');

const readings = [];
let currentReading = null;
let mode = 'passage'; // passage, vocab, grammar
let readingIdCounter = 1;

function isJapanese(text) {
    return /[\u3000-\u303F\u3040-\u309F\u30A0-\u30FF\uFF00-\uFFEF\u4E00-\u9FAF\u2605-\u2606\u2190-\u2195\u203B]/.test(text);
}

// Very basic parsing
for (let i = 0; i < lines.length; i++) {
    const line = lines[i].trim();
    if (!line) continue;

    const baiMatch = line.match(/^Bài\s*(\d+)/i);
    if (i === 0 || baiMatch) {
        if (currentReading) {
            readings.push(currentReading);
        }
        
        const num = baiMatch ? baiMatch[1] : 1;
        // Exception for Bài 2 which seems missing "Bài 2" label
        
        currentReading = {
            id: readingIdCounter++,
            title: `Bài đọc ${num}`,
            titleJp: '',
            passageLines: [],
            translationLines: [],
            vocab: [],
            grammar: [],
            notesLines: [],
            kanjiLines: []
        };
        mode = 'passage';
        if (baiMatch) continue; // skip the "Bài X" line
    }

    // Heuristics for mode switching
    if (line.match(/TỪ VỰNG|Từ vựng/i)) {
        mode = 'vocab';
        continue;
    }
    if (line.match(/NGỮ PHÁP/i)) {
        mode = 'grammar';
        continue;
    }

    if (mode === 'passage') {
        if (/^\d+\./.test(line)) {
            currentReading.notesLines.push(line);
        } else if (line.match(/[-–―\t]/) && isJapanese(line) && line.length < 150) {
            currentReading.kanjiLines.push(line);
        } else if (isJapanese(line)) {
            currentReading.passageLines.push(line);
        } else {
            currentReading.translationLines.push(line);
        }
    } else if (mode === 'vocab') {
        // format: word - reading - meaning
        const parts = line.split(/[-–―]/).map(s => s.trim()).filter(s => s);
        if (parts.length >= 2) {
            let word = parts[0];
            let meaning = parts[parts.length - 1];
            let readingText = parts.length > 2 ? parts[1] : word;
            currentReading.vocab.push({ word, readingText, meaning });
        }
    }
}
if (currentReading) {
    readings.push(currentReading);
}

// Generate SQL
let sql = `-- V8: Update Readings Data with Notes and Kanji\n\n`;

readings.forEach((r, idx) => {
    const passage = r.passageLines.join('\\n').replace(/'/g, "''");
    const translation = r.translationLines.join('\\n').replace(/'/g, "''");
    const notes = r.notesLines.join('\\n').replace(/'/g, "''");
    const kanji = r.kanjiLines.join('\\n').replace(/'/g, "''");

    sql += `UPDATE readings \n`;
    sql += `SET passage = '${passage}', \n`;
    sql += `    passage_translation = '${translation}', \n`;
    sql += `    notes = '${notes}', \n`;
    sql += `    difficult_kanji = '${kanji}' \n`;
    sql += `WHERE id = ${r.id};\n\n`;
});

fs.writeFileSync('../backend/src/main/resources/db/migration/V8__update_readings_data.sql', sql);
console.log(`Generated V8 SQL with ${readings.length} reading updates`);
