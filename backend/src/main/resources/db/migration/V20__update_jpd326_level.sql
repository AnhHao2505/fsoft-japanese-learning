-- V20__update_jpd326_level.sql

-- Cập nhật mô tả và trình độ của khoá học
UPDATE courses 
SET description = 'Khóa học tiếng Nhật JPD326 trình độ N3 tại FPT.', level = 'N3' 
WHERE id = 'jpd326';

-- Đồng bộ cập nhật trình độ cho tất cả các bài học (lessons) của jpd326
UPDATE lessons 
SET level = 'N3' 
WHERE course_id = 'jpd326';

-- Đồng bộ cập nhật trình độ cho tất cả chữ kanji của jpd326
UPDATE kanjis 
SET level = 'N3' 
WHERE course_id = 'jpd326';
