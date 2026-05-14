import React, { useState, useEffect } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { BookOpen, HelpCircle } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const ReadingList = () => {
  const [readings, setReadings] = useState([]);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState('bai_doc');
  const { courseId } = useParams();
  const navigate = useNavigate();

  useEffect(() => {
    const fetchReadings = async () => {
      try {
        const response = await api.get(`/courses/${courseId}/readings`);
        setReadings(response.data);
      } catch (error) {
        console.error("Error fetching readings:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchReadings();
  }, [courseId]);

  if (loading) {
    return <SkeletonLoader type="list" count={5} />;
  }

  return (
    <div className="card">
      <div className="card-header" style={{flexDirection: 'column', alignItems: 'flex-start', gap: '16px'}}>
        <div className="tabs">
          <button 
            className="tab"
            onClick={() => navigate(`/courses/${courseId}`)}
          >
            Tổng quan
          </button>
          <button 
            className="tab active"
          >
            Bài Đọc
          </button>
          <button 
            className="tab"
            onClick={() => navigate(`/courses/${courseId}/grammars`)}
          >
            Ngữ Pháp
          </button>
          <button 
            className="tab"
            onClick={() => navigate(`/courses/${courseId}/vocabularies`)}
          >
            Từ Vựng
          </button>
          {(courseId === 'jpd326' || courseId === 'jpd316') && (
            <button className="tab" onClick={() => navigate(`/courses/${courseId}/kanjis`)}>
              Kanji
            </button>
          )}
        </div>
      </div>
      
      <div className="card-body" style={{padding: '12px'}}>
        <div className="lesson-list">
          {readings.map((reading, idx) => (
            <Link to={`/courses/${courseId}/readings/${reading.id}`} className="lesson-item fade-in-up" style={{ animationDelay: `${idx * 0.05}s` }} key={reading.id}>
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
