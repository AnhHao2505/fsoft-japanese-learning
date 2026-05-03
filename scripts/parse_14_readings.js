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
            grammar: []
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
        // Attempt to separate JP and VN
        // If the line has mostly Japanese characters, it's JP
        // If it's mostly Vietnamese, it's VN translation
        if (isJapanese(line)) {
            currentReading.passageLines.push(line);
        } else {
            // It might be translation, or it might be a numbering like "1.", "2."
            if (/^\d+\./.test(line)) {
                // Probably a vocabulary or grammar point mixed in the passage
                currentReading.passageLines.push(line);
            } else {
                currentReading.translationLines.push(line);
            }
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
let sql = `-- V6: Seed 14 Readings\n\n`;
sql += `DELETE FROM reading_grammar;\nDELETE FROM reading_vocabularies;\nDELETE FROM readings;\n\n`;

readings.forEach((r, idx) => {
    const passage = r.passageLines.join('\\n').replace(/'/g, "''");
    const translation = r.translationLines.join('\\n').replace(/'/g, "''");
    const title = r.title.replace(/'/g, "''");
    const sortOrder = idx + 1;

    sql += `INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)\n`;
    sql += `VALUES (${r.id}, 'jpd316', '${title}', '', '${passage}', '${translation}', ${sortOrder});\n\n`;

    if (r.vocab.length > 0) {
        sql += `INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES\n`;
        const vVals = r.vocab.map((v, i) => {
            const w = v.word.replace(/'/g, "''");
            const rt = v.readingText.replace(/'/g, "''");
            const m = v.meaning.replace(/'/g, "''");
            return `(${r.id}, '${w}', '${rt}', '${m}', ${i+1})`;
        });
        sql += vVals.join(',\n') + ';\n\n';
    }
});

fs.writeFileSync('../backend/src/main/resources/db/migration/V6__seed_14_readings.sql', sql);
console.log(`Generated V6 SQL with ${readings.length} readings`);
