from docx import Document
import re

# Load DB vocab
with open('/tmp/jpd316_db_vocab.txt', 'r') as f:
    db_vocab = set([line.strip() for line in f.readlines() if line.strip()])

doc = Document('file_data/Từ vựng JPD316.docx')

vocab_list = []
current_lesson_id = 301 # Default to B2-B3

lesson_mapping = {
    'Bài 2': 301,
    'Bài 3': 301,
    'Bài 4': 302,
    # For others, we might have to guess or just put them in 302, 303, 304 etc.
}

for para in doc.paragraphs:
    text = para.text.strip()
    if not text:
        continue
    
    if text.startswith('Bài '):
        if text in lesson_mapping:
            current_lesson_id = lesson_mapping[text]
        continue
    
    # Try to parse line: Word（reading）: Meaning or Word: Meaning or Word - reading: Meaning
    # Many formats in the doc:
    # 品物（しなもの）	: Hàng hóa
    # 手に入れる（てにいれる）: Vào tay / Có được
    # 余裕（よゆう）
    # 様子―ようす: tình trạng, dáng vẻ
    # 斜めーななめ	chéo, nghiêng
    # ひりひり		rát, cay tê
    
    word = ''
    reading = ''
    meaning = ''
    
    # Very basic parsing
    # First split by : or 	 or khoảng trắng to separate word part and meaning part
    parts = re.split(r'[:：\t→]+', text)
    if len(parts) >= 2:
        word_part = parts[0].strip()
        meaning = parts[-1].strip()
        
        # Now parse word_part
        # Either "Word（reading）" or "Word―reading" or "Word"
        m1 = re.match(r'^([^\(（]+)[\(（]([^\)）]+)[\)）]$', word_part)
        m2 = re.match(r'^([^―ー]+)[―ー](.+)$', word_part)
        if m1:
            word = m1.group(1).strip()
            reading = m1.group(2).strip()
        elif m2:
            word = m2.group(1).strip()
            reading = m2.group(2).strip()
        else:
            word = word_part
            reading = ''
    else:
        # Maybe no meaning delimiter, just "余裕（よゆう）"
        m1 = re.match(r'^([^\(（]+)[\(（]([^\)）]+)[\)）]$', text)
        m2 = re.match(r'^([^―ー]+)[―ー](.+)$', text)
        if m1:
            word = m1.group(1).strip()
            reading = m1.group(2).strip()
        elif m2:
            word = m2.group(1).strip()
            reading = m2.group(2).strip()
        else:
            word = text
            reading = ''
            
    if word:
        vocab_list.append({
            'word': word,
            'reading': reading,
            'meaning': meaning,
            'lesson_id': current_lesson_id
        })

missing = []
for v in vocab_list:
    if v['word'] not in db_vocab:
        missing.append(v)

print(f"Total parsed: {len(vocab_list)}")
print(f"Missing in DB: {len(missing)}")

if missing:
    with open('backend/src/main/resources/db/migration/V36__add_missing_jpd316_vocab.sql', 'w') as f:
        f.write("-- V36__add_missing_jpd316_vocab.sql\n\n")
        for v in missing:
            word = v['word'].replace("'", "''")
            reading = v['reading'].replace("'", "''")
            meaning = v['meaning'].replace("'", "''")
            f.write(f"INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES ({v['lesson_id']}, '{word}', '{reading}', '{meaning}');\n")
    print("Generated V36__add_missing_jpd316_vocab.sql")
