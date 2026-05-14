-- V18__link_kanji_to_lesson.sql

-- Tạo Lesson mới tên là 'Bài 1' cho Kanji của khóa jpd326
INSERT INTO lessons (id, course_id, title, content, category) 
VALUES (503, 'jpd326', 'Bài 1', 'Kanji Bài 1', 'Kanji');

-- Thêm cột lesson_id vào bảng kanjis
ALTER TABLE kanjis ADD COLUMN lesson_id BIGINT;

-- Tạo khoá ngoại liên kết tới bảng lessons
ALTER TABLE kanjis ADD CONSTRAINT fk_kanji_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE;

-- Cập nhật tất cả các kanji hiện tại của jpd326 vào Bài 1
UPDATE kanjis SET lesson_id = 503 WHERE course_id = 'jpd326';
