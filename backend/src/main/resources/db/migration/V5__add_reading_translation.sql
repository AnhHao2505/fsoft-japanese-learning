-- V5: Add passage_translation to readings

ALTER TABLE readings
ADD COLUMN passage_translation TEXT;
