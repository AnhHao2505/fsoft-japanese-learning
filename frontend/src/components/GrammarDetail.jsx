import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Search, Info, AlertTriangle } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const GrammarDetail = () => {
  const { id, courseId } = useParams();
  const [lesson, setLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    const fetchLesson = async () => {
      try {
        setLoading(true);
        const response = await api.get(`/courses/${courseId}/lessons/${id}`);
        setLesson(response.data);
      } catch (err) {
        console.error("Error fetching grammar detail:", err);
        setError('Không thể tải dữ liệu ngữ pháp');
      } finally {
        setLoading(false);
      }
    };
    fetchLesson();
  }, [id]);

  if (loading) return <SkeletonLoader type="detail" />;
  if (error) return <div className="error-box">{error}</div>;
  if (!lesson) return <div className="error-box">Không tìm thấy bài học.</div>;

  // Extract grammar point text from lesson.grammar (the first element, if any)
  const grammarPoint = lesson.grammar && lesson.grammar.length > 0 ? lesson.grammar[0] : lesson.titleJp || lesson.title;

  // Parse meaning and note from content
  let contentStr = lesson.content || '';
  let meaning = contentStr;
  let note = '';

  const yNghiaMatch = contentStr.match(/Ý nghĩa:\s*(.*?)(?=Lưu ý:|$)/i);
  const luuYMatch = contentStr.match(/Lưu ý:\s*(.*)/i);

  if (yNghiaMatch) {
    meaning = yNghiaMatch[1].trim();
  }
  if (luuYMatch) {
    note = luuYMatch[1].trim();
  }

  return (
    <div className="card">
      <div className="card-body">
        <Link to={`/courses/${courseId}/grammars`} className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
          <ArrowLeft size={18} /> <span style={{ marginLeft: '8px' }}>Quay lại danh mục ngữ pháp</span>
        </Link>
        
        <h1 className="jp-text" style={{ fontSize: '1.8rem', color: 'var(--text)', marginBottom: '24px', fontWeight: 'bold' }}>
          {grammarPoint}
        </h1>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '16px', marginBottom: '32px' }}>
          {/* Ý NGHĨA Box */}
          <div style={{ 
            border: '1px solid #34D399', 
            borderRadius: '8px', 
            backgroundColor: 'rgba(52, 211, 153, 0.05)',
            padding: '16px' 
          }}>
            <div style={{ color: '#059669', fontSize: '0.85rem', fontWeight: 'bold', textTransform: 'uppercase', marginBottom: '8px', display: 'flex', alignItems: 'center', gap: '6px' }}>
              <Info size={16} /> Ý NGHĨA
            </div>
            <div style={{ color: '#047857', fontWeight: 'bold', fontSize: '1.1rem', lineHeight: '1.5' }}>
              {meaning}
            </div>
          </div>

          {/* GHI CHÚ Box */}
          {note && (
            <div style={{ 
              border: '1px solid #FBBF24', 
              borderRadius: '8px', 
              backgroundColor: 'rgba(251, 191, 36, 0.05)',
              padding: '16px' 
            }}>
              <div style={{ color: '#D97706', fontSize: '0.85rem', fontWeight: 'bold', textTransform: 'uppercase', marginBottom: '8px', display: 'flex', alignItems: 'center', gap: '6px' }}>
                <AlertTriangle size={16} /> GHI CHÚ
              </div>
              <div style={{ color: '#B45309', fontWeight: 'bold', fontSize: '1.05rem', lineHeight: '1.5' }}>
                {note}
              </div>
            </div>
          )}
        </div>

        <div>
          <h3 style={{ fontSize: '1.1rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px', color: '#D97706' }}>
            <span style={{ fontSize: '1.2rem' }}>📝</span> Ví dụ
          </h3>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
            {(lesson.examples || []).map((exampleStr, idx) => {
              // Usually example has "→" separating JP and VN
              const parts = exampleStr.split('→');
              const jpText = parts[0] ? parts[0].trim() : '';
              const vnText = parts[1] ? parts[1].trim() : '';

              return (
                <div key={idx} style={{ 
                  border: '1px solid var(--border-color)', 
                  borderRadius: '8px', 
                  padding: '16px',
                  backgroundColor: 'var(--bg-lighter)'
                }}>
                  <div className="jp-text" style={{ fontSize: '1.15rem', fontWeight: 'bold', marginBottom: vnText ? '8px' : '0', color: 'var(--text)' }}>
                    {idx + 1}. {jpText}
                  </div>
                  {vnText && (
                    <div style={{ fontStyle: 'italic', color: 'var(--text-muted)' }}>
                      {vnText}
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        </div>

      </div>
    </div>
  );
};

export default GrammarDetail;
