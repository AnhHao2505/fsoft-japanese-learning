-- Migration V12: Add Vocabulary for History & Art (Lesson B8)

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (306, 'jpd316', '[Từ vựng B8] Lịch sử & Nghệ thuật', '歴史(れきし)・美術(びじゅつ)', 'Từ vựng', 'N3', 'Tổng hợp 20 từ vựng chủ đề Lịch sử, Nghệ thuật và Bảo tàng.');

INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES 
(306, '近代', 'きんだい', 'cận đại'),
(306, '国立', 'こくりつ', 'quốc lập'),
(306, '建てる', 'たてる', 'xây dựng'),
(306, '明治時代', 'めいじじだい', 'thời Minh Trị'),
(306, '現代', 'げんだい', 'hiện đại'),
(306, '展示する', 'てんじする', 'triển lãm, trưng bày'),
(306, '', 'すすめる', 'khuyến khích'),
(306, '歴史', 'れきし', 'lịch sử'),
(306, '描く', 'えがく', 'vẽ'),
(306, '洋画', 'ようが', 'tranh phương Tây'),
(306, '特徴', 'とくちょう', 'đặc trưng'),
(306, '東京', 'とうきょう', 'Tokyo'),
(306, '美術館', 'びじゅつかん', 'bảo tàng mỹ thuật'),
(306, '初めて', 'はじめて', 'mới / lần đầu tiên'),
(306, '約', 'やく', 'khoảng'),
(306, '年間', 'ねんかん', 'Năm (số năm)'),
(306, '作品', 'さくひん', 'Tác phẩm'),
(306, '入る', 'はいる', 'Đi vào'),
(306, '～階', '～かい', 'Tầng~'),
(306, '美術', 'びじゅつ', 'Mỹ thuật');
