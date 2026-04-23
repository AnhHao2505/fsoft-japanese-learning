import React, { useContext } from 'react';
import { Flame, Star, BookKey } from 'lucide-react';
import { AuthContext } from '../context/AuthContext';

const RightSidebar = () => {
  const { user } = useContext(AuthContext);

  return (
    <aside className="right-sidebar">
      {user && (
        <div className="card">
          <div className="card-header">
            <div className="card-title">
              <Flame size={18} className="text-accent" style={{color: 'var(--accent)'}} />
              Tiến độ học tập
            </div>
          </div>
          <div className="card-body">
            <div className="user-progress">
              <div className="progress-header">
                <span>JPD316 - Bài 1-5</span>
                <span style={{color: 'var(--success)'}}>45%</span>
              </div>
              <div className="progress-bar">
                <div className="progress-fill" style={{ width: '45%' }}></div>
              </div>
            </div>
            <div style={{ fontSize: '0.85rem', color: 'var(--text-muted)' }}>
              Xin chào, <strong>{user.displayName || user.username}</strong>! Hãy tiếp tục học nhé.
            </div>
          </div>
        </div>
      )}

      <div className="card">
        <div className="card-header">
          <div className="card-title">
            <Star size={18} className="text-primary" style={{color: 'var(--primary)'}} />
            Khóa học hiện tại
          </div>
        </div>
        <div className="card-body">
          <h3 style={{ fontSize: '1.2rem', marginBottom: '8px', color: 'white' }}>JPD316</h3>
          <p style={{ fontSize: '0.9rem', color: 'var(--text-muted)', marginBottom: '16px' }}>
            Khóa học luyện thi năng lực tiếng Nhật N3. Bao gồm các mẫu ngữ pháp quan trọng và từ vựng chuyên ngành cơ bản IT.
          </p>
          <div className="lesson-stats" style={{ paddingLeft: 0, gap: '8px' }}>
            <span className="stat-badge">56 Ngữ pháp</span>
            <span className="stat-badge">366 Từ vựng</span>
          </div>
        </div>
      </div>

      <div className="card">
        <div className="card-header">
          <div className="card-title">
            <BookKey size={18} style={{color: 'var(--success)'}} />
            Từ vựng hôm nay
          </div>
        </div>
        <div className="card-body" style={{ padding: '0 20px 20px' }}>
          <div className="vocab-highlight">
            <div className="vocab-jp">要件</div>
            <div>
              <div className="vocab-reading">ようけん</div>
              <div className="vocab-meaning">Yêu cầu, requirement</div>
            </div>
          </div>
          <div className="vocab-highlight">
            <div className="vocab-jp">仕様書</div>
            <div>
              <div className="vocab-reading">しようしょ</div>
              <div className="vocab-meaning">Tài liệu đặc tả (Spec)</div>
            </div>
          </div>
          <div className="vocab-highlight">
            <div className="vocab-jp">見積り</div>
            <div>
              <div className="vocab-reading">みつもり</div>
              <div className="vocab-meaning">Báo giá, estimate</div>
            </div>
          </div>
        </div>
      </div>
    </aside>
  );
};

export default RightSidebar;
