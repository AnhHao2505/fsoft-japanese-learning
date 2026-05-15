-- V27__remove_word_type_from_jpd326_lesson1_vocab.sql

UPDATE vocabularies 
SET meaning = regexp_replace(meaning, '\s*\(.*\)$', '') 
WHERE lesson_id = 501 AND meaning LIKE '%(%';
