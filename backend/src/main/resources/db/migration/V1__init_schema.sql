-- =============================================
-- V1: Initial schema for Japanese Learning app
-- =============================================

-- Users table
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    display_name VARCHAR(100),
    role VARCHAR(20) NOT NULL DEFAULT 'USER',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Courses table
CREATE TABLE courses (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    name_jp VARCHAR(100),
    description VARCHAR(500),
    level VARCHAR(10),
    icon VARCHAR(10)
);

-- Lessons table
CREATE TABLE lessons (
    id BIGSERIAL PRIMARY KEY,
    course_id VARCHAR(50) NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    title VARCHAR(200) NOT NULL,
    title_jp VARCHAR(200),
    category VARCHAR(50),
    level VARCHAR(10),
    content TEXT
);

-- Vocabularies table
CREATE TABLE vocabularies (
    id BIGSERIAL PRIMARY KEY,
    lesson_id BIGINT NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    word VARCHAR(100) NOT NULL,
    reading VARCHAR(200),
    meaning TEXT
);

-- Lesson grammar (element collection)
CREATE TABLE lesson_grammar (
    lesson_id BIGINT NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    grammar_point TEXT NOT NULL,
    sort_order INTEGER NOT NULL DEFAULT 0
);

-- Lesson examples (element collection)
CREATE TABLE lesson_examples (
    lesson_id BIGINT NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    example TEXT NOT NULL,
    sort_order INTEGER NOT NULL DEFAULT 0
);

-- Indexes for performance
CREATE INDEX idx_lessons_course_id ON lessons(course_id);
CREATE INDEX idx_vocabularies_lesson_id ON vocabularies(lesson_id);
CREATE INDEX idx_lesson_grammar_lesson_id ON lesson_grammar(lesson_id);
CREATE INDEX idx_lesson_examples_lesson_id ON lesson_examples(lesson_id);
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_email ON users(email);

-- Full text search indexes
CREATE INDEX idx_lessons_title_search ON lessons USING gin(to_tsvector('simple', title));
CREATE INDEX idx_vocabularies_word_search ON vocabularies USING gin(to_tsvector('simple', word));
