-- V15__seed_jpd326_data.sql

-- Insert lessons
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (401, 'jpd326', '[01] に囲まれている', 'に囲まれている (Được bao quanh bởi)', 'Ngữ pháp', 'N2', 'Ý nghĩa: Bị/Được bao quanh bởi một cái gì đó.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (401, 'N に 囲まれている', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (401, '日本は海に囲まれている。→ Nhật Bản được bao quanh bởi biển.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (402, 'jpd326', '[02] がち', 'がち (Thường hay, có xu hướng)', 'Ngữ pháp', 'N2', 'Ý nghĩa: Thường hay, có xu hướng làm việc gì đó (thường mang ý nghĩa tiêu cực).');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (402, 'V(ます) + がち / N + がち', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (402, '彼は最近、病気がちだ。→ Anh ấy dạo này hay ốm.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (403, 'jpd326', '[03] に比べ(て)', 'に比べ (So với)', 'Ngữ pháp', 'N2', 'Ý nghĩa: So với (khi so sánh 2 đối tượng).');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (403, 'N に 比べ(て)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (403, '今年は去年に比べて暑い。→ Năm nay nóng hơn so với năm ngoái.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (404, 'jpd326', '[04] に備えて', 'に備えて (Chuẩn bị cho)', 'Ngữ pháp', 'N2', 'Ý nghĩa: Chuẩn bị cho, phòng khi điều gì đó xảy ra.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (404, 'N に 備えて', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (404, '地震に備えて水を買っておく。→ Mua sẵn nước phòng khi động đất.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (405, 'jpd326', '[05] に代わって', 'に代わって (Thay cho, đại diện cho)', 'Ngữ pháp', 'N2', 'Ý nghĩa: Thay cho, đại diện cho ai đó làm việc gì.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (405, 'N に 代わって', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (405, '社長に代わって私が挨拶します。→ Tôi xin đại diện giám đốc phát biểu.', 0);

-- Insert Vocabulary Lesson
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (501, 'jpd326', 'Địa lý & Khí hậu', '地理・気候', 'Từ vựng', 'N2', 'Danh sách từ vựng chủ đề Địa lý và Khí hậu.');

INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '気候', 'きこう', 'Khí hậu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '太平洋側', 'たいへいようがわ', 'Phía Thái Bình Dương');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '蒸し暑い', 'むしあつい', 'Nóng bức, oi bức');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '梅雨', 'つゆ', 'Mùa mưa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '湿気', 'しっけ', 'Độ ẩm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '乾燥する', 'かんそうする', 'Khô ráo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '気温', 'きおん', 'Nhiệt độ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '平均', 'へいきん', 'Trung bình');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (501, '降水量', 'こうすいりょう', 'Lượng mưa');

-- Insert Kanji
INSERT INTO kanjis (id, course_id, character, onyomi, kunyomi, meaning, stroke_count, level, sort_order) 
VALUES (1, 'jpd326', '驚', 'キョウ', 'おどろ.く, おどろ.かす', 'Kinh (Ngạc nhiên)', 22, 'N2', 1);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (1, '驚く (おどろく) - Ngạc nhiên', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (1, '驚異 (きょうい) - Sự kỳ diệu, kinh ngạc', 1);

SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));
SELECT setval('vocabularies_id_seq', (SELECT MAX(id) FROM vocabularies));
SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));
