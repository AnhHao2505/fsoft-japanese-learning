import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, HelpCircle } from 'lucide-react';
import api from '../utils/api';

const ReadingList = () => {
  const [readings, setReadings] = useState([]);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('bai_doc');

  useEffect(() => {
    const fetchReadings = async () => {
      try {
        const response = await api.get('/courses/jpd316/readings');
        setReadings(response.data);
      } catch (error) {
        console.error("Error fetching readings:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchReadings();
  }, []);

  if (loading) {
    return <div className="card"><div className="card-body">Đang tải danh sách bài đọc...</div></div>;
  }

  return (
    <div className="card">
      <div className="card-header" style={{flexDirection: 'column', alignItems: 'flex-start', gap: '16px'}}>
        <div className="tabs">
          <button 
            className={`tab ${activeTab === 'all' ? 'active' : ''}`}
            onClick={() => window.location.href = '/'}
          >
            Tất cả
          </button>
          <button 
            className={`tab ${activeTab === 'bai_doc' ? 'active' : ''}`}
            onClick={() => setActiveTab('bai_doc')}
          >
            Bài Đọc
          </button>
          <button 
            className={`tab ${activeTab === 'bg' ? 'active' : ''}`}
            onClick={() => { window.location.href = '/'; }} // Simple redirect to lesson list
          >
            Bài Giảng Ngữ Pháp
          </button>
          <button 
            className={`tab ${activeTab === 'tu_vung' ? 'active' : ''}`}
            onClick={() => { window.location.href = '/'; }}
          >
            Từ Vựng
          </button>
        </div>
      </div>
      
      <div className="card-body" style={{padding: '12px'}}>
        <div className="lesson-list">
          {readings.map((reading, idx) => (
            <Link to={`/readings/${reading.id}`} className="lesson-item" key={reading.id}>
              <div className="lesson-meta">
                <span className="lesson-category">ĐỌC</span>
                <span className="lesson-number">{String(idx + 1).padStart(2, '0')}</span>
              </div>
              
              <div className="lesson-content">
                <div className="lesson-title">{reading.title}</div>
                <div className="lesson-desc">{reading.titleJp || 'Chi tiết bài đọc'}</div>
              </div>
            </Link>
          ))}
          {readings.length === 0 && (
            <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
              Không có bài đọc nào.
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default ReadingList;
