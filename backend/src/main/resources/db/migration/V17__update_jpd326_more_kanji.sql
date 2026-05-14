-- V17__update_jpd326_more_kanji.sql

-- Thêm 7 Kanji mới
INSERT INTO kanjis (id, course_id, character, onyomi, kunyomi, meaning, stroke_count, level, sort_order) VALUES 
(10, 'jpd326', '現', 'ゲン', 'あらわ・れる', 'HIỆN (Hiện đại)', 11, 'N2', 9),
(11, 'jpd326', '象', 'ショウ', 'ゾウ', 'TƯỢNG (Hiện tượng)', 12, 'N2', 10),
(12, 'jpd326', '在', 'ザイ', 'ー', 'TẠI (Tồn tại)', 6, 'N2', 11),
(13, 'jpd326', '港', 'コウ', 'みなと', 'CẢNG (Hải cảng)', 12, 'N2', 12),
(14, 'jpd326', '訪', 'ホウ', 'たず・ねる', 'PHỎNG (Thăm hỏi)', 11, 'N2', 13),
(15, 'jpd326', '景', 'ケイ', 'ー', 'CẢNH (Phong cảnh)', 12, 'N2', 14),
(16, 'jpd326', '辺', 'ヘン', 'あた・り', 'BIÊN (Vùng xung quanh)', 5, 'N2', 15);

-- Thêm ví dụ cho từng Kanji
-- 9. 現
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(10, '現代 (げんだい) - hiện đại, thời hiện đại', 1),
(10, '現地 (げんち) - hiện trường, địa phương', 2),
(10, '現場 (げんば) - hiện trường, công trường', 3),
(10, '表現 (ひょうげん) - biểu hiện, diễn đạt', 4);

-- 10. 象
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(11, '現象 (げんしょう) - hiện tượng', 1),
(11, '気象 (きしょう) - khí tượng, thời tiết', 2);

-- 11. 在
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(12, '在職 (ざいしょく) - đang tại chức, đang làm việc', 1),
(12, '在学証明書 (ざいがくしょうめいしょ) - giấy chứng nhận đang học', 2),
(12, '東京在勤中に (とうきょうざいきんちゅうに) - trong thời gian làm việc tại Tokyo', 3),
(12, '日本在留の外国人 (にほんざいりゅうのがいこくじん) - người nước ngoài cư trú tại Nhật Bản', 4),
(12, '現在 (げんざい) - hiện tại', 5),
(12, '在～ (ざい～) - ở tại, cư trú tại', 6);

-- 12. 港
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(13, '海港 (かいこう) - hải cảng', 1),
(13, '出港 (しゅっこう) - rời cảng, xuất cảng', 2),
(13, '入港 (にゅうこう) - vào cảng, nhập cảng', 3),
(13, '帰港 (きこう) - trở về cảng', 4),
(13, '空港 (くうこう) - sân bay', 5);

-- 13. 訪
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(14, '訪問 (ほうもん) - thăm, viếng thăm', 1),
(14, '訪日 (ほうにち) - đến thăm Nhật Bản', 2),
(14, '訪米 (ほうべい) - thăm Mỹ', 3),
(14, '探訪 (たんぼう) - thăm dò, tìm hiểu thực địa', 4),
(14, '来訪 (らいほう) - đến thăm', 5);

-- 14. 景
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(15, '景気 (けいき) - tình hình kinh tế, cảnh khí', 1),
(15, '景品 (けいひん) - quà tặng, phần thưởng', 2),
(15, '景色 (けしき) - phong cảnh', 3),
(15, '風景 (ふうけい) - phong cảnh', 4),
(15, '遠景 (えんけい) - cảnh xa', 5),
(15, '光景 (こうけい) - quang cảnh, cảnh tượng', 6);

-- 15. 辺
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(16, '駅周辺 (えきしゅうへん) - khu vực xung quanh nhà ga', 1),
(16, '海辺 (うみべ) - bờ biển', 2),
(16, '山辺 (やまべ) - vùng núi, ven núi', 3);

-- Cập nhật sequence
SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));
