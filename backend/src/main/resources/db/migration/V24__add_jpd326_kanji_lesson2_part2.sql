-- V24__add_jpd326_kanji_lesson2_part2.sql

-- Kanji 7: 退
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '退', 'THOÁI', 'タイ', 'しりぞ・く', 9, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '退院 (たいいん) - xuất viện', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '退職 (たいしょく) - nghỉ việc, nghỉ hưu', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '後退 (こうたい) - thụt lùi', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '退社 (たいしゃ) - tan làm, rời công ty', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '進退 (しんたい) - tiến thoái', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '退去 (たいきょ) - rời đi', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '退' AND course_id = 'jpd326'), '早退 (そうたい) - về sớm', 6);

-- Kanji 8: 夢
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '夢', 'MỘNG', 'ム', 'ゆめ', 13, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '夢' AND course_id = 'jpd326'), '夢中 (むちゅう) - mê mẫn, say mê', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '夢' AND course_id = 'jpd326'), '悪夢 (あくむ) - ác mộng', 1);

-- Kanji 9: 若
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '若', 'NHƯỢC', 'ジャク', 'わか・い', 8, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '若' AND course_id = 'jpd326'), '若者 (わかもの) - người trẻ', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '若' AND course_id = 'jpd326'), '若年 (じゃくねん) - tuổi trẻ', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '若' AND course_id = 'jpd326'), '若々しい (わかわかしい) - trẻ trung', 2);

-- Kanji 10: 期
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '期', 'KỲ', 'キ', 'ー', 12, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '期間 (きかん) - khoảng thời gian', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '学期 (がっき) - học kỳ', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '定期 (ていき) - định kỳ', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '期待 (きたい) - kỳ vọng', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '初期 (しょき) - giai đoạn đầu', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '期限 (きげん) - thời hạn', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '期' AND course_id = 'jpd326'), '時期 (じき) - thời kỳ', 6);

-- Kanji 11: 反
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '反', 'PHẢN', 'ハン', 'そ・らす', 4, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '反' AND course_id = 'jpd326'), '反動 (はんどう) - phản động, phản lực', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '反' AND course_id = 'jpd326'), '反証 (はんしょう) - phản chứng', 1);

-- Kanji 12: 対
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '対', 'ĐỐI', 'タイ', 'ー', 7, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '反対 (はんたい) - phản đối', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '対立 (たいりつ) - đối lập', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '対談 (たいだん) - đối thoại', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '絶対 (ぜったい) - tuyệt đối', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '対面 (たいめん) - gặp mặt trực tiếp', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '対' AND course_id = 'jpd326'), '対応 (たいおう) - đối ứng, xử lý', 5);

-- Kanji 13: 賛
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level)
VALUES ('jpd326', 602, '賛', 'TÁN', 'サン', 'ー', 15, 'N3');

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '賛' AND course_id = 'jpd326'), '賛成 (さんせい) - tán thành', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '賛' AND course_id = 'jpd326'), '賛意 (さんい) - ý kiến tán thành', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '賛' AND course_id = 'jpd326'), '賛美 (さんび) - ca ngợi', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '賛' AND course_id = 'jpd326'), '協賛 (きょうさん) - đồng tài trợ', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '賛' AND course_id = 'jpd326'), '賛助 (さんじょ) - hỗ trợ, tài trợ', 4);

SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));

