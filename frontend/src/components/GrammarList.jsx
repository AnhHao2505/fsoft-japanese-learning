import React, { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Layers, Search } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const GrammarList = () => {
  const [lessons, setLessons] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    const fetchGrammars = async () => {
      try {
        const response = await api.get('/courses/jpd316/lessons');
        // Only keep grammar lessons
        const grammarLessons = response.data.filter(l => l.category === 'Ngữ pháp');
        setLessons(grammarLessons);
      } catch (error) {
        console.error("Error fetching grammar lessons:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchGrammars();
  }, []);

  const filteredLessons = lessons.filter(lesson => 
    lesson.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
    (lesson.titleJp && lesson.titleJp.toLowerCase().includes(searchTerm.toLowerCase()))
  );

  return (
    <div className="card">
      <div className="card-header" style={{flexDirection: 'column', alignItems: 'flex-start', gap: '16px'}}>
        <div className="tabs">
          <button className="tab" onClick={() => navigate('/')}>
            Tất cả
          </button>
          <button className="tab" onClick={() => navigate('/readings')}>
            Bài Đọc
          </button>
          <button className="tab active">
            Bài Giảng Ngữ Pháp
          </button>
          <button className="tab" onClick={() => navigate('/vocabularies')}>
            Từ Vựng
          </button>
        </div>
      </div>
      
      <div className="card-body" style={{padding: '20px'}}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
          <h2 style={{ display: 'flex', alignItems: 'center', gap: '8px', margin: 0, color: 'var(--primary)' }}>
            <Layers size={24} /> Danh mục Ngữ Pháp (JPD316)
          </h2>
          
          <div className="search-box" style={{ width: '300px', backgroundColor: 'var(--bg-lighter)', border: '1px solid var(--border-color)' }}>
            <Search size={18} className="search-icon" />
            <input
              type="text"
              className="search-input"
              placeholder="Tìm kiếm ngữ pháp..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </div>

        {loading ? (
          <SkeletonLoader type="list" count={5} />
        ) : filteredLessons.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
            Không tìm thấy ngữ pháp nào.
          </div>
        ) : (
          <div className="lesson-list">
            {filteredLessons.map((lesson, idx) => {
              return (
                <Link 
                  to={`/grammars/${lesson.id}`}
                  key={lesson.id} 
                  className="lesson-item" 
                  style={{ 
                    animationDelay: `${Math.min(idx, 10) * 0.05}s`, 
                    animationFillMode: 'both', 
                    animationName: 'fadeInUp', 
                    animationDuration: '0.4s' 
                  }}
                >
                  <div className="lesson-meta">
                    <span className="lesson-category">NP</span>
                    <span className="lesson-number">{String(idx + 1).padStart(2, '0')}</span>
                  </div>
                  <div className="lesson-content">
                    <div className="lesson-title jp-text">{lesson.titleJp || lesson.title}</div>
                    <div className="lesson-desc">{lesson.title}</div>
                  </div>
                </Link>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
};

export default GrammarList;
