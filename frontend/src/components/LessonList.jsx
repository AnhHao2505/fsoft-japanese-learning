import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { BookOpen, HelpCircle } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const LessonList = () => {
  const [lessons, setLessons] = useState([]);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('all');
  const navigate = useNavigate();

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

  // Group lessons by level
  const groupedLessons = filteredLessons.reduce((acc, lesson) => {
    const level = lesson.level || 'N3';
    if (!acc[level]) acc[level] = [];
    acc[level].push(lesson);
    return acc;
  }, {});

  const sortedLevels = Object.keys(groupedLessons).sort().reverse(); // e.g. N3, N4, N5

  if (loading) {
    return <SkeletonLoader type="list" count={5} />;
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
            className="tab"
            onClick={() => navigate('/readings')}
          >
            Bài Đọc
          </button>
          <button 
            className="tab"
            onClick={() => navigate('/grammars')}
          >
            Bài Giảng Ngữ Pháp
          </button>
          <button 
            className="tab"
            onClick={() => navigate('/vocabularies')}
          >
            Từ Vựng
          </button>
        </div>
      </div>
      
      <div className="card-body" style={{padding: '20px'}}>
        {sortedLevels.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
            Không có bài học nào trong mục này.
          </div>
        ) : (
          sortedLevels.map(level => (
            <div key={level} className="level-section fade-in-up" style={{ marginBottom: '32px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '16px', paddingBottom: '12px', borderBottom: '2px dashed var(--border-light)' }}>
                <h3 style={{ fontSize: '1.3rem', fontWeight: '700', color: 'var(--accent)', margin: 0, display: 'flex', alignItems: 'center', gap: '8px' }}>
                  🇯🇵 Trình độ {level}
                </h3>
                <span style={{ fontSize: '0.8rem', color: 'var(--text-muted)', background: 'rgba(255,255,255,0.05)', padding: '4px 12px', borderRadius: '20px', border: '1px solid var(--border-color)' }}>
                  {activeTab === 'bg' ? 'Ngữ pháp' : activeTab === 'tu_vung' ? 'Từ vựng' : 'Ngữ pháp & Từ vựng'}
                </span>
              </div>
              
              <div className="lesson-list">
                {groupedLessons[level].map((lesson, idx) => (
                  /* staggered fade-in animation */
                  <Link to={`/lessons/${lesson.id}`} className="lesson-item" style={{ animationDelay: `${idx * 0.05}s`, animationFillMode: 'both', animationName: 'fadeInUp', animationDuration: '0.5s' }} key={lesson.id}>
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
              </div>
            </div>
          ))
        )}
      </div>
    </div>
  );
};

export default LessonList;
