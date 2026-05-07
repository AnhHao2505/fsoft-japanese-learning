import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Layers, FileText } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

// Helper: split text that may contain literal "\n" or real newlines
const splitLines = (text) => {
  if (!text) return [];
  return text.split(/\\n|\n/).map(s => s.trim()).filter(Boolean);
};

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

  if (loading) return <SkeletonLoader type="detail" />;
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
              {splitLines(reading.passage).map((paragraph, index) => (
                <p key={index}>{paragraph}</p>
              ))}
            </div>
            
            {/* Translation Container */}
            {showTranslation && reading.passageTranslation && (
              <div className="reading-translation mt-4 p-4 rounded bg-dark border border-secondary">
                <h5 className="text-primary mb-3">Bản dịch:</h5>
                <div className="text-light" style={{ opacity: 0.9 }}>
                  {splitLines(reading.passageTranslation).map((paragraph, index) => (
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

          {/* Difficult Kanji Section */}
          {reading.difficultKanji && reading.difficultKanji.trim().length > 0 && (
            <div style={{ marginBottom: '32px' }}>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                <BookOpen size={20} className="text-primary" /> Từ vựng Hán tự khó (N3)
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
                  {splitLines(reading.difficultKanji).map((line, idx) => {
                    // Split by dash/tab separators
                    const parts = line.split(/[-–―\t]+/).map(s => s.trim()).filter(Boolean);
                    if (parts.length === 0) return null;
                    const word = parts[0] || '';
                    const readingText = parts.length >= 3 ? parts[1] : '';
                    const meaning = parts.length >= 3 ? parts.slice(2).join(', ') : parts.slice(1).join(', ');
                    return (
                      <tr key={idx}>
                        <td className="jp-text text-primary" style={{ fontWeight: 600 }}>{word}</td>
                        <td className="jp-text" style={{ color: 'var(--text-muted)' }}>{readingText}</td>
                        <td>{meaning}</td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
          )}

          {/* Notes Section */}
          {reading.notes && reading.notes.trim().length > 0 && (() => {
            const parseNoteLine = (line) => {
              const numMatch = line.match(/^(\d+\.\s*)(.*)$/);
              if (!numMatch) return { number: '', jp: '', meaning: line };
              
              const number = numMatch[1];
              const rest = numMatch[2];
              
              const colonSplit = rest.split(/[:：]/);
              if (colonSplit.length > 1) {
                return { number, jp: colonSplit[0].trim(), meaning: colonSplit.slice(1).join(':').trim() };
              }
              
              const dashSplit = rest.split(/\s+-\s+/);
              if (dashSplit.length > 1) {
                return { number, jp: dashSplit[0].trim(), meaning: dashSplit.slice(1).join(' - ').trim() };
              }
              
              const lastJpMatch = rest.match(/[\u3040-\u30FF\u4E00-\u9FAF）)]/g);
              if (lastJpMatch) {
                const lastJpChar = lastJpMatch.pop();
                const lastJpCharIndex = rest.lastIndexOf(lastJpChar);
                if (lastJpCharIndex !== -1 && lastJpCharIndex < rest.length - 1) {
                  return {
                    number,
                    jp: rest.substring(0, lastJpCharIndex + 1).trim(),
                    meaning: rest.substring(lastJpCharIndex + 1).replace(/^[-\s]+/, '')
                  };
                }
              }
              
              return { number, jp: '', meaning: rest };
            };

            return (
              <div style={{ marginBottom: '32px', padding: '24px 28px', borderRadius: '12px', backgroundColor: 'rgba(255,255,255,0.04)', border: '1px solid var(--border-color)' }}>
                <h3 style={{ fontSize: '1.3rem', marginBottom: '20px', display: 'flex', alignItems: 'center', gap: '10px', color: 'var(--warning)' }}>
                  <FileText size={22} /> Ghi ch&#250;
                </h3>
                <ul style={{ listStyle: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '14px' }}>
                  {splitLines(reading.notes).map((line, idx) => {
                    const parsed = parseNoteLine(line);
                    return (
                      <li key={idx} style={{ display: 'flex', alignItems: 'flex-start', gap: '12px', fontSize: '1.05rem', lineHeight: '1.75', color: 'var(--text-main)' }}>
                        <span style={{ color: 'var(--accent)', fontWeight: 700, flexShrink: 0, fontSize: '1.1rem', marginTop: '1px' }}>&#8226;</span>
                        <span>
                          {parsed.jp ? (
                            <>
                              <span style={{ fontWeight: 600, color: 'var(--primary)' }}>{parsed.number}{parsed.jp}</span>
                              <span style={{ color: 'var(--text-muted)', margin: '0 6px' }}>&#8594;</span>
                              <span>{parsed.meaning}</span>
                            </>
                          ) : (
                            <span>{parsed.meaning}</span>
                          )}
                        </span>
                      </li>
                    );
                  })}
                </ul>
              </div>
            );
          })()}
        </div>
      </div>
    </div>
  );
};

export default ReadingDetail;
