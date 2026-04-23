import React, { useState, useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';

const RegisterPage = () => {
  const [formData, setFormData] = useState({
    username: '',
    email: '',
    displayName: '',
    password: '',
    confirmPassword: ''
  });
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  
  const { register } = useContext(AuthContext);
  const navigate = useNavigate();

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    
    if (formData.password !== formData.confirmPassword) {
      setError('Mật khẩu nhập lại không khớp!');
      return;
    }
    
    setLoading(true);
    
    try {
      await register(formData.username, formData.email, formData.password, formData.displayName);
      navigate('/');
    } catch (err) {
      if (err.response && err.response.data) {
        // Handle validation errors from Spring Boot
        if (err.response.data.error) {
          setError(err.response.data.error);
        } else if (err.response.status === 400) {
           setError('Dữ liệu không hợp lệ. Vui lòng kiểm tra lại email/username/password.');
        }
      } else {
        setError('Đăng ký thất bại. Vui lòng thử lại.');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="auth-container">
      <div className="card">
        <div className="card-body" style={{ padding: '40px' }}>
          <div className="auth-header">
            <h1>Tạo tài khoản mới</h1>
            <p>Tham gia FPT Japanese Learning</p>
          </div>
          
          {error && <div className="error-box">{error}</div>}
          
          <form onSubmit={handleSubmit}>
            <div className="form-group">
              <label className="form-label">Tên hiển thị</label>
              <input 
                type="text" 
                name="displayName"
                className="form-input" 
                placeholder="Ví dụ: Nguyễn Văn A"
                value={formData.displayName}
                onChange={handleChange}
              />
            </div>

            <div className="form-group">
              <label className="form-label">Tên đăng nhập *</label>
              <input 
                type="text" 
                name="username"
                className="form-input" 
                placeholder="username"
                value={formData.username}
                onChange={handleChange}
                required
              />
            </div>

            <div className="form-group">
              <label className="form-label">Địa chỉ Email *</label>
              <input 
                type="email" 
                name="email"
                className="form-input" 
                placeholder="email@example.com"
                value={formData.email}
                onChange={handleChange}
                required
              />
            </div>
            
            <div className="form-group">
              <label className="form-label">Mật khẩu *</label>
              <input 
                type="password" 
                name="password"
                className="form-input" 
                placeholder="••••••••"
                value={formData.password}
                onChange={handleChange}
                required
                minLength={6}
              />
            </div>

            <div className="form-group" style={{ marginBottom: '24px' }}>
              <label className="form-label">Nhập lại mật khẩu *</label>
              <input 
                type="password" 
                name="confirmPassword"
                className="form-input" 
                placeholder="••••••••"
                value={formData.confirmPassword}
                onChange={handleChange}
                required
                minLength={6}
              />
            </div>
            
            <button 
              type="submit" 
              className="btn btn-primary" 
              style={{ width: '100%', padding: '12px' }}
              disabled={loading}
            >
              {loading ? 'Đang xử lý...' : 'Đăng ký'}
            </button>
          </form>
          
          <div style={{ marginTop: '24px', textAlign: 'center', fontSize: '0.9rem', color: 'var(--text-muted)' }}>
            Đã có tài khoản? <Link to="/login" style={{ fontWeight: '500' }}>Đăng nhập</Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default RegisterPage;
