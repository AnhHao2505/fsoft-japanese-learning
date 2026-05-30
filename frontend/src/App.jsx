import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './context/AuthContext';
import { ToastProvider } from './context/ToastContext';
import Navbar from './components/Navbar';
import RightSidebar from './components/RightSidebar';
import ScrollToTop from './components/ScrollToTop';
import LessonList from './components/LessonList';
import LessonDetail from './components/LessonDetail';
import LoginPage from './pages/LoginPage';
import RegisterPage from './pages/RegisterPage';
import ReadingList from './components/ReadingList';
import ReadingDetail from './components/ReadingDetail';
import VocabularyList from './components/VocabularyList';
import VocabularyDetail from './components/VocabularyDetail';
import GrammarList from './components/GrammarList';
import GrammarDetail from './components/GrammarDetail';
import KanjiList from './components/KanjiList';
import KanjiDetail from './components/KanjiDetail';

import Home from './components/Home';
import CourseDashboard from './components/CourseDashboard';

const MainLayout = ({ children, hideSidebar }) => {
  return (
    <div className="app-container">
      <div className="aurora-bg"></div>
      <Navbar />
      <div className="main-layout">
        <main className="content-area">
          {children}
        </main>
        {!hideSidebar && <RightSidebar />}
      </div>
    </div>
  );
};

// Layout for Auth pages (no sidebar)
const AuthLayout = ({ children }) => {
  return (
    <div className="app-container">
      <div className="aurora-bg"></div>
      <Navbar />
      <div style={{ flex: 1, display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '20px' }}>
        {children}
      </div>
    </div>
  );
};

function App() {
  return (
    <ToastProvider>
      <AuthProvider>
        <Router>
          <ScrollToTop />
          <Routes>
            {/* Main App Routes */}
          <Route path="/" element={<MainLayout hideSidebar={true}><Home /></MainLayout>} />
          <Route path="/courses/:courseId" element={<MainLayout hideSidebar={true}><CourseDashboard /></MainLayout>} />
          
          <Route path="/courses/:courseId/lessons" element={<MainLayout><LessonList /></MainLayout>} />
          <Route path="/courses/:courseId/lessons/:id" element={<MainLayout><LessonDetail /></MainLayout>} />
          
          <Route path="/courses/:courseId/readings" element={<MainLayout hideSidebar={true}><ReadingList /></MainLayout>} />
          <Route path="/courses/:courseId/readings/:id" element={<MainLayout hideSidebar={true}><ReadingDetail /></MainLayout>} />
          
          <Route path="/courses/:courseId/vocabularies" element={<MainLayout hideSidebar={true}><VocabularyList /></MainLayout>} />
          <Route path="/courses/:courseId/vocabularies/:id" element={<MainLayout hideSidebar={true}><VocabularyDetail /></MainLayout>} />
          
          <Route path="/courses/:courseId/grammars" element={<MainLayout hideSidebar={true}><GrammarList /></MainLayout>} />
          <Route path="/courses/:courseId/grammars/:id" element={<MainLayout hideSidebar={true}><GrammarDetail /></MainLayout>} />
          
          <Route path="/courses/:courseId/kanjis" element={<MainLayout hideSidebar={true}><KanjiList /></MainLayout>} />
          <Route path="/courses/:courseId/kanjis/:id" element={<MainLayout hideSidebar={true}><KanjiDetail /></MainLayout>} />
          
          {/* Legacy routes for bookmark compatibility */}
          <Route path="/lessons" element={<Navigate to="/courses/jpd316/lessons" replace />} />
          <Route path="/readings" element={<Navigate to="/courses/jpd316/readings" replace />} />
          <Route path="/vocabularies" element={<Navigate to="/courses/jpd316/vocabularies" replace />} />
          <Route path="/grammars" element={<Navigate to="/courses/jpd316/grammars" replace />} />
          
          {/* Auth Routes */}
          <Route path="/login" element={<AuthLayout><LoginPage /></AuthLayout>} />
          <Route path="/register" element={<AuthLayout><RegisterPage /></AuthLayout>} />
          
          {/* Fallback */}
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </Router>
    </AuthProvider>
    </ToastProvider>
  );
}

export default App;
