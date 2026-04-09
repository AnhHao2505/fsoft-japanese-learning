import { useState, useEffect } from 'react';
import Sidebar from './components/Sidebar';
import LessonDetail from './components/LessonDetail';
import './App.css';

const API_BASE = 'http://localhost:8080/api';

function App() {
  const [lessons, setLessons] = useState([]);
  const [activeLesson, setActiveLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const fetchLessons = async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch(`${API_BASE}/lessons`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data = await res.json();
      setLessons(data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchLessons();
  }, []);

  const handleSelectLesson = (id) => {
    const lesson = lessons.find(l => l.id === id);
    setActiveLesson(lesson || null);
  };

  if (loading) {
    return (
      <div className="loading">
        <div className="loading-spinner"></div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="error-state">
        <div className="error-icon">⚠️</div>
        <h3>Không thể kết nối đến server</h3>
        <p>Hãy chắc chắn rằng Backend đang chạy tại port 8080</p>
        <button className="retry-btn" onClick={fetchLessons}>Thử lại</button>
      </div>
    );
  }

  return (
    <>
      <Sidebar
        lessons={lessons}
        activeId={activeLesson?.id}
        onSelectLesson={handleSelectLesson}
      />
      <main className="main-content">
        <LessonDetail lesson={activeLesson} />
      </main>
    </>
  );
}

export default App;
