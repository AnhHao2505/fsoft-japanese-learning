import React, { useState, useEffect } from 'react';
import { useNavigate, Link, useParams } from 'react-router-dom';
import { BookOpen, Search, Layers } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const VocabularyList = () => {
  const [lessons, setLessons] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const { courseId } = useParams();
  const navigate = useNavigate();

  useEffect(() => {
    const fetchVocabularies = async () => {
      try {
        const response = await api.get(`/courses/${courseId}/lessons`);
        // Only keep vocabulary lessons that have vocabularies
        const vocabLessons = response.data.filter(l => l.category === 'Từ vựng' && l.vocabulary && l.vocabulary.length > 0);
        setLessons(vocabLessons);
      } catch (error) {
        console.error("Error fetching vocab lessons:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchVocabularies();
  }, [courseId]);

  // Filter lessons based on search term in title
  const filteredLessons = lessons.filter(lesson => 
    lesson.title.toLowerCase().includes(searchTerm.toLowerCase()) || 
    (lesson.titleJp && lesson.titleJp.toLowerCase().includes(searchTerm.toLowerCase()))
  );

  return (
    <div className="card">
      <div className="card-header" style={{flexDirection: 'column', alignItems: 'flex-start', gap: '16px'}}>
        <div className="tabs">
          <button className="tab" onClick={() => navigate(`/courses/${courseId}`)}>
            Tổng quan
          </button>
          {courseId !== 'jpd326' && (
            <button className="tab" onClick={() => navigate(`/courses/${courseId}/readings`)}>
              Bài Đọc
            </button>
          )}
          <button className="tab" onClick={() => navigate(`/courses/${courseId}/grammars`)}>
            Ngữ Pháp
          </button>
          <button className="tab active">
            Từ Vựng
          </button>
          {(courseId === 'jpd326' || courseId === 'jpd316') && (
            <button className="tab" onClick={() => navigate(`/courses/${courseId}/kanjis`)}>
              Kanji
            </button>
          )}
        </div>
      </div>
      
      <div className="card-body" style={{padding: '20px'}}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
          <h2 style={{ display: 'flex', alignItems: 'center', gap: '8px', margin: 0, color: 'var(--primary)' }}>
            <BookOpen size={24} /> Danh mục Từ Vựng ({courseId?.toUpperCase()})
          </h2>
          
          <div className="search-box" style={{ width: '300px', backgroundColor: 'var(--bg-lighter)', border: '1px solid var(--border-color)' }}>
            <Search size={18} className="search-icon" />
            <input
              type="text"
              className="search-input"
              placeholder="Tìm kiếm danh mục..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </div>

        {loading ? (
          <SkeletonLoader type="list" count={5} />
        ) : filteredLessons.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
            Không tìm thấy danh mục từ vựng nào.
          </div>
        ) : (
          <div className="lesson-list">
            {filteredLessons
              .sort((a, b) => a.title.localeCompare(b.title, undefined, { numeric: true, sensitivity: 'base' }))
              .map((lesson, idx) => (
              <Link to={`/courses/${courseId}/vocabularies/${lesson.id}`} className="lesson-item" style={{ animationDelay: `${idx * 0.05}s`, animationFillMode: 'both', animationName: 'fadeInUp', animationDuration: '0.5s' }} key={lesson.id}>
                <div className="lesson-meta">
                  <span className="lesson-category">TV</span>
                  <span className="lesson-number">{String(idx + 1).padStart(2, '0')}</span>
                </div>
                
                <div className="lesson-content">
                  <div className="lesson-title">{lesson.title}</div>
                  <div className="lesson-desc">{lesson.titleJp || 'Chi tiết bài học'}</div>
                </div>
                
                <div className="lesson-stats">
                  <span className="stat-badge">
                    <BookOpen size={14} /> {lesson.vocabulary?.length || 0} Từ
                  </span>
                </div>
              </Link>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};

export default VocabularyList;
