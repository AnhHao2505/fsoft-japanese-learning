-- =============================================
-- V7: Add notes and difficult kanji to readings
-- =============================================

ALTER TABLE readings ADD COLUMN notes TEXT;
ALTER TABLE readings ADD COLUMN difficult_kanji TEXT;
