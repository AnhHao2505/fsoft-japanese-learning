-- =============================================
-- V9: Add Recruitment & Career vocabulary (Lesson 305)
-- =============================================

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (305, 'jpd316', '[Từ vựng B7] Tuyển dụng & Nghề nghiệp', '就職・仕事', 'Từ vựng', 'N3', 'Tổng hợp từ vựng về nội dung công việc, ngành nghề và tuyển dụng.');

INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '事業内容', 'じぎょうないよう', 'nội dung công việc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '職種', 'しょくしゅ', 'ngành nghề');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '応募条件', 'おうぼじょうけん', 'điều kiện ứng tuyển');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '情報処理', 'じょうほうしょり', 'xử lý thông tin');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, 'ソフトウエア', 'ソフトウエア', 'phần mềm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '営業', 'えいぎょう', 'kinh doanh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '運転免許', 'うんてんめんきょ', 'bằng lái xe');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '幼児', 'ようじ', 'nhi đồng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '必須', 'ひっす', 'bắt buộc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '保育士', 'ほいくし', 'bảo mẫu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '教員免許', 'きょういんめんきょ', 'bằng giáo viên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, 'プラスチック', 'プラスチック', 'chất dẻo, nhựa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '運営管理', 'うんえいかんり', 'điều hành quản lý');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '持参', 'じさん', 'mang theo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, '写し', 'うつし', 'bản copy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (305, 'なお', 'なお', 'ngoài ra');

SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));
SELECT setval('vocabularies_id_seq', (SELECT MAX(id) FROM vocabularies));
