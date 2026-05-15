import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, BookOpen, Search, Maximize2, X, ChevronLeft, ChevronRight } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const VocabularyDetail = () => {
  const { id, courseId } = useParams();
  const [lesson, setLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [error, setError] = useState('');
  
  const [isFlashcardMode, setIsFlashcardMode] = useState(() => {
    return sessionStorage.getItem(`flashcardMode_${id}`) === 'true';
  });
  const [currentCardIndex, setCurrentCardIndex] = useState(() => {
    return parseInt(sessionStorage.getItem(`flashcardIndex_${id}`) || '0', 10);
  });
  const [isFlipped, setIsFlipped] = useState(false);

  useEffect(() => {
    sessionStorage.setItem(`flashcardMode_${id}`, isFlashcardMode);
  }, [isFlashcardMode, id]);

  useEffect(() => {
    sessionStorage.setItem(`flashcardIndex_${id}`, currentCardIndex);
  }, [currentCardIndex, id]);

  const handleNextCard = () => {
    setIsFlipped(false);
    setTimeout(() => {
      setCurrentCardIndex((prev) => (prev + 1) % filteredVocabularies.length);
    }, 150);
  };

  const handlePrevCard = () => {
    setIsFlipped(false);
    setTimeout(() => {
      setCurrentCardIndex((prev) => (prev === 0 ? filteredVocabularies.length - 1 : prev - 1));
    }, 150);
  };


  useEffect(() => {
    const fetchLesson = async () => {
      try {
        setLoading(true);
        // We use the lessons API since it includes vocabularies
        const response = await api.get(`/courses/${courseId}/lessons/${id}`);
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
        <Link to={`/courses/${courseId}/vocabularies`} className="btn btn-ghost" style={{ padding: '0', marginBottom: '24px', display: 'inline-flex' }}>
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
            
                        <div style={{ display: 'flex', gap: '12px' }}>
              <button 
                onClick={() => {
                  setIsFlashcardMode(true);
                  setCurrentCardIndex(0);
                  setIsFlipped(false);
                }} 
                className="btn btn-primary"
                disabled={filteredVocabularies.length === 0}
              >
                <Maximize2 size={18} /> Học bằng Flashcard
              </button>
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
          </div>

                    {isFlashcardMode && filteredVocabularies.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', marginBottom: '32px' }}>
              <div style={{ width: '100%', display: 'flex', justifyContent: 'flex-end', marginBottom: '16px' }}>
                <button onClick={() => setIsFlashcardMode(false)} className="btn btn-outline" style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <X size={18} /> Thoát Flashcard
                </button>
              </div>

              <div style={{ fontSize: '1.1rem', color: 'var(--text-muted)', marginBottom: '16px', fontWeight: 'bold' }}>
                {currentCardIndex + 1} / {filteredVocabularies.length}
              </div>

              <div 
                className={`flashcard-container ${isFlipped ? 'flipped' : ''}`} 
                onClick={() => setIsFlipped(!isFlipped)}
              >
                <div className="flashcard-inner">
                  <div className="flashcard-front">
                    <div className="jp-text text-primary" style={{ fontSize: '6rem', fontWeight: 'bold', lineHeight: 1 }}>
                      {filteredVocabularies[currentCardIndex].word}
                    </div>
                    <div style={{ marginTop: '24px', color: 'var(--text-muted)', fontSize: '0.9rem' }}>
                      Nhấn để lật thẻ
                    </div>
                  </div>
                  <div className="flashcard-back">
                    <div className="reading-text" style={{ fontSize: '2.5rem', color: 'white', marginBottom: '16px', fontWeight: 'bold' }}>
                      {filteredVocabularies[currentCardIndex].reading}
                    </div>
                    <div style={{ fontSize: '1.2rem', color: 'var(--text-main)', textAlign: 'center' }}>
                      {filteredVocabularies[currentCardIndex].meaning}
                    </div>
                  </div>
                </div>
              </div>

              <div style={{ display: 'flex', gap: '24px', marginTop: '32px' }}>
                <button onClick={handlePrevCard} className="btn btn-outline" style={{ padding: '12px 24px', borderRadius: '50px' }}>
                  <ChevronLeft size={24} /> Trước
                </button>
                <button onClick={handleNextCard} className="btn btn-primary" style={{ padding: '12px 24px', borderRadius: '50px' }}>
                  Sau <ChevronRight size={24} />
                </button>
              </div>
            </div>
          ) : filteredVocabularies.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
              Không tìm thấy từ vựng nào khớp.
            </div>
          ) : courseId === 'n5_beginner' ? (
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(130px, 1fr))', gap: '16px', marginBottom: '32px' }}>
              {filteredVocabularies.map((vocab, vIdx) => (
                <div key={vocab.id || vIdx} style={{ backgroundColor: 'var(--bg-lighter)', border: '1px solid var(--border-color)', borderRadius: '12px', padding: '24px 16px', textAlign: 'center', display: 'flex', flexDirection: 'column', alignItems: 'center' }}>
                  <div className="jp-text text-primary" style={{ fontSize: '3.5rem', fontWeight: 'bold', marginBottom: '8px', lineHeight: 1 }}>{vocab.word}</div>
                  <div className="reading-text" style={{ fontSize: '1.2rem', color: 'var(--text)', marginBottom: '8px', fontWeight: 'bold' }}>{vocab.reading}</div>
                  <div style={{ fontSize: '0.9rem', color: 'var(--text-muted)', fontStyle: 'italic' }}>{vocab.meaning}</div>
                </div>
              ))}
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
