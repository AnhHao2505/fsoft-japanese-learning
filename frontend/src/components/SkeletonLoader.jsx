import React from 'react';

const SkeletonLoader = ({ type = 'list', count = 3 }) => {
  if (type === 'list') {
    return (
      <div className="card">
        <div className="card-header">
          <div className="skeleton-box" style={{ width: '200px', height: '24px', borderRadius: '4px' }}></div>
        </div>
        <div className="card-body">
          <div className="lesson-list">
            {Array(count).fill(0).map((_, idx) => (
              <div key={idx} className="lesson-item skeleton-item fade-in-up" style={{ animationDelay: `${idx * 0.05}s` }}>
                <div className="lesson-meta">
                  <div className="skeleton-box" style={{ width: '30px', height: '14px', marginBottom: '4px' }}></div>
                  <div className="skeleton-box" style={{ width: '40px', height: '24px' }}></div>
                </div>
                <div className="lesson-content">
                  <div className="skeleton-box" style={{ width: '60%', height: '20px', marginBottom: '8px' }}></div>
                  <div className="skeleton-box" style={{ width: '40%', height: '16px' }}></div>
                </div>
                <div className="lesson-stats">
                  <div className="skeleton-box" style={{ width: '80px', height: '24px', borderRadius: '20px' }}></div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    );
  }

  if (type === 'detail') {
    return (
      <div className="card">
        <div className="card-body">
          <div className="skeleton-box" style={{ width: '150px', height: '20px', marginBottom: '24px' }}></div>
          
          <div className="detail-header">
            <div className="skeleton-box" style={{ width: '100px', height: '16px', marginBottom: '12px' }}></div>
            <div className="skeleton-box" style={{ width: '80%', height: '36px', marginBottom: '8px' }}></div>
            <div className="skeleton-box" style={{ width: '60%', height: '24px' }}></div>
          </div>
          
          <div className="detail-content">
            <div className="skeleton-box" style={{ width: '100%', height: '16px', marginBottom: '8px' }}></div>
            <div className="skeleton-box" style={{ width: '100%', height: '16px', marginBottom: '8px' }}></div>
            <div className="skeleton-box" style={{ width: '90%', height: '16px', marginBottom: '32px' }}></div>
            
            <div className="skeleton-box" style={{ width: '200px', height: '24px', marginBottom: '16px' }}></div>
            <div className="skeleton-box" style={{ width: '100%', height: '80px', marginBottom: '16px', borderRadius: '8px' }}></div>
            <div className="skeleton-box" style={{ width: '100%', height: '80px', marginBottom: '16px', borderRadius: '8px' }}></div>
          </div>
        </div>
      </div>
    );
  }

  return null;
};

export default SkeletonLoader;
