-- V22__move_vocab_to_lesson_501.sql

-- Move all vocabularies from Lesson 502 to Lesson 501
UPDATE vocabularies 
SET lesson_id = 501 
WHERE lesson_id = 502;

-- Delete Lesson 502 since it's now empty and the user wanted them merged
DELETE FROM lessons 
WHERE id = 502;
