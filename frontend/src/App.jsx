import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider, AuthContext } from './context/AuthContext';
import Navbar from './components/Navbar';
import RightSidebar from './components/RightSidebar';
import LessonList from './components/LessonList';
import LessonDetail from './components/LessonDetail';
import LoginPage from './pages/LoginPage';
import RegisterPage from './pages/RegisterPage';

// Layout wrapper for authenticated/standard pages
const MainLayout = ({ children }) => {
  return (
    <div className="app-container">
      <Navbar />
      <div className="main-layout">
        <main className="content-area">
          {children}
        </main>
        <RightSidebar />
      </div>
    </div>
  );
};

// Layout for Auth pages (no sidebar)
const AuthLayout = ({ children }) => {
  return (
    <div className="app-container">
      <Navbar />
      <div style={{ flex: 1, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '20px' }}>
        {children}
      </div>
    </div>
  );
};

function App() {
  return (
    <AuthProvider>
      <Router>
        <Routes>
          {/* Main App Routes */}
          <Route path="/" element={<MainLayout><LessonList /></MainLayout>} />
          <Route path="/lessons/:id" element={<MainLayout><LessonDetail /></MainLayout>} />
          
          {/* Auth Routes */}
          <Route path="/login" element={<AuthLayout><LoginPage /></AuthLayout>} />
          <Route path="/register" element={<AuthLayout><RegisterPage /></AuthLayout>} />
          
          {/* Fallback */}
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </Router>
    </AuthProvider>
  );
}

export default App;
