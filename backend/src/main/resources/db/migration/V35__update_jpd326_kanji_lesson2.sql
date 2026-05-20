-- V35__update_jpd326_kanji_lesson2.sql

-- Xóa các Kanji hiện tại của Bài 2 để cập nhật danh sách mới chính xác
DELETE FROM kanjis WHERE lesson_id = 602;

-- Thêm các Kanji mới cho Bài 2
-- Kanji 1: 形
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '形', 'HÌNH', 'けい', 'かたち', 7, 'N3', 1);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '形' AND course_id = 'jpd326' AND lesson_id = 602), '形 (かたち) - Hình dáng, kiểu dáng', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '形' AND course_id = 'jpd326' AND lesson_id = 602), '地形 (ちけい) - Địa hình', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '形' AND course_id = 'jpd326' AND lesson_id = 602), '形成 (けいせい) - Hình thành', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '形' AND course_id = 'jpd326' AND lesson_id = 602), '外形 (がいけい) - Ngoại hình, hình dáng bên ngoài', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '形' AND course_id = 'jpd326' AND lesson_id = 602), '人形 (にんぎょう) - Búp bê', 4);

-- Kanji 2: 置
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '置', 'TRÍ', 'ち', 'おく', 13, 'N3', 2);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '置' AND course_id = 'jpd326' AND lesson_id = 602), '置く (おく) - Đặt, để', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '置' AND course_id = 'jpd326' AND lesson_id = 602), '位置 (いち) - Vị trí', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '置' AND course_id = 'jpd326' AND lesson_id = 602), '設置 (せっち) - Lắp đặt, cài đặt, thiết lập', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '置' AND course_id = 'jpd326' AND lesson_id = 602), '置物 (おきもの) - Đồ trang trí đặt trong phòng', 3);

-- Kanji 3: 位
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '位', 'VỊ', 'い', 'ぐらい', 7, 'N3', 3);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '位' AND course_id = 'jpd326' AND lesson_id = 602), '地位 (ちい) - Địa vị, vị trí xã hội', 0);

-- Kanji 4: 連
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '連', 'LIÊN', 'れん', 'つ・れる、つら・なる', 10, 'N3', 4);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '連れる (つれる) - Dẫn theo, dắt theo', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '連なる (つらなる) - Trải dài, xếp thành dãy, nối đuôi nhau', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '連合 (れんごう) - Liên minh, liên hợp', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '連結 (れんけつ) - Liên kết, nối lại với nhau', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '連休 (れんきゅう) - Kỳ nghỉ dài, ngày nghỉ liên tiếp', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '関連 (かんれん) - Liên quan, liên đới', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '連' AND course_id = 'jpd326' AND lesson_id = 602), '国連 (こくれん) - Liên Hợp Quốc', 6);

-- Kanji 5: 固
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '固', 'CỐ', 'こ', 'かた・い、かた・める', 8, 'N3', 5);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '固い (かたい) - Cứng, chắc chắn, kiên quyết', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '固める (かためる) - Củng cố, làm cho đông cứng lại', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '固定 (こてい) - Cố định', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '固形 (こけい) - Thể rắn, dạng rắn', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '固有 (こゆう) - Cố hữu, vốn có, đặc hữu', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '確固 (かっこ) - Chắc chắn, cương quyết, vững chắc', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '固' AND course_id = 'jpd326' AND lesson_id = 602), '強固 (きょうこ) - Kiên cố, vững mạnh', 6);

-- Kanji 6: 展
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '展', 'TRIỂN', 'てん', 'ー', 10, 'N3', 6);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '展' AND course_id = 'jpd326' AND lesson_id = 602), '展開 (てんかい) - Triển khai, diễn tiến', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '展' AND course_id = 'jpd326' AND lesson_id = 602), '展示 (てんじ) - Trưng bày, triển lãm', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '展' AND course_id = 'jpd326' AND lesson_id = 602), '発展 (はってん) - Phát triển', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '展' AND course_id = 'jpd326' AND lesson_id = 602), '展覧会 (てんらんかい) - Cuộc triển lãm, hội chợ triển lãm', 3);

-- Kanji 7: 望
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '望', 'VỌNG', 'ぼう', 'のぞ・む', 11, 'N3', 7);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '望' AND course_id = 'jpd326' AND lesson_id = 602), '望む (のぞむ) - Nguyện vọng, mong muốn, trông chờ', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '望' AND course_id = 'jpd326' AND lesson_id = 602), '展望台 (てんぼうだい) - Đài quan sát, vọng lâu', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '望' AND course_id = 'jpd326' AND lesson_id = 602), '願望 (がんぼう) - Nguyện vọng, khát vọng', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '望' AND course_id = 'jpd326' AND lesson_id = 602), '待望 (たいぼう) - Kỳ vọng, đợi chờ trong hy vọng', 3);

-- Kanji 8: 論
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '論', 'LUẬN', 'ろん', 'ー', 15, 'N3', 8);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '論文 (ろんぶん) - Luận văn, bài báo khoa học', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '論議 (ろんぎ) - Luận nghị (bàn luận, tranh luận)', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '論証 (ろんしょう) - Luận chứng (chứng minh bằng lý luận)', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '理論 (りろん) - Lý luận, lý thuyết', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '立論 (りつろん) - Lập luận', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '世論 (よろん) - Dư luận (ý kiến công chúng)', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '論' AND course_id = 'jpd326' AND lesson_id = 602), '論理的な考え (ろんりてきなかんがえ) - Tư duy logic, cách suy nghĩ mang tính logic', 6);

-- Kanji 9: 現
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '現', 'HIỆN', 'げん', 'あらわ・れる、あらわ・す', 11, 'N3', 9);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '現れる (あらわれる) - Xuất hiện, lộ ra', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '現す (あらわす) - Biểu lộ, thể hiện ra', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '現代 (げんだい) - Hiện đại, ngày nay', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '現地 (げんち) - Tại chỗ, địa phương sở tại', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '現場 (げんば) - Hiện trường (nơi làm việc/xảy ra sự việc)', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '現' AND course_id = 'jpd326' AND lesson_id = 602), '表現 (ひょうげん) - Biểu hiện, diễn tả, diễn đạt', 5);

-- Kanji 10: 象
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '象', 'TƯỢNG', 'しょう、ぞう', 'ー', 12, 'N3', 10);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '象' AND course_id = 'jpd326' AND lesson_id = 602), '現象 (げんしょう) - Hiện tượng', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '象' AND course_id = 'jpd326' AND lesson_id = 602), '気象 (きしょう) - Khí tượng (thời tiết)', 1);

-- Kanji 11: 在
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '在', 'TẠI', 'ざい', 'ー', 6, 'N3', 11);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '現在 (げんざい) - Hiện tại', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '在職 (ざいしょく) - Tại chức (đang làm việc)', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '在学証明書 (ざいがくしょうめいしょ) - Giấy chứng nhận đang học tại trường', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '東京在勤中に (とうきょうざいきんちゅうに) - Trong thời gian đang làm việc tại Tokyo', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '日本在留の外国人 (にほんざいりゅうがいこくじん) - Người nước ngoài đang cư trú tại Nhật Bản', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '在' AND course_id = 'jpd326' AND lesson_id = 602), '在～ (ざい～) - Đang ở tại, thường trú tại ~', 5);

-- Kanji 12: 港
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '港', 'CẢNG', 'こう', 'みなと', 12, 'N3', 12);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '港 (みなと) - Cảng, bến cảng', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '空港 (くうこう) - Sân bay, phi trường', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '海港 (かいこう) - Hải cảng', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '出港 (しゅっこう) - Xuất cảng (tàu rời bến)', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '入港 (にゅうこう) - Nhập cảng (tàu vào bến)', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '港' AND course_id = 'jpd326' AND lesson_id = 602), '帰港 (きこう) - Quay về cảng', 5);

-- Kanji 13: 訪
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '訪', 'PHỎNG', 'ほう', 'たず・ねる、おとず・れる', 11, 'N3', 13);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '訪ねる (たずねる) - Ghé thăm, đến thăm (người, địa điểm)', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '訪れる (おとずれる) - Ghé thăm, chuyến thăm ghé chơi', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '訪問 (ほうもん) - Thăm hỏi, viếng thăm', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '訪日 (ほうにち) - Chuyến thăm Nhật Bản', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '訪米 (ほうべい) - Chuyến thăm Mỹ', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '探訪 (たんぼう) - Phóng sự điều tra, thăm thú thực tế', 5);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '訪' AND course_id = 'jpd326' AND lesson_id = 602), '来訪 (らいほう) - Đến thăm, tới thăm', 6);

-- Kanji 14: 景
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '景', 'CẢNH', 'けい', 'ー', 12, 'N3', 14);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '景気 (けいき) - Tình hình kinh tế, tình trạng kinh doanh', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '景品 (けいひん) - Quà tặng kèm, phần thưởng khuyến mãi', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '景色 (けしき) - Phong cảnh, cảnh sắc', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '風景 (ふうけい) - Phong cảnh, cảnh tượng tự nhiên', 3);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '遠景 (えんけい) - Viễn cảnh, cảnh nhìn từ xa', 4);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '景' AND course_id = 'jpd326' AND lesson_id = 602), '光景 (こうけい) - Quang cảnh, cảnh tượng (một khoảnh khắc)', 5);

-- Kanji 15: 辺
INSERT INTO kanjis (course_id, lesson_id, character, meaning, onyomi, kunyomi, stroke_count, level, sort_order)
VALUES ('jpd326', 602, '辺', 'BIÊN', 'へん', 'あた・り', 5, 'N3', 15);

INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '辺' AND course_id = 'jpd326' AND lesson_id = 602), '辺り (あたり) - Vùng xung quanh, lân cận', 0);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '辺' AND course_id = 'jpd326' AND lesson_id = 602), '駅周辺 (えきしゅうへん) - Khu vực xung quanh nhà ga', 1);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '辺' AND course_id = 'jpd326' AND lesson_id = 602), '海辺 (うみべ) - Bờ biển, bãi biển', 2);
INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES ((SELECT id FROM kanjis WHERE character = '辺' AND course_id = 'jpd326' AND lesson_id = 602), '山辺 (やまべ) - Vùng ven núi, rìa núi', 3);

SELECT setval('kanjis_id_seq', (SELECT MAX(id) FROM kanjis));
