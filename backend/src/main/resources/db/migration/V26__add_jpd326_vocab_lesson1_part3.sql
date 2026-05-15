-- V26__add_jpd326_vocab_lesson1_part3.sql

-- Xóa các từ đã có để cập nhật lại với loại từ (nếu có)
DELETE FROM vocabularies WHERE lesson_id = 501 AND word IN ('平均', '降水量');

-- Thêm các từ vựng mới
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '開催する', 'かいさいする', 'tổ chức (Động từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '水道水', 'すいどうすい', 'nước máy (Danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '残り湯', 'のこりゆ', 'nước tắm còn lại (Danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '雨水', 'あまみず', 'nước mưa (Danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '平均', 'へいきん', 'trung bình (Danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '降水量', 'こうすいりょう', 'lượng mưa (Danh từ)');
