import React, { useContext, useState, useEffect, useRef } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { BookOpen, Search, LogOut, User, Menu, X } from 'lucide-react';
import { AuthContext } from '../context/AuthContext';
import { useToast } from '../context/ToastContext';
import api from '../utils/api';

const Navbar = () => {
  const { user, logout } = useContext(AuthContext);
  const { showToast } = useToast();
  const navigate = useNavigate();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // Search State
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [showSearchResults, setShowSearchResults] = useState(false);
  const searchRef = useRef(null);

  // Profile Dropdown State
  const [showProfileMenu, setShowProfileMenu] = useState(false);
  const profileRef = useRef(null);

  const handleLogout = () => {
    setShowProfileMenu(false);
    setMobileMenuOpen(false);
    logout();
    showToast('Đã đăng xuất', 'success');
    navigate('/login');
  };

  // Click outside to close dropdowns
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (searchRef.current && !searchRef.current.contains(event.target)) {
        setShowSearchResults(false);
      }
      if (profileRef.current && !profileRef.current.contains(event.target)) {
        setShowProfileMenu(false);
      }
    };
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, []);

  // Search API call with debounce
  useEffect(() => {
    const delayDebounceFn = setTimeout(() => {
      if (searchQuery.trim()) {
        api.get(`/search?q=${encodeURIComponent(searchQuery)}`)
          .then(res => {
            setSearchResults(res.data.slice(0, 8)); // Giới hạn 8 kết quả
            setShowSearchResults(true);
          })
          .catch(err => console.error("Lỗi tìm kiếm:", err));
      } else {
        setSearchResults([]);
        setShowSearchResults(false);
      }
    }, 300);

    return () => clearTimeout(delayDebounceFn);
  }, [searchQuery]);

  const handleSearchResultClick = (courseId, category, lessonId) => {
    setShowSearchResults(false);
    setSearchQuery('');
    setMobileMenuOpen(false);
    
    // Tùy theo category để điều hướng đúng
    if (category === 'Từ vựng') {
      navigate(`/courses/${courseId}/vocabularies/${lessonId}`);
    } else if (category === 'Ngữ pháp') {
      navigate(`/courses/${courseId}/grammars/${lessonId}`);
    } else {
      navigate(`/courses/${courseId}/lessons/${lessonId}`);
    }
  };

  return (
    <nav className="navbar">
      <div className="navbar-container">
        <Link to="/" className="nav-brand" onClick={() => setMobileMenuOpen(false)}>
          <div className="nav-brand-icon">
            <BookOpen size={20} />
          </div>
          <span>Japanese Learning Hub</span>
        </Link>

        {/* Global Search Box */}
        <div className="search-box" ref={searchRef} style={{ position: 'relative' }}>
          <Search size={18} className="search-icon" />
          <input
            type="text"
            className="search-input"
            placeholder="Tìm kiếm bài học, từ vựng, ngữ pháp..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            onFocus={() => {
              if (searchQuery.trim() && searchResults.length > 0) {
                setShowSearchResults(true);
              }
            }}
          />
          
          {/* Search Dropdown */}
          {showSearchResults && searchResults.length > 0 && (
            <div className="search-results-dropdown">
              {searchResults.map((result) => (
                <div 
                  key={result.id} 
                  className="search-result-item"
                  style={{ cursor: 'pointer' }}
                  onClick={() => handleSearchResultClick(result.courseId, result.category, result.id)}
                >
                  <Search size={16} style={{ color: 'var(--text-muted)' }} />
                  <div style={{ display: 'flex', flexDirection: 'column' }}>
                    <span style={{ fontWeight: 'bold' }}>{result.title}</span>
                    <span style={{ fontSize: '0.8rem', color: 'var(--text-muted)' }}>
                      {result.category} • Khóa: {result.courseId.toUpperCase()}
                    </span>
                  </div>
                </div>
              ))}
            </div>
          )}
          {showSearchResults && searchQuery.trim() && searchResults.length === 0 && (
            <div className="search-results-dropdown" style={{ padding: '16px', textAlign: 'center', color: 'var(--text-muted)' }}>
              Không tìm thấy kết quả nào.
            </div>
          )}
        </div>

        <button 
          className="mobile-menu-btn" 
          onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
        >
          {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
        </button>

        {/* Desktop Nav Actions */}
        <div className={`nav-actions nav-links ${mobileMenuOpen ? 'mobile-open' : ''}`}>
          {/* Mobile Only: Navigation Links inside Hamburger Menu */}
          {mobileMenuOpen && (
            <div className="mobile-link-group">
              <Link to="/" className="mobile-link" onClick={() => setMobileMenuOpen(false)}>Trang chủ</Link>
              <Link to="/courses/n5_beginner" className="mobile-link" onClick={() => setMobileMenuOpen(false)}>N5 - Nhập Môn</Link>
              <Link to="/courses/jpd316" className="mobile-link" onClick={() => setMobileMenuOpen(false)}>Khóa học JPD316</Link>
              <Link to="/courses/jpd326" className="mobile-link" onClick={() => setMobileMenuOpen(false)}>Khóa học JPD326</Link>
            </div>
          )}

          {user ? (
            <div style={{ position: 'relative' }} ref={profileRef}>
              <button 
                title="Hồ sơ cá nhân" 
                className="avatar-btn"
                onClick={() => setShowProfileMenu(!showProfileMenu)}
              >
                <User size={18} />
              </button>

              {/* Profile Dropdown */}
              {showProfileMenu && (
                <div className="profile-dropdown">
                  <div style={{ padding: '12px 16px', borderBottom: '1px solid var(--border-color)' }}>
                    <div style={{ fontWeight: 'bold', color: 'var(--text-main)' }}>{user.displayName || user.username}</div>
                    <div style={{ fontSize: '0.85rem', color: 'var(--text-muted)' }}>{user.email || '@' + user.username}</div>
                  </div>
                  
                  <Link 
                    to="#" 
                    className="profile-dropdown-item"
                    onClick={() => {
                      setShowProfileMenu(false);
                      showToast('Tính năng Hồ sơ đang được phát triển', 'info');
                    }}
                  >
                    <User size={16} /> Hồ sơ cá nhân
                  </Link>
                  
                  <button
                    onClick={handleLogout}
                    className="profile-dropdown-item"
                    style={{ color: '#ef4444' }}
                  >
                    <LogOut size={16} /> Đăng xuất
                  </button>
                </div>
              )}
            </div>
          ) : (
            <>
              <Link to="/login" className="btn btn-ghost" onClick={() => setMobileMenuOpen(false)}>Đăng nhập</Link>
              <Link to="/register" className="btn btn-primary" onClick={() => setMobileMenuOpen(false)}>Đăng ký</Link>
            </>
          )}
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
