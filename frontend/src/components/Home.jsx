import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { ArrowRight, BookOpen, FileText } from 'lucide-react';
import api from '../utils/api';
import SkeletonLoader from './SkeletonLoader';

const Home = () => {
  const [courses, setCourses] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchCourses = async () => {
      try {
        const response = await api.get('/courses');
        setCourses(response.data);
      } catch (error) {
        console.error("Error fetching courses:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchCourses();
  }, []);

  return (
    <div className="fade-in-up" style={{ padding: '20px 0', maxWidth: '1000px', margin: '0 auto' }}>
      <div style={{ textAlign: 'center', marginBottom: '40px', padding: '40px 20px', backgroundColor: 'var(--bg-surface)', borderRadius: '16px', border: '1px solid var(--border-color)', boxShadow: 'var(--shadow-lg)' }}>
        <h1 style={{ fontSize: '2.5rem', fontWeight: 'bold', marginBottom: '16px', color: 'white' }}>
          Chào mừng đến với <span style={{ color: 'var(--primary)' }}>Japanese Learning Hub</span>
        </h1>
        <p style={{ fontSize: '1.1rem', color: 'var(--text-muted)', maxWidth: '600px', margin: '0 auto' }}>
          Hệ thống học tập tiếng Nhật trực tuyến. Hãy chọn một khóa học bên dưới để bắt đầu.
        </p>
      </div>

      {loading ? (
        <SkeletonLoader type="list" count={2} />
      ) : (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))', gap: '24px' }}>
          {courses.map((course) => (
            <Link key={course.id} to={`/courses/${course.id}`} className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
              <div className="card-body" style={{ flex: 1, padding: '32px' }}>
                <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(59, 130, 246, 0.1)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px', fontSize: '2rem' }}>
                  {course.icon || <BookOpen />}
                </div>
                <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '8px' }}>
                  {course.name}
                </h2>
                <h3 style={{ fontSize: '1rem', color: 'var(--primary)', marginBottom: '16px' }}>
                  Trình độ {course.level}
                </h3>
                <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
                  {course.description}
                </p>
                <div style={{ display: 'flex', alignItems: 'center', color: 'var(--primary)', fontWeight: 'bold', marginTop: 'auto' }}>
                  Vào khóa học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
                </div>
              </div>
            </Link>
          ))}

          {/* Bài Đọc Card (Static) */}
          <Link to={`/courses/jpd316/readings`} className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
            <div className="card-body" style={{ flex: 1, padding: '32px' }}>
              <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(245, 158, 11, 0.1)', color: '#F59E0B', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px', fontSize: '2rem' }}>
                <FileText size={32} />
              </div>
              <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '8px' }}>
                Đọc Hiểu
              </h2>
              <h3 style={{ fontSize: '1rem', color: '#F59E0B', marginBottom: '16px' }}>
                Trình độ N3
              </h3>
              <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
                Luyện kỹ năng đọc hiểu qua các bài luận ngắn, tích hợp danh sách từ vựng và dịch nghĩa.
              </p>
              <div style={{ display: 'flex', alignItems: 'center', color: '#F59E0B', fontWeight: 'bold', marginTop: 'auto' }}>
                Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
              </div>
            </div>
          </Link>
        </div>
      )}
    </div>
  );
};

export default Home;
