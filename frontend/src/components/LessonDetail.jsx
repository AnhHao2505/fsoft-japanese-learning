import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Layers } from 'lucide-react';
import api from '../utils/api';

const LessonDetail = () => {
  const { id } = useParams();
  const [lesson, setLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    const fetchLesson = async () => {
      try {
        setLoading(true);
        // Hardcode jpd316 as courseId
        const response = await api.get(`/courses/jpd316/lessons/${id}`);
        setLesson(response.data);
      } catch (err) {
        setError('Không thể tải dữ liệu bài học');
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    fetchLesson();
  }, [id]);

  if (loading) return <div className="card"><div className="card-body">Đang tải nội dung...</div></div>;
  if (error) return <div className="error-box">{error}</div>;
  if (!lesson) return <div className="error-box">Bài học không tồn tại.</div>;

  return (
    <div className="card">
      <div className="card-body">
        <Link to="/" className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
          <ArrowLeft size={18} /> <span style={{ marginLeft: '8px' }}>Quay lại danh sách</span>
        </Link>
        
        <div className="detail-header">
          <div className="detail-meta">
            <span>{lesson.category}</span>
            <span>•</span>
            <span>{lesson.level || 'N3'}</span>
          </div>
          <h1 className="detail-title">{lesson.title}</h1>
          {lesson.titleJp && <h2 className="detail-title-jp">{lesson.titleJp}</h2>}
        </div>

        <div className="detail-content">
          {lesson.content && (
            <div style={{ marginBottom: '32px', lineHeight: '1.7' }}>
              {lesson.content}
            </div>
          )}

          {/* Grammar Section */}
          {lesson.grammar && lesson.grammar.length > 0 && (
            <div style={{ marginBottom: '32px' }}>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                <Layers size={20} className="text-primary" /> Mẫu Ngữ Pháp
              </h3>
              {lesson.grammar.map((g, idx) => (
                <div key={idx} className="grammar-block">
                  {g}
                </div>
              ))}
            </div>
          )}

          {/* Vocabulary Section */}
          {lesson.vocabulary && lesson.vocabulary.length > 0 && (
            <div style={{ marginBottom: '32px' }}>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px', display: 'flex', alignItems: 'center', gap: '8px' }}>
                <BookOpen size={20} className="text-primary" /> Từ Vựng Cần Nhớ
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
                  {lesson.vocabulary.map((vocab, vIdx) => (
                    <tr key={vIdx}>
                      <td className="jp-text text-primary">{vocab.word}</td>
                      <td className="jp-text reading-text">{vocab.reading}</td>
                      <td>{vocab.meaning}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}

          {/* Examples Section */}
          {lesson.examples && lesson.examples.length > 0 && (
            <div>
              <h3 style={{ fontSize: '1.25rem', marginBottom: '16px' }}>Ví dụ tham khảo</h3>
              {lesson.examples.map((ex, idx) => (
                <div key={idx} className="example-block">
                  {ex}
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default LessonDetail;
