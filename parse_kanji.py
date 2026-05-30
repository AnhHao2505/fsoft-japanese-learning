import docx
import re
import os

doc = docx.Document('file_data/jpd316/Kanji 316.docx')

kanjis = []
current_kanji = None

for p in doc.paragraphs:
    text = p.text.strip()
    if not text:
        continue
    
    if text.startswith("Kanji N3 - Bài"):
        continue
        
    # Check if it's a kanji block start (usually a single character, but might have some space)
    # Or check if next line is Âm Hán Việt
    if len(text) == 1 and not re.match(r'[A-Za-z0-9]', text):
        if current_kanji:
            kanjis.append(current_kanji)
        current_kanji = {
            "character": text,
            "meaning": "",
            "onyomi": "",
            "kunyomi": "",
            "examples": []
        }
        continue
        
    if current_kanji:
        if text.startswith("Âm Hán Việt:"):
            current_kanji["meaning"] = text.replace("Âm Hán Việt:", "").strip()
        elif text.startswith("On:"):
            current_kanji["onyomi"] = text.replace("On:", "").strip()
        elif text.startswith("Kun:"):
            current_kanji["kunyomi"] = text.replace("Kun:", "").strip()
        elif ":" in text or "：" in text:
            # It's an example
            current_kanji["examples"].append(text)

if current_kanji:
    kanjis.append(current_kanji)

sql = "-- V38__add_jpd316_kanji.sql\n\n"
sql += "DO $$\nDECLARE\n    kanji_id BIGINT;\nBEGIN\n\n"

for i, k in enumerate(kanjis):
    char = k['character'].replace("'", "''")
    meaning = k['meaning'].replace("'", "''")
    onyomi = k['onyomi'].replace("'", "''")
    kunyomi = k['kunyomi'].replace("'", "''")
    
    sql += f"    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) \n"
    sql += f"    VALUES ('jpd316', '{char}', '{meaning}', '{onyomi}', '{kunyomi}', 'N3', {i+1}) RETURNING id INTO kanji_id;\n\n"
    
    for j, ex in enumerate(k['examples']):
        ex_clean = ex.replace("'", "''")
        sql += f"    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '{ex_clean}', {j+1});\n"
        
    sql += "\n"

sql += "END $$;\n"

with open('backend/src/main/resources/db/migration/V38__add_jpd316_kanji.sql', 'w', encoding='utf-8') as f:
    f.write(sql)
    
print(f"Generated SQL with {len(kanjis)} kanjis.")
