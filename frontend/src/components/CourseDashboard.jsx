import React, { useState, useEffect } from 'react';
import { useParams, Link, useNavigate } from 'react-router-dom';
import { BookOpen, Layers, FileText, ArrowRight, ArrowLeft, PenTool } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const CourseDashboard = () => {
  const { courseId } = useParams();
  const navigate = useNavigate();
  const [course, setCourse] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchCourse = async () => {
      try {
        const response = await api.get(`/courses/${courseId}`);
        setCourse(response.data);
      } catch (error) {
        console.error("Error fetching course:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchCourse();
  }, [courseId]);

  if (loading) {
    return (
      <div style={{ padding: '20px', maxWidth: '1000px', margin: '0 auto' }}>
        <SkeletonLoader type="detail" />
      </div>
    );
  }

  if (!course) {
    return (
      <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
        <p>Không tìm thấy khóa học này.</p>
        <button onClick={() => navigate('/')} className="btn btn-primary" style={{ marginTop: '20px' }}>
          Về trang chủ
        </button>
      </div>
    );
  }

  return (
    <div className="fade-in-up" style={{ padding: '20px 0', maxWidth: '1000px', margin: '0 auto' }}>
      
      <button 
        onClick={() => navigate('/')} 
        style={{ 
          display: 'flex', 
          alignItems: 'center', 
          background: 'none', 
          border: 'none', 
          color: 'var(--text-muted)', 
          cursor: 'pointer',
          marginBottom: '20px',
          fontSize: '1rem'
        }}
      >
        <ArrowLeft size={18} style={{ marginRight: '8px' }} /> Quản lý Khóa học
      </button>

      <div style={{ textAlign: 'center', marginBottom: '40px', padding: '40px 20px', backgroundColor: 'var(--bg-surface)', borderRadius: '16px', border: '1px solid var(--border-color)', boxShadow: 'var(--shadow-lg)' }}>
        <div style={{ display: 'flex', justifyContent: 'center', fontSize: '3rem', marginBottom: '16px' }}>
          {course.icon || '📘'}
        </div>
        <h1 style={{ fontSize: '2.5rem', fontWeight: 'bold', marginBottom: '8px', color: 'white' }}>
          {course.name}
        </h1>
        <h2 style={{ fontSize: '1.2rem', color: 'var(--primary)', marginBottom: '16px' }}>
          {course.nameJp} - Trình độ {course.level}
        </h2>
        <p style={{ fontSize: '1.1rem', color: 'var(--text-muted)', maxWidth: '600px', margin: '0 auto' }}>
          {course.description}
        </p>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))', gap: '24px' }}>
        
        {/* Từ Vựng Card */}
        <Link to={`/courses/${courseId}/vocabularies`} className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
          <div className="card-body" style={{ flex: 1, padding: '32px' }}>
            <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(59, 130, 246, 0.1)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px' }}>
              <BookOpen size={32} />
            </div>
            <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '12px' }}>Từ Vựng</h2>
            <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
              Hệ thống từ vựng phân chia theo chuyên đề giúp bạn dễ dàng theo dõi và ghi nhớ.
            </p>
            <div style={{ display: 'flex', alignItems: 'center', color: 'var(--primary)', fontWeight: 'bold', marginTop: 'auto' }}>
              Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
            </div>
          </div>
        </Link>

        {/* Ngữ Pháp Card */}
        <Link to={`/courses/${courseId}/grammars`} className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
          <div className="card-body" style={{ flex: 1, padding: '32px' }}>
            <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(16, 185, 129, 0.1)', color: '#10B981', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px' }}>
              <Layers size={32} />
            </div>
            <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '12px' }}>Ngữ Pháp</h2>
            <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
              Các điểm ngữ pháp quan trọng kèm theo ví dụ song ngữ Nhật - Việt giải thích chi tiết.
            </p>
            <div style={{ display: 'flex', alignItems: 'center', color: '#10B981', fontWeight: 'bold', marginTop: 'auto' }}>
              Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
            </div>
          </div>
        </Link>

        {/* Kanji Card (Only show for JPD326 initially or when available) */}
        {(courseId === 'jpd326' || courseId === 'jpd316') && (
          <Link to={`/courses/${courseId}/kanjis`} className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
            <div className="card-body" style={{ flex: 1, padding: '32px' }}>
              <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(236, 72, 153, 0.1)', color: '#EC4899', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px' }}>
                <PenTool size={32} />
              </div>
              <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '12px' }}>Kanji</h2>
              <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
                Danh sách chữ Hán, bao gồm âm On, âm Kun và các từ vựng ví dụ thường gặp.
              </p>
              <div style={{ display: 'flex', alignItems: 'center', color: '#EC4899', fontWeight: 'bold', marginTop: 'auto' }}>
                Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
              </div>
            </div>
          </Link>
        )}



      </div>
    </div>
  );
};

export default CourseDashboard;
