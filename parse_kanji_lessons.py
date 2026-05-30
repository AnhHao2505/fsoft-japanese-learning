import docx
import os

doc = docx.Document('file_data/jpd316/Kanji 316.docx')

lessons = {}
current_lesson = "Bài 4" # Default to Bài 4 based on document
current_kanji = None

for p in doc.paragraphs:
    text = p.text.strip()
    if not text:
        continue
    
    if text.startswith("Kanji N3 - "):
        current_lesson = text.replace("Kanji N3 - ", "").strip()
        if current_lesson not in lessons:
            lessons[current_lesson] = []
        continue
    
    if len(text) == 1 and not text.isascii():
        lessons.setdefault(current_lesson, []).append(text)

sql = "-- V39__link_jpd316_kanji.sql\n\nDO $$\nDECLARE\n    lesson_id BIGINT;\nBEGIN\n"

for lesson_title, kanjis in lessons.items():
    if not kanjis:
        continue
    sql += f"    -- {lesson_title}\n"
    sql += f"    INSERT INTO lessons (course_id, title, category, level) VALUES ('jpd316', '{lesson_title}', 'Kanji', 'N3') RETURNING id INTO lesson_id;\n"
    
    for kanji in kanjis:
        sql += f"    UPDATE kanjis SET lesson_id = lesson_id WHERE course_id = 'jpd316' AND character = '{kanji}';\n"
    
    sql += "\n"

sql += "END $$;\n"

with open('backend/src/main/resources/db/migration/V39__link_jpd316_kanji.sql', 'w', encoding='utf-8') as f:
    f.write(sql)

print(f"Generated V39 mapping for {len(lessons)} lessons.")
