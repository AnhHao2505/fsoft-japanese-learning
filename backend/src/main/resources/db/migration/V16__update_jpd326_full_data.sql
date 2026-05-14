-- V16__update_jpd326_full_data.sql

-- Xoá dữ liệu từ vựng cũ của lesson 501
DELETE FROM vocabularies WHERE lesson_id = 501;

-- Thêm 64 từ vựng mới
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES 
(501, '気候', 'きこう', 'khí hậu'),
(501, 'コーナー', '', 'góc; cạnh'),
(501, '南北', 'なんぼく', 'nam bắc'),
(501, '島', 'しま', 'đảo'),
(501, '述べる', 'のべる', 'phát biểu; nhận xét'),
(501, '分かれる', 'わかれる', 'phân loại; được chia ra'),
(501, '違い', 'ちがい', 'sự khác nhau; lỗi'),
(501, '平野', 'へいや', 'đồng bằng'),
(501, '山地', 'さんち', 'vùng đồi núi'),
(501, '川', 'かわ', 'sông'),
(501, '結ぶ', 'むすぶ', 'kết buộc; tóm lại'),
(501, '橋', 'はし', 'cầu'),
(501, '国々', 'くにぐに', 'các nước'),
(501, '囲む', 'かこむ', 'vây quanh'),
(501, '温暖', 'おんだん', 'ấm áp'),
(501, 'やや', '', 'một chút'),
(501, '春', 'はる', 'mùa xuân'),
(501, '桜', 'さくら', 'hoa anh đào'),
(501, '次第に', 'しだいに', 'dần dần'),
(501, '～とは別に', '～とはべつに', 'ngoài ~'),
(501, '蒸し暑い', 'むしあつい', 'oi bức; nóng ẩm'),
(501, '梅雨', 'つゆ', 'mùa mưa'),
(501, '列島', 'れっとう', 'quần đảo'),
(501, '全体', 'ぜんたい', 'toàn thể; tất cả'),
(501, 'しかし', '', 'nhưng; tuy nhiên'),
(501, '異なる', 'ことなる', 'khác; khác với'),
(501, '乾燥する', 'かんそうする', 'khô ráo; hanh khô'),
(501, '気温', 'きおん', 'nhiệt độ'),
(501, '平均', 'へいきん', 'trung bình'),
(501, '降水量', 'こうすいりょう', 'lượng mưa'),
(501, '地形', 'ちけい', 'địa hình'),
(501, '位置', 'いち', 'vị trí'),
(501, '設置する', 'せっちする', 'thiết lập'),
(501, '置物', 'おきもの', 'đồ trang trí'),
(501, '連合', 'れんごう', 'liên hiệp'),
(501, '連結', 'れんけつ', 'liên kết'),
(501, '連休', 'れんきゅう', 'kì nghỉ dài'),
(501, '関連', 'かんれん', 'liên quan'),
(501, '国連', 'こくれん', 'liên hợp quốc'),
(501, '固定', 'こてい', 'cố định'),
(501, '固形', 'こけい', 'thể rắn'),
(501, '固有', 'こゆう', 'cố hữu'),
(501, '確固', 'かっこ', 'kiên định'),
(501, '強固', 'きょうこ', 'kiên cố'),
(501, '展開', 'てんかい', 'triển khai'),
(501, '展示', 'てんじ', 'trưng bày'),
(501, '発展', 'はってん', 'phát triển'),
(501, '展覧会', 'てんらんかい', 'triển lãm'),
(501, '展望台', 'てんぼうだい', 'đài quan sát'),
(501, '願望', 'がんぼう', 'nguyện vọng'),
(501, '待望', 'たいぼう', 'kỳ vọng'),
(501, '論文', 'ろんぶん', 'luận văn'),
(501, '論議', 'ろんぎ', 'nghị luận'),
(501, '論証', 'ろんしょう', 'luận chứng'),
(501, '理論', 'りろん', 'lý luận'),
(501, '立論', 'りつろん', 'lập luận'),
(501, '世論', 'よろん', 'dư luận'),
(501, '論理的な考え', 'ろんりてきなかんがえ', 'suy nghĩ logic'),
(501, '人形', 'にんぎょう', 'búp bê'),
(501, '外形', 'がいけい', 'ngoại hình'),
(501, '形成', 'けいせい', 'hình thành'),
(501, '地位', 'ちい', 'địa vị'),
(501, '太平洋側', 'たいへいようがわ', 'phía thái bình dương'),
(501, '湿気', 'しっけ', 'độ ẩm');


-- Xoá Kanji mẫu (nếu có) của jpd326
DELETE FROM kanjis WHERE course_id = 'jpd326';

-- Thêm 8 Kanji mới từ ảnh
INSERT INTO kanjis (id, course_id, character, onyomi, kunyomi, meaning, stroke_count, level, sort_order) VALUES 
(2, 'jpd326', '形', 'ケイ', 'かたち', 'HÌNH (Hình dáng)', 7, 'N2', 1),
(3, 'jpd326', '位', 'イ', 'くらい', 'VỊ (Vị trí)', 7, 'N2', 2),
(4, 'jpd326', '置', 'チ', 'お・く', 'TRÍ (Sắp đặt)', 13, 'N2', 3),
(5, 'jpd326', '連', 'レン', 'つ・れる', 'LIÊN (Liên kết)', 10, 'N2', 4),
(6, 'jpd326', '固', 'コ', 'かた・い', 'CỐ (Cố định)', 8, 'N2', 5),
(7, 'jpd326', '展', 'テン', 'ー', 'TRIỂN (Triển lãm)', 10, 'N2', 6),
(8, 'jpd326', '望', 'ボウ', 'のぞ・む', 'VỌNG (Hy vọng)', 11, 'N2', 7),
(9, 'jpd326', '論', 'ロン', 'ー', 'LUẬN (Lý luận)', 15, 'N2', 8);

-- Thêm ví dụ cho từng Kanji
-- 1. 形
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(2, '地形 (ちけい) - địa hình', 1),
(2, '形成 (けいせい) - hình thành, tạo thành', 2),
(2, '外形 (がいけい) - ngoại hình, hình dáng bên ngoài', 3),
(2, '人形 (にんぎょう) - búp bê', 4);

-- 2. 位
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(3, '位置 (いち) - vị trí', 1),
(3, '地位 (ちい) - địa vị', 2);

-- 3. 置
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(4, '設置 (せっち) - lắp đặt, thiết lập', 1),
(4, '置物 (おきもの) - đồ trang trí, vật trang trí', 2);

-- 4. 連
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(5, '連合 (れんごう) - liên hợp, liên minh', 1),
(5, '連結 (れんけつ) - sự liên kết, nối liền', 2),
(5, '連休 (れんきゅう) - kỳ nghỉ liên tiếp', 3),
(5, '関連 (かんれん) - liên quan', 4),
(5, '国連 (こくれん) - Liên Hợp Quốc', 5);

-- 5. 固
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(6, '固定 (こてい) - cố định', 1),
(6, '固形 (こけい) - dạng rắn, thể rắn', 2),
(6, '固有 (こゆう) - cố hữu, riêng biệt', 3),
(6, '確固 (かっこ) - vững chắc, kiên định', 4),
(6, '強固 (きょうこ) - kiên cố, vững chắc', 5);

-- 6. 展
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(7, '展開 (てんかい) - triển khai, mở rộng', 1),
(7, '展示 (てんじ) - trưng bày, triển lãm', 2),
(7, '発展 (はってん) - phát triển', 3),
(7, '展覧会 (てんらんかい) - cuộc triển lãm', 4);

-- 7. 望
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(8, '展望台 (てんぼうだい) - đài quan sát', 1),
(8, '願望 (がんぼう) - nguyện vọng, mong ước', 2),
(8, '待望 (たいぼう) - sự mong đợi, trông mong', 3);

-- 8. 論
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES 
(9, '論文 (ろんぶん) - luận văn, bài luận', 1),
(9, '論議 (ろんぎ) - thảo luận, tranh luận', 2),
(9, '論証 (ろんしょう) - luận chứng, chứng minh', 3),
(9, '理論 (りろん) - lý luận, lý thuyết', 4),
(9, '立論 (りつろん) - lập luận', 5),
(9, '世論 (よろん) - dư luận', 6),
(9, '論理的な考え (ろんりてきなかんがえ) - suy nghĩ logic, tư duy logic', 7);

-- Cập nhật sequence
SELECT setval('vocabularies_id_seq', (SELECT MAX(id) FROM vocabularies));
SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));
