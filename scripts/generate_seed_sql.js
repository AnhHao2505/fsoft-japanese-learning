// Script to convert courses.json to SQL INSERT statements
const fs = require('fs');
const path = require('path');

const coursesJson = JSON.parse(
  fs.readFileSync(path.join(__dirname, '../backend/src/main/resources/courses.json'), 'utf-8')
);

function escapeSQL(str) {
  if (str == null) return 'NULL';
  return "'" + str.replace(/'/g, "''") + "'";
}

let sql = `-- =============================================
-- V2: Seed data from courses.json
-- =============================================

`;

// Insert courses
for (const course of coursesJson) {
  sql += `INSERT INTO courses (id, name, name_jp, description, level, icon) VALUES (${escapeSQL(course.id)}, ${escapeSQL(course.name)}, ${escapeSQL(course.nameJp)}, ${escapeSQL(course.description)}, ${escapeSQL(course.level)}, ${escapeSQL(course.icon)});\n`;
}

sql += '\n';

// Insert lessons, vocabulary, grammar, examples
for (const course of coursesJson) {
  for (const lesson of course.lessons) {
    sql += `INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (${lesson.id}, ${escapeSQL(course.id)}, ${escapeSQL(lesson.title)}, ${escapeSQL(lesson.titleJp)}, ${escapeSQL(lesson.category)}, ${escapeSQL(lesson.level)}, ${escapeSQL(lesson.content)});\n`;
    
    // Vocabulary
    if (lesson.vocabulary && lesson.vocabulary.length > 0) {
      for (const vocab of lesson.vocabulary) {
        sql += `INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (${lesson.id}, ${escapeSQL(vocab.word)}, ${escapeSQL(vocab.reading)}, ${escapeSQL(vocab.meaning)});\n`;
      }
    }
    
    // Grammar
    if (lesson.grammar && lesson.grammar.length > 0) {
      lesson.grammar.forEach((g, i) => {
        sql += `INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (${lesson.id}, ${escapeSQL(g)}, ${i});\n`;
      });
    }
    
    // Examples
    if (lesson.examples && lesson.examples.length > 0) {
      lesson.examples.forEach((ex, i) => {
        sql += `INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (${lesson.id}, ${escapeSQL(ex)}, ${i});\n`;
      });
    }
    
    sql += '\n';
  }
}

// Reset lesson id sequence to max+1
sql += `SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));\n`;
sql += `SELECT setval('vocabularies_id_seq', (SELECT MAX(id) FROM vocabularies));\n`;

// Create default admin user (password: admin123)
sql += `\n-- Default admin user (password: admin123, BCrypt encoded)\n`;
sql += `INSERT INTO users (username, email, password, display_name, role) VALUES ('admin', 'admin@fsoft.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Admin', 'ADMIN');\n`;

const outputPath = path.join(__dirname, '../backend/src/main/resources/db/migration/V2__seed_data.sql');
fs.writeFileSync(outputPath, sql, 'utf-8');
console.log(`Generated ${outputPath}`);
console.log(`Total SQL lines: ${sql.split('\n').length}`);
