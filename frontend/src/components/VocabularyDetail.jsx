import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Search } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const VocabularyDetail = () => {
  const { id } = useParams();
  const [lesson, setLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    const fetchLesson = async () => {
      try {
        setLoading(true);
        // We use the lessons API since it includes vocabularies
        const response = await api.get(`/courses/jpd316/lessons/${id}`);
        setLesson(response.data);
      } catch (err) {
        console.error("Error fetching vocabulary detail:", err);
        setError('Không thể tải dữ liệu từ vựng');
      } finally {
        setLoading(false);
      }
    };
    fetchLesson();
  }, [id]);

  if (loading) return <SkeletonLoader type="detail" />;
  if (error) return <div className="error-box">{error}</div>;
  if (!lesson) return <div className="error-box">Không tìm thấy bài học.</div>;

  const filteredVocabularies = (lesson.vocabulary || []).filter(v => 
    v.word.toLowerCase().includes(searchTerm.toLowerCase()) || 
    (v.reading && v.reading.toLowerCase().includes(searchTerm.toLowerCase())) || 
    v.meaning.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="card">
      <div className="card-body">
        <Link to="/vocabularies" className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
          <ArrowLeft size={18} /> <span style={{ marginLeft: '8px' }}>Quay lại danh mục từ vựng</span>
        </Link>
        
        <div className="detail-header">
          <div className="detail-meta">
            <span>TỪ VỰNG</span>
            <span>•</span>
            <span>{lesson.level || 'N3'}</span>
          </div>
          
          <h1 className="detail-title">{lesson.title}</h1>
          {lesson.titleJp && <h2 className="detail-title-jp">{lesson.titleJp}</h2>}
        </div>

        <div className="detail-content">
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
            <h3 style={{ fontSize: '1.25rem', display: 'flex', alignItems: 'center', gap: '8px', margin: 0 }}>
              <BookOpen size={20} className="text-primary" /> Tổng số: {lesson.vocabulary?.length || 0} từ
            </h3>
            
            <div className="search-box" style={{ width: '250px', backgroundColor: 'var(--bg-lighter)', border: '1px solid var(--border-color)' }}>
              <Search size={16} className="search-icon" />
              <input
                type="text"
                className="search-input"
                placeholder="Tìm từ vựng trong bài..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
              />
            </div>
          </div>

          {filteredVocabularies.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
              Không tìm thấy từ vựng nào khớp.
            </div>
          ) : (
            <div style={{ overflowX: 'auto', marginBottom: '32px' }}>
              <table className="data-table">
                <thead>
                  <tr>
                    <th>Hán Tự</th>
                    <th>Cách đọc</th>
                    <th>Nghĩa</th>
                  </tr>
                </thead>
                <tbody>
                  {filteredVocabularies.map((vocab, vIdx) => (
                    <tr key={vocab.id || vIdx}>
                      <td className="jp-text text-primary" style={{ fontWeight: 600, fontSize: '1.1rem' }}>{vocab.word}</td>
                      <td className="jp-text reading-text">{vocab.reading}</td>
                      <td>{vocab.meaning}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default VocabularyDetail;
