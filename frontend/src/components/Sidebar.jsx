import { useState, useMemo } from 'react';

export default function Sidebar({ lessons, activeId, onSelectLesson }) {
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

  return (
    <aside className="sidebar">
      <div className="sidebar-header">
        <div className="sidebar-logo">
          <div className="logo-icon">🎌</div>
          <h1>
            日本語学習
            <span>FPT Software</span>
          </h1>
        </div>
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

      <div className="lesson-list">
        {filteredLessons.map(lesson => (
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
        ))}
        {filteredLessons.length === 0 && (
          <div style={{ textAlign: 'center', padding: '40px 20px', color: 'var(--text-muted)' }}>
            Không tìm thấy bài học nào 😕
          </div>
        )}
      </div>
    </aside>
  );
}
