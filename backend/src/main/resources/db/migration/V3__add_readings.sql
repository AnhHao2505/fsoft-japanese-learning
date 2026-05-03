-- =============================================
-- V3: Add Readings module
-- =============================================

CREATE TABLE readings (
    id BIGSERIAL PRIMARY KEY,
    course_id VARCHAR(50) NOT NULL REFERENCES courses(id),
    title VARCHAR(200) NOT NULL,
    title_jp VARCHAR(200),
    passage TEXT NOT NULL,
    sort_order INTEGER DEFAULT 0
);

CREATE TABLE reading_vocabularies (
    id BIGSERIAL PRIMARY KEY,
    reading_id BIGINT NOT NULL REFERENCES readings(id) ON DELETE CASCADE,
    word VARCHAR(100) NOT NULL,
    reading VARCHAR(200),
    meaning TEXT,
    sort_order INTEGER DEFAULT 0
);

CREATE TABLE reading_grammar (
    id BIGSERIAL PRIMARY KEY,
    reading_id BIGINT NOT NULL REFERENCES readings(id) ON DELETE CASCADE,
    pattern VARCHAR(200) NOT NULL,
    explanation TEXT,
    sort_order INTEGER DEFAULT 0
);

-- Indexes for performance
CREATE INDEX idx_readings_course_id ON readings(course_id);
CREATE INDEX idx_reading_vocabularies_reading_id ON reading_vocabularies(reading_id);
CREATE INDEX idx_reading_grammar_reading_id ON reading_grammar(reading_id);
