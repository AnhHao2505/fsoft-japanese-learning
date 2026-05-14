import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, Info, List } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const KanjiDetail = () => {
  const { id, courseId } = useParams();
  const [kanji, setKanji] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    const fetchKanji = async () => {
      try {
        setLoading(true);
        const response = await api.get(`/courses/${courseId}/kanjis/${id}`);
        setKanji(response.data);
      } catch (err) {
        console.error("Error fetching kanji detail:", err);
        setError('Không thể tải dữ liệu Kanji');
      } finally {
        setLoading(false);
      }
    };
    fetchKanji();
  }, [id, courseId]);

  if (loading) return <SkeletonLoader type="detail" />;
  if (error) return <div className="error-box">{error}</div>;
  if (!kanji) return <div className="error-box">Không tìm thấy Kanji.</div>;

  return (
    <div className="card">
      <div className="card-body">
        <Link to={`/courses/${courseId}/kanjis`} className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
          <ArrowLeft size={18} /> <span style={{ marginLeft: '8px' }}>Quay lại danh mục Kanji</span>
        </Link>
        
        <div style={{ display: 'flex', flexWrap: 'wrap', gap: '30px', marginBottom: '40px' }}>
          {/* Main Character Box */}
          <div style={{ 
            width: '200px', 
            height: '200px', 
            backgroundColor: 'var(--bg-surface)', 
            border: '2px solid var(--border-color)',
            borderRadius: '24px',
            display: 'flex',
            flexDirection: 'column',
            justifyContent: 'center',
            alignItems: 'center',
            boxShadow: 'var(--shadow-lg)'
          }}>
            <span className="jp-text" style={{ fontSize: '6rem', lineHeight: '1', color: 'var(--primary)', fontWeight: 'normal' }}>
              {kanji.character}
            </span>
            <div style={{ marginTop: '16px', color: 'var(--text-muted)', fontSize: '0.9rem' }}>
              {kanji.strokeCount} nét
            </div>
          </div>

          {/* Details Info Box */}
          <div style={{ flex: 1, minWidth: '300px', display: 'flex', flexDirection: 'column', justifyContent: 'center' }}>
            <h1 style={{ fontSize: '2rem', marginBottom: '16px', color: 'white' }}>{kanji.meaning}</h1>
            
            <div style={{ display: 'grid', gridTemplateColumns: '100px 1fr', gap: '16px', marginBottom: '12px' }}>
              <div style={{ color: '#F59E0B', fontWeight: 'bold' }}>Âm On:</div>
              <div className="jp-text" style={{ fontSize: '1.2rem', color: 'white' }}>{kanji.onyomi || '-'}</div>
            </div>
            
            <div style={{ display: 'grid', gridTemplateColumns: '100px 1fr', gap: '16px', marginBottom: '12px' }}>
              <div style={{ color: '#10B981', fontWeight: 'bold' }}>Âm Kun:</div>
              <div className="jp-text" style={{ fontSize: '1.2rem', color: 'white' }}>{kanji.kunyomi || '-'}</div>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '100px 1fr', gap: '16px' }}>
              <div style={{ color: 'var(--text-muted)', fontWeight: 'bold' }}>Cấp độ:</div>
              <div style={{ color: 'white' }}>{kanji.level || 'N2'}</div>
            </div>
          </div>
        </div>

        {/* Examples Section */}
        {kanji.examples && kanji.examples.length > 0 && (
          <div>
            <h3 style={{ fontSize: '1.2rem', marginBottom: '20px', display: 'flex', alignItems: 'center', gap: '8px', color: 'var(--primary)' }}>
              <List size={20} /> Từ vựng ví dụ
            </h3>
            
            <div style={{ display: 'grid', gap: '16px', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))' }}>
              {kanji.examples.map((exampleStr, idx) => {
                // Parse example format: 驚く (おどろく) - Ngạc nhiên
                const dashSplit = exampleStr.split(' - ');
                const jpPart = dashSplit[0] ? dashSplit[0].trim() : exampleStr;
                const meaningPart = dashSplit[1] ? dashSplit[1].trim() : '';
                
                // Try to extract kanji and hiragana reading
                // "驚く (おどろく)"
                let word = jpPart;
                let reading = '';
                const parenMatch = jpPart.match(/(.*?)\s*\((.*?)\)/);
                if (parenMatch) {
                  word = parenMatch[1].trim();
                  reading = parenMatch[2].trim();
                }

                return (
                  <div key={idx} style={{ 
                    padding: '20px', 
                    backgroundColor: 'var(--bg-lighter)', 
                    borderRadius: '16px',
                    border: '1px solid var(--border-color)',
                    display: 'flex',
                    flexDirection: 'column',
                    gap: '8px'
                  }}>
                    <div style={{ display: 'flex', alignItems: 'baseline', gap: '12px' }}>
                      <span className="jp-text" style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white' }}>{word}</span>
                      {reading && <span className="jp-text" style={{ fontSize: '1rem', color: '#10B981' }}>{reading}</span>}
                    </div>
                    {meaningPart && <div style={{ color: 'var(--text-muted)', fontSize: '1.05rem' }}>{meaningPart}</div>}
                  </div>
                );
              })}
            </div>
          </div>
        )}

      </div>
    </div>
  );
};

export default KanjiDetail;
