-- Migration V11: Update reading titles to be contiguous (15 and 16)

UPDATE readings 
SET title = 'Bài đọc 15' 
WHERE title = 'Bài đọc 17' AND course_id = 'jpd316';

UPDATE readings 
SET title = 'Bài đọc 16' 
WHERE title = 'Bài đọc 18' AND course_id = 'jpd316';
