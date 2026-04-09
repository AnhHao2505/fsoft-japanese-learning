import { useState, useMemo } from 'react';
import CourseSelector from './CourseSelector';

export default function Sidebar({ courses, activeCourse, onSelectCourse, lessons, activeId, onSelectLesson }) {
  const [search, setSearch] = useState('');
  const [activeCategory, setActiveCategory] = useState('Tất cả');

  const categories = useMemo(() => {
    const cats = ['Tất cả', ...new Set(lessons.map(l => l.category))];
    return cats;
  }, [lessons]);

  const filteredLessons = useMemo(() => {
    return lessons.filter(lesson => {
      const matchCategory = activeCategory === 'Tất cả' || lesson.category === activeCategory;
      const matchSearch = search === '' ||
        lesson.title.toLowerCase().includes(search.toLowerCase()) ||
        lesson.titleJp.includes(search);
      return matchCategory && matchSearch;
    });
  }, [lessons, activeCategory, search]);

  // Reset category filter when course changes
  useMemo(() => {
    setActiveCategory('Tất cả');
    setSearch('');
  }, [activeCourse?.id]);

  return (
    <aside className="sidebar">
      <div className="sidebar-header">
        <div className="sidebar-logo">
          <div className="logo-icon">🎌</div>
          <h1>
            日本語学習
            <span>Japanese Learning</span>
          </h1>
        </div>
      </div>

      <CourseSelector
        courses={courses}
        activeCourse={activeCourse}
        onSelectCourse={onSelectCourse}
      />

      <div className="sidebar-search-area">
        <div className="sidebar-search">
          <span className="search-icon">🔍</span>
          <input
            type="text"
            placeholder="Tìm kiếm bài học..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
        </div>
      </div>

      {categories.length > 1 && (
        <div className="category-filters">
          {categories.map(cat => (
            <button
              key={cat}
              className={`category-btn ${activeCategory === cat ? 'active' : ''}`}
              onClick={() => setActiveCategory(cat)}
            >
              {cat}
            </button>
          ))}
        </div>
      )}

      <div className="lesson-list">
        {filteredLessons.length > 0 ? (
          filteredLessons.map(lesson => (
            <div
              key={lesson.id}
              className={`lesson-item ${activeId === lesson.id ? 'active' : ''}`}
              onClick={() => onSelectLesson(lesson.id)}
            >
              <div className="lesson-item-title">{lesson.title}</div>
              <div className="lesson-item-title-jp">{lesson.titleJp}</div>
              <div className="lesson-item-meta">
                <span className="lesson-tag tag-level">{lesson.level}</span>
                <span className="lesson-tag tag-category">{lesson.category}</span>
              </div>
            </div>
          ))
        ) : (
          <div className="empty-lessons">
            <div className="empty-icon">📭</div>
            <p>Chưa có bài học nào</p>
            <span>Dữ liệu sẽ được cập nhật sớm</span>
          </div>
        )}
      </div>
    </aside>
  );
}
