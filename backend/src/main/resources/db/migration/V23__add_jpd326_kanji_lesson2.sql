-- V23__add_jpd326_kanji_lesson2.sql

-- Tạo bài học Kanji Bài 2
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content)
VALUES (602, 'jpd326', 'Bài 2', '第2課', 'Kanji', 'N3', 'Danh sách Kanji Bài 2');

-- Kanji 1: 談
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '談', 'ĐÀM', 'ダン', '', 15, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '談' AND course_id = 'jpd326'), '会談 (かいだん) - hội đàm', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '談' AND course_id = 'jpd326'), '面談 (めんだん) - phỏng vấn, nói chuyện trực tiếp', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '談' AND course_id = 'jpd326'), '体験談 (たいけんだん) - câu chuyện trải nghiệm', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '談' AND course_id = 'jpd326'), '相談 (そうだん) - trao đổi, bàn bạc, tư vấn', 3);

-- Kanji 2: 配
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '配', 'PHỐI', 'ハイ', 'くば・る', 10, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '配置 (はいち) - bố trí, sắp xếp', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '配達 (はいたつ) - giao hàng', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '心配 (しんぱい) - lo lắng', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '手配 (てはい) - sắp xếp, chuẩn bị', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '宅配 (たくはい) - giao tận nhà', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '配給 (はいきゅう) - phân phối, cung cấp', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '配' AND course_id = 'jpd326'), '年配 (ねんぱい) - lớn tuổi', 6);

-- Kanji 3: 努
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '努', 'NỖ', 'ド', 'つと・める', 7, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '努' AND course_id = 'jpd326'), '努力 (どりょく) - nỗ lực, cố gắng', 0);

-- Kanji 4: 助
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '助', 'TRỢ', 'ジョ', 'たす・かる', 7, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '助' AND course_id = 'jpd326'), '助言 (じょげん) - lời khuyên', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '助' AND course_id = 'jpd326'), '介助犬 (かいじょけん) - chó hỗ trợ', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '助' AND course_id = 'jpd326'), '助役 (じょやく) - phó thị trưởng, trợ lý', 2);

-- Kanji 5: 団
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '団', 'ĐOÀN', 'ダン', '', 6, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '団体 (だんたい) - đoàn thể, tổ chức', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '団結 (だんけつ) - đoàn kết', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '団地 (だんち) - khu nhà tập thể', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '団子 (だんご) - bánh dango', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '集団 (しゅうだん) - tập thể, nhóm', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '社団 (しゃだん) - hiệp hội', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '団' AND course_id = 'jpd326'), '旅団 (りょだん) - lữ đoàn', 6);

-- Kanji 6: 苦
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '苦', 'KHỔ', 'ク', 'にが・い', 8, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '苦' AND course_id = 'jpd326'), '苦情を言う (くじょうをいう) - phàn nàn', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '苦' AND course_id = 'jpd326'), '苦痛を感じる (くつうをかんじる) - cảm thấy đau khổ', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '苦' AND course_id = 'jpd326'), '苦心 (くしん) - khổ tâm, vất vả', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '苦' AND course_id = 'jpd326'), '苦手 (にがて) - không giỏi, yếu', 3);

SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));
SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));
