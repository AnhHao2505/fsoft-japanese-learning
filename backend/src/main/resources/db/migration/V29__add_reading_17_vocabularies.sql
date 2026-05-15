-- V29__add_reading_17_vocabularies.sql

WITH current_reading AS (
    SELECT id FROM readings WHERE title='Bài đọc 17' AND course_id='jpd316' LIMIT 1
)
INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES
((SELECT id FROM current_reading), '留学生', 'りゅうがくせい', 'du học sinh', 0),
((SELECT id FROM current_reading), '～向け', '～むけ', 'hướng đến đối tượng...', 1),
((SELECT id FROM current_reading), '住まい', 'すまい', 'chỗ ở', 2),
((SELECT id FROM current_reading), 'タイプ', '', 'loại, tuýp', 3),
((SELECT id FROM current_reading), '若い人', 'わかいひと', 'người trẻ, thanh niên', 4),
((SELECT id FROM current_reading), '人気がある', 'にんきがある', 'ưa chuộng, yêu thích', 5),
((SELECT id FROM current_reading), '数名', 'すうめい', 'vài người, nhiều người', 6),
((SELECT id FROM current_reading), '共同生活する', 'きょうどうせいかつする', 'sống chung', 7),
((SELECT id FROM current_reading), '寝室', 'しんしつ', 'phòng ngủ', 8),
((SELECT id FROM current_reading), '別々に', 'べつべつに', 'riêng biệt', 9),
((SELECT id FROM current_reading), 'キッチン', '', 'nhà bếp', 10),
((SELECT id FROM current_reading), 'バスルーム', '', 'phòng tắm', 11),
((SELECT id FROM current_reading), '共用', 'きょうよう', 'dùng chung', 12),
((SELECT id FROM current_reading), '国籍', 'こくせき', 'quốc tịch', 13),
((SELECT id FROM current_reading), '年齢', 'ねんれい', 'tuổi tác', 14),
((SELECT id FROM current_reading), '職業', 'しょくぎょう', 'nghề nghiệp', 15),
((SELECT id FROM current_reading), '異文化', 'いぶんか', 'khác biệt văn hóa', 16),
((SELECT id FROM current_reading), '交流', 'こうりゅう', 'giao lưu', 17),
((SELECT id FROM current_reading), '語学', 'ごがく', 'ngôn ngữ học', 18),
((SELECT id FROM current_reading), '学習', 'がくしゅう', 'học tập', 19),
((SELECT id FROM current_reading), '仲よく', 'なかよく', 'thân thiết', 20),
((SELECT id FROM current_reading), '積極的に', 'せっきょくてきに', 'tích cực', 21),
((SELECT id FROM current_reading), '関わる', 'かかわる', 'liên quan', 22),
((SELECT id FROM current_reading), '態度', 'たいど', 'thái độ', 23),
((SELECT id FROM current_reading), '一般', 'いっぱん', 'chung chung', 24),
((SELECT id FROM current_reading), '上達', 'じょうたつ', 'tiến bộ', 25),
((SELECT id FROM current_reading), '関係', 'かんけい', 'liên quan', 26),
((SELECT id FROM current_reading), '特徴', 'とくちょう', 'đặc trưng', 27);
