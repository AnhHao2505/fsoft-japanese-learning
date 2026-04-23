import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, HelpCircle } from 'lucide-react';
import api from '../utils/api';

const LessonList = () => {
  const [lessons, setLessons] = useState([]);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('all'); // all, bg, tu_vung

  useEffect(() => {
    const fetchLessons = async () => {
      try {
        // Hardcode jpd316 for now since it's the primary course
        const response = await api.get('/courses/jpd316/lessons');
        setLessons(response.data);
      } catch (error) {
        console.error("Error fetching lessons:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchLessons();
  }, []);

  // Filter lessons based on active tab
  const filteredLessons = lessons.filter(lesson => {
    if (activeTab === 'all') return true;
    if (activeTab === 'bg') return lesson.category === 'Ngữ pháp';
    if (activeTab === 'tu_vung') return lesson.category === 'Từ vựng';
    return true;
  });

  if (loading) {
    return <div className="card"><div className="card-body">Đang tải danh sách bài học...</div></div>;
  }

  return (
    <div className="card">
      <div className="card-header" style={{flexDirection: 'column', alignItems: 'flex-start', gap: '16px'}}>
        <div className="tabs">
          <button 
            className={`tab ${activeTab === 'all' ? 'active' : ''}`}
            onClick={() => setActiveTab('all')}
          >
            Tất cả
          </button>
          <button 
            className={`tab ${activeTab === 'bg' ? 'active' : ''}`}
            onClick={() => setActiveTab('bg')}
          >
            Bài Giảng Ngữ Pháp
          </button>
          <button 
            className={`tab ${activeTab === 'tu_vung' ? 'active' : ''}`}
            onClick={() => setActiveTab('tu_vung')}
          >
            Từ Vựng
          </button>
        </div>
      </div>
      
      <div className="card-body" style={{padding: '12px'}}>
        <div className="lesson-list">
          {filteredLessons.map((lesson, idx) => (
            <Link to={`/lessons/${lesson.id}`} className="lesson-item" key={lesson.id}>
              <div className="lesson-meta">
                <span className="lesson-category">{lesson.category === 'Từ vựng' ? 'TV' : 'BG'}</span>
                <span className="lesson-number">{String(idx + 1).padStart(2, '0')}</span>
              </div>
              
              <div className="lesson-content">
                <div className="lesson-title">{lesson.title}</div>
                <div className="lesson-desc">{lesson.titleJp || 'Chi tiết bài học'}</div>
              </div>
              
              <div className="lesson-stats">
                {lesson.category === 'Từ vựng' ? (
                  <span className="stat-badge">
                    <BookOpen size={14} /> {lesson.vocabulary?.length || 0} Từ
                  </span>
                ) : (
                  <span className="stat-badge">
                    <HelpCircle size={14} /> {lesson.grammar?.length || 0} Mẫu
                  </span>
                )}
              </div>
            </Link>
          ))}
          {filteredLessons.length === 0 && (
            <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
              Không có bài học nào trong mục này.
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default LessonList;
