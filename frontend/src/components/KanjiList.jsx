import React, { useState, useEffect } from 'react';
import { useNavigate, Link, useParams } from 'react-router-dom';
import { Search, PenTool, ChevronDown, ChevronRight } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const KanjiList = () => {
  const [kanjis, setKanjis] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [expandedGroups, setExpandedGroups] = useState({});
  const { courseId } = useParams();
  const navigate = useNavigate();

  const toggleGroup = (groupName) => {
    setExpandedGroups(prev => ({
      ...prev,
      [groupName]: prev[groupName] === undefined ? false : !prev[groupName]
    }));
  };

  useEffect(() => {
    const fetchKanjis = async () => {
      try {
        const response = await api.get(`/courses/${courseId}/kanjis`);
        setKanjis(response.data);
      } catch (error) {
        console.error("Error fetching kanjis:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchKanjis();
  }, [courseId]);

  const parseExample = (exampleStr) => {
    if (!exampleStr) return { word: '', reading: '', meaning: '' };
    const dashSplit = exampleStr.split(' - ');
    const jpPart = dashSplit[0] ? dashSplit[0].trim() : exampleStr;
    const meaning = dashSplit[1] ? dashSplit[1].trim() : '';
    
    let word = jpPart;
    let reading = '';
    const parenMatch = jpPart.match(/(.*?)\s*\((.*?)\)/);
    if (parenMatch) {
      word = parenMatch[1].trim();
      reading = parenMatch[2].trim();
    }
    return { word, reading, meaning };
  };

  const filteredKanjis = kanjis.filter(kanji => 
    kanji.character.includes(searchTerm) || 
    (kanji.meaning && kanji.meaning.toLowerCase().includes(searchTerm.toLowerCase())) ||
    (kanji.onyomi && kanji.onyomi.includes(searchTerm)) ||
    (kanji.kunyomi && kanji.kunyomi.includes(searchTerm))
  );

  const groupedKanjis = {};
  filteredKanjis.forEach(kanji => {
    const groupName = kanji.lesson ? kanji.lesson.title : 'Khác';
    if (!groupedKanjis[groupName]) {
      groupedKanjis[groupName] = [];
    }
    groupedKanjis[groupName].push(kanji);
  });

  return (
    <div className="card">
      <style>{`
        .kanji-detail-card {
          background-color: var(--bg-surface);
          backdrop-filter: blur(12px);
          border: 1px solid var(--border-color);
          border-radius: 20px;
          margin-bottom: 24px;
          box-shadow: var(--shadow-md);
          overflow: hidden;
          display: flex;
          flex-direction: column;
          transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        .kanji-detail-card:hover {
          transform: translateY(-4px);
          box-shadow: var(--shadow-lg), var(--shadow-glow);
          border-color: rgba(59, 130, 246, 0.3);
        }
        .kanji-detail-header {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 12px 20px;
          border-bottom: 1px solid var(--border-light);
          background-color: rgba(255, 255, 255, 0.02);
        }
        .kanji-detail-body {
          display: flex;
          flex-direction: column;
        }
        @media (min-width: 768px) {
          .kanji-detail-body {
            flex-direction: row;
          }
        }
        .chugoc-section {
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          padding: 32px 24px;
          width: 100%;
          border-bottom: 1px solid var(--border-light);
          background: radial-gradient(circle at center, rgba(59, 130, 246, 0.08) 0%, transparent 70%);
        }
        @media (min-width: 768px) {
          .chugoc-section {
            width: 260px;
            border-bottom: none;
            border-right: 1px solid var(--border-light);
            flex-shrink: 0;
          }
        }
        .kanji-main-char {
          font-size: 5.5rem;
          line-height: 1;
          background: linear-gradient(135deg, #60A5FA, #3B82F6);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          font-weight: bold;
          margin-bottom: 12px;
          transition: all 0.3s ease;
          text-shadow: 0 0 30px rgba(59, 130, 246, 0.3);
        }
        .kanji-main-char:hover {
          transform: scale(1.1) rotate(2deg);
          text-shadow: 0 0 40px rgba(59, 130, 246, 0.6);
        }
        .kanji-sino-viet {
          font-size: 1.35rem;
          font-weight: 800;
          background: linear-gradient(90deg, #F87171, #EF4444);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          text-transform: uppercase;
          margin-bottom: 20px;
          letter-spacing: 0.15em;
        }
        .kanji-readings-row {
          display: flex;
          gap: 12px;
          width: 100%;
        }
        .reading-pill-box {
          flex: 1;
          background-color: rgba(255, 255, 255, 0.03);
          border: 1px solid var(--border-color);
          border-radius: 12px;
          padding: 8px 6px;
          text-align: center;
          transition: all 0.2s;
        }
        .reading-pill-box:hover {
          background-color: rgba(255, 255, 255, 0.06);
          border-color: rgba(255, 255, 255, 0.15);
        }
        .reading-pill-label {
          font-size: 0.7rem;
          font-weight: 700;
          color: var(--text-muted);
          margin-bottom: 4px;
        }
        .reading-pill-val {
          font-size: 0.95rem;
          font-weight: 600;
          color: var(--text-main);
        }
        .vidu-section {
          flex: 1;
          padding: 24px;
          display: flex;
          flex-direction: column;
        }
        .vidu-label {
          font-size: 0.85rem;
          font-weight: bold;
          color: var(--primary);
          letter-spacing: 0.1em;
          margin-bottom: 20px;
          display: flex;
          align-items: center;
          gap: 8px;
        }
        .vidu-label::before {
          content: '';
          display: block;
          width: 8px;
          height: 8px;
          background-color: var(--primary);
          border-radius: 50%;
          box-shadow: 0 0 10px var(--primary);
        }
        .vidu-grid {
          display: grid;
          grid-template-columns: 1fr;
          gap: 12px;
        }
        @media (min-width: 1024px) {
          .vidu-grid {
            grid-template-columns: repeat(2, 1fr);
          }
        }
        .vidu-card {
          background-color: rgba(255, 255, 255, 0.02);
          border: 1px solid var(--border-light);
          border-radius: 12px;
          padding: 16px;
          transition: all 0.2s ease;
        }
        .vidu-card:hover {
          background-color: rgba(255, 255, 255, 0.05);
          border-color: rgba(59, 130, 246, 0.3);
          transform: translateX(4px);
        }
        .vidu-jp-row {
          display: flex;
          align-items: baseline;
          gap: 12px;
          margin-bottom: 8px;
        }
        .vidu-word {
          font-size: 1.4rem;
          font-weight: 700;
          color: var(--text-main);
        }
        .vidu-reading-badge {
          background-color: var(--primary-focus);
          color: var(--primary-hover);
          padding: 4px 10px;
          border-radius: 20px;
          font-size: 0.85rem;
          font-weight: 600;
          border: 1px solid rgba(59, 130, 246, 0.2);
        }
        .vidu-meaning {
          color: var(--text-muted);
          font-size: 0.95rem;
          line-height: 1.5;
        }
      `}</style>
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
          <button className="tab" onClick={() => navigate(`/courses/${courseId}/vocabularies`)}>
            Từ Vựng
          </button>
          <button className="tab active">
            Kanji
          </button>
        </div>
      </div>
      
      <div className="card-body" style={{padding: '20px'}}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
          <h2 style={{ display: 'flex', alignItems: 'center', gap: '8px', margin: 0, color: 'var(--primary)' }}>
            <PenTool size={24} /> Danh mục Kanji ({courseId?.toUpperCase()})
          </h2>
          
          <div className="search-box" style={{ width: '300px', backgroundColor: 'var(--bg-lighter)', border: '1px solid var(--border-color)' }}>
            <Search size={18} className="search-icon" />
            <input
              type="text"
              className="search-input"
              placeholder="Tìm kiếm Kanji, âm đọc..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </div>

        {loading ? (
          <SkeletonLoader type="list" count={5} />
        ) : filteredKanjis.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
            Không tìm thấy Kanji nào.
          </div>
        ) : (
          <div className="lesson-groups">
            {Object.keys(groupedKanjis)
              .sort((a, b) => a.localeCompare(b, undefined, { numeric: true, sensitivity: 'base' }))
              .map((groupName) => {
              const isExpanded = expandedGroups[groupName] === true; // Default to collapsed
              
              return (
                <div key={groupName} style={{ marginBottom: '16px', backgroundColor: 'var(--bg-lighter)', borderRadius: '12px', border: '1px solid var(--border-color)', overflow: 'hidden' }}>
                  <div 
                    onClick={() => toggleGroup(groupName)}
                    style={{
                      padding: '16px 20px',
                      display: 'flex',
                      alignItems: 'center',
                      justifyContent: 'space-between',
                      cursor: 'pointer',
                      backgroundColor: 'rgba(59, 130, 246, 0.05)',
                      borderBottom: isExpanded ? '1px solid var(--border-color)' : 'none',
                      transition: 'all 0.2s ease'
                    }}
                  >
                    <h3 style={{
                      fontSize: '1.2rem',
                      color: 'var(--primary)',
                      margin: 0,
                      display: 'flex',
                      alignItems: 'center',
                      gap: '12px'
                    }}>
                      <div style={{
                        width: '8px',
                        height: '24px',
                        backgroundColor: 'var(--primary)',
                        borderRadius: '4px'
                      }}></div>
                      {groupName} <span style={{ fontSize: '0.9rem', color: 'var(--text-muted)', fontWeight: 'normal' }}>({groupedKanjis[groupName].length} chữ)</span>
                    </h3>
                    
                    <div style={{ color: 'var(--primary)', transition: 'transform 0.3s ease', transform: isExpanded ? 'rotate(180deg)' : 'rotate(0)' }}>
                      <ChevronDown size={20} />
                    </div>
                  </div>
                  
                  {isExpanded && (
                    <div className="lesson-list" style={{ padding: '20px 20px 8px 20px', margin: 0 }}>
                      {groupedKanjis[groupName].map((kanji, idx) => (
                        <div 
                          className="kanji-detail-card fade-in-up" 
                          style={{ animationDelay: `${idx * 0.05}s` }} 
                          key={kanji.id}
                        >
                          <div className="kanji-detail-header">
                            <span style={{ fontSize: '0.8rem', fontWeight: 'bold', color: 'var(--text-muted)', letterSpacing: '0.05em' }}>
                              CHỮ GỐC
                            </span>
                            <span style={{ 
                              fontSize: '0.8rem', 
                              fontWeight: '600', 
                              backgroundColor: 'rgba(59, 130, 246, 0.1)', 
                              color: 'var(--primary)', 
                              padding: '4px 10px', 
                              borderRadius: '20px', 
                              border: '1px solid rgba(59, 130, 246, 0.2)' 
                            }}>
                              {kanji.examples?.length || 0} ví dụ
                            </span>
                          </div>

                          <div className="kanji-detail-body">
                            {/* Left Section: Chữ gốc */}
                            <div className="chugoc-section">
                              <Link 
                                to={`/courses/${courseId}/kanjis/${kanji.id}`} 
                                className="kanji-main-char jp-text"
                                style={{ textDecoration: 'none' }}
                              >
                                {kanji.character}
                              </Link>
                              
                              <div className="kanji-sino-viet">
                                {kanji.meaning}
                              </div>

                              <div className="kanji-readings-row">
                                <div className="reading-pill-box">
                                  <div className="reading-pill-label">ON</div>
                                  <div className="reading-pill-val jp-text">{kanji.onyomi || 'ー'}</div>
                                </div>
                                <div className="reading-pill-box">
                                  <div className="reading-pill-label">KUN</div>
                                  <div className="reading-pill-val jp-text">{kanji.kunyomi || 'ー'}</div>
                                </div>
                              </div>
                            </div>

                            {/* Right Section: Ví dụ ứng dụng */}
                            <div className="vidu-section">
                              <div className="vidu-label">VÍ DỤ ỨNG DỤNG</div>
                              {kanji.examples && kanji.examples.length > 0 ? (
                                <div className="vidu-grid">
                                  {kanji.examples.map((exampleStr, exIdx) => {
                                    const parsed = parseExample(exampleStr);
                                    return (
                                      <div key={exIdx} className="vidu-card">
                                        <div className="vidu-jp-row">
                                          <span className="vidu-word jp-text">{parsed.word}</span>
                                          {parsed.reading && (
                                            <span className="vidu-reading-badge jp-text">
                                              {parsed.reading}
                                            </span>
                                          )}
                                        </div>
                                        {parsed.meaning && (
                                          <div className="vidu-meaning">
                                            {parsed.meaning}
                                          </div>
                                        )}
                                      </div>
                                    );
                                  })}
                                </div>
                              ) : (
                                <div style={{ color: 'var(--text-muted)', fontStyle: 'italic', fontSize: '0.9rem' }}>
                                  Không có ví dụ nào.
                                </div>
                              )}
                            </div>
                          </div>
                        </div>
                      ))}
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
};

export default KanjiList;
