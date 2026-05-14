-- V14__add_jpd326_and_kanji.sql

CREATE TABLE kanjis (
    id BIGSERIAL PRIMARY KEY,
    course_id VARCHAR(50) NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    character VARCHAR(10) NOT NULL,
    onyomi VARCHAR(200),
    kunyomi VARCHAR(200),
    meaning TEXT,
    stroke_count INTEGER,
    level VARCHAR(10),
    sort_order INTEGER DEFAULT 0
);

CREATE TABLE kanji_examples (
    kanji_id BIGINT NOT NULL REFERENCES kanjis(id) ON DELETE CASCADE,
    example TEXT NOT NULL,
    sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX idx_kanjis_course_id ON kanjis(course_id);
CREATE INDEX idx_kanji_examples_kanji_id ON kanji_examples(kanji_id);

INSERT INTO courses (id, name, name_jp, description, level, icon) 
VALUES ('jpd326', 'JPD326-FPT', 'JPD326', 'Khóa học tiếng Nhật JPD326 trình độ N2 tại FPT.', 'N2', '📗');
