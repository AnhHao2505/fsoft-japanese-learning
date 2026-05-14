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
            {Object.keys(groupedKanjis).map((groupName) => {
              const isExpanded = expandedGroups[groupName] !== false; // Default to expanded
              
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
                    <div className="lesson-list" style={{ padding: '20px', margin: 0 }}>
                      {groupedKanjis[groupName].map((kanji, idx) => (
                        <Link 
                          to={`/courses/${courseId}/kanjis/${kanji.id}`} 
                          className="lesson-item fade-in-up" 
                          style={{ animationDelay: `${idx * 0.05}s`, display: 'flex', alignItems: 'center', marginBottom: idx === groupedKanjis[groupName].length - 1 ? 0 : '12px' }} 
                          key={kanji.id}
                        >
                          <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', width: '60px', height: '60px', backgroundColor: 'var(--bg-card)', borderRadius: '12px', marginRight: '20px', border: '1px solid var(--border-color)' }}>
                            <span className="jp-text" style={{ fontSize: '2rem', color: 'var(--primary)', fontWeight: 'bold' }}>{kanji.character}</span>
                          </div>
                          
                          <div className="lesson-content" style={{ flex: 1 }}>
                            <div className="lesson-title" style={{ fontSize: '1.2rem', marginBottom: '4px' }}>{kanji.meaning}</div>
                            <div className="lesson-desc jp-text" style={{ fontSize: '0.9rem' }}>
                              <span style={{ color: '#F59E0B', marginRight: '10px' }}>On: {kanji.onyomi || '-'}</span> 
                              <span style={{ color: '#10B981' }}>Kun: {kanji.kunyomi || '-'}</span>
                            </div>
                          </div>
                          
                          <div className="lesson-stats">
                            <span className="stat-badge" style={{ backgroundColor: 'rgba(236, 72, 153, 0.1)', color: '#EC4899', border: '1px solid rgba(236, 72, 153, 0.2)' }}>
                              {kanji.strokeCount} nét
                            </span>
                          </div>
                        </Link>
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
