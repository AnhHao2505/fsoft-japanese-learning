import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Layers } from 'lucide-react';
import api from '../utils/api';

const ReadingDetail = () => {
  const { id } = useParams();
  const [reading, setReading] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [showTranslation, setShowTranslation] = useState(false);

  useEffect(() => {
    const fetchReading = async () => {
      try {
        setLoading(true);
        const response = await api.get(`/courses/jpd316/readings/${id}`);
        setReading(response.data);
      } catch (err) {
        setError('Không thể tải dữ liệu bài đọc');
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    fetchReading();
  }, [id]);

  if (loading) return <div className="card"><div className="card-body">Đang tải nội dung...</div></div>;
  if (error) return <div className="error-box">{error}</div>;
  if (!reading) return <div className="error-box">Bài đọc không tồn tại.</div>;

  return (
    <div className="card">
      <div className="card-body">
        <Link to="/readings" className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
          <ArrowLeft size={18} /> <span style={{ marginLeft: '8px' }}>Quay lại danh sách bài đọc</span>
        </Link>
        
        <div className="detail-header">
          <div className="detail-meta">
            <span>BÀI ĐỌC</span>
            <span>•</span>
            <span>N3</span>
          </div>
          
        {/* Title and Translation Toggle */}
        <div className="d-flex justify-content-between align-items-center mb-4 pb-3 border-bottom">
          <h1 className="detail-title">{reading.title}</h1>
          {reading.passageTranslation && (
            <button 
              className={`btn btn-outline-primary ${showTranslation ? 'active' : ''}`}
              onClick={() => setShowTranslation(!showTranslation)}
            >
              {showTranslation ? 'Ẩn bản dịch' : 'Hiển thị bản dịch'}
            </button>
          )}
        </div>
          {reading.titleJp && <h2 className="detail-title-jp">{reading.titleJp}</h2>}
        </div>

        <div className="detail-content">
          {/* Passage Container */}
          <div className="reading-passage-container mb-5">
            <div className="reading-passage">
              {reading.passage.split('\n').map((paragraph, index) => (
                <p key={index}>{paragraph}</p>
              ))}
            </div>
            
            {/* Translation Container */}
            {showTranslation && reading.passageTranslation && (
              <div className="reading-translation mt-4 p-4 rounded bg-dark border border-secondary">
                <h5 className="text-primary mb-3">Bản dịch:</h5>
                <div className="text-light" style={{ opacity: 0.9 }}>
                  {reading.passageTranslation.split('\n').map((paragraph, index) => (
                    <p key={index} className="mb-2">{paragraph}</p>
                  ))}
                </div>
              </div>
            )}
          </div>

          {/* Vocabulary Section */}
          {reading.vocabularies && reading.vocabularies.length > 0 && (
            <div style={{ marginBottom: '32px' }}>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                <BookOpen size={20} className="text-primary" /> Từ Vựng Chính
              </h3>
              <table className="data-table">
                <thead>
                  <tr>
                    <th>Từ vựng</th>
                    <th>Cách đọc</th>
                    <th>Ý nghĩa</th>
                  </tr>
                </thead>
                <tbody>
                  {reading.vocabularies.map((vocab, vIdx) => (
                    <tr key={vIdx}>
                      <td className="jp-text text-primary">{vocab.word}</td>
                      <td className="jp-text reading-text">{vocab.readingText}</td>
                      <td>{vocab.meaning}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}

          {/* Grammar Section */}
          {reading.grammars && reading.grammars.length > 0 && (
            <div style={{ marginBottom: '32px' }}>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                <Layers size={20} className="text-primary" /> Ngữ Pháp
              </h3>
              {reading.grammars.map((g, idx) => (
                <div key={idx} className="grammar-block">
                  <div className="grammar-pattern">{g.pattern}</div>
                  <div className="grammar-explanation">{g.explanation}</div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default ReadingDetail;
