import React from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, Layers, FileText, ArrowRight } from 'lucide-react';

const Home = () => {
  return (
    <div className="fade-in-up" style={{ padding: '20px 0', maxWidth: '1000px', margin: '0 auto' }}>
      <div style={{ textAlign: 'center', marginBottom: '40px', padding: '40px 20px', backgroundColor: 'var(--bg-surface)', borderRadius: '16px', border: '1px solid var(--border-color)', boxShadow: 'var(--shadow-lg)' }}>
        <h1 style={{ fontSize: '2.5rem', fontWeight: 'bold', marginBottom: '16px', color: 'white' }}>
          Chào mừng đến với <span style={{ color: 'var(--primary)' }}>Japanese Learning Hub</span>
        </h1>
        <p style={{ fontSize: '1.1rem', color: 'var(--text-muted)', maxWidth: '600px', margin: '0 auto' }}>
          Hệ thống học tập tiếng Nhật trực tuyến với đầy đủ từ vựng, ngữ pháp và bài đọc. Hãy chọn một chuyên mục bên dưới để bắt đầu bài học của bạn.
        </p>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))', gap: '24px' }}>
        
        {/* Từ Vựng Card */}
        <Link to="/vocabularies" className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
          <div className="card-body" style={{ flex: 1, padding: '32px' }}>
            <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(59, 130, 246, 0.1)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px' }}>
              <BookOpen size={32} />
            </div>
            <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '12px' }}>Từ Vựng</h2>
            <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
              Hệ thống từ vựng được phân chia theo từng chuyên đề giúp bạn dễ dàng theo dõi và ghi nhớ.
            </p>
            <div style={{ display: 'flex', alignItems: 'center', color: 'var(--primary)', fontWeight: 'bold', marginTop: 'auto' }}>
              Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
            </div>
          </div>
        </Link>

        {/* Ngữ Pháp Card */}
        <Link to="/grammars" className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
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

        {/* Bài Đọc Card */}
        <Link to="/readings" className="card" style={{ textDecoration: 'none', transition: 'transform 0.2s', display: 'flex', flexDirection: 'column', height: '100%' }}>
          <div className="card-body" style={{ flex: 1, padding: '32px' }}>
            <div style={{ width: '64px', height: '64px', borderRadius: '16px', backgroundColor: 'rgba(245, 158, 11, 0.1)', color: '#F59E0B', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '24px' }}>
              <FileText size={32} />
            </div>
            <h2 style={{ fontSize: '1.5rem', fontWeight: 'bold', color: 'white', marginBottom: '12px' }}>Bài Đọc</h2>
            <p style={{ color: 'var(--text-muted)', marginBottom: '24px', lineHeight: '1.6' }}>
              Luyện kỹ năng đọc hiểu qua các bài luận ngắn, tích hợp danh sách từ vựng và dịch nghĩa.
            </p>
            <div style={{ display: 'flex', alignItems: 'center', color: '#F59E0B', fontWeight: 'bold', marginTop: 'auto' }}>
              Bắt đầu học <ArrowRight size={18} style={{ marginLeft: '8px' }} />
            </div>
          </div>
        </Link>

      </div>
    </div>
  );
};

export default Home;
