import { useState, useEffect } from 'react';
import Sidebar from './components/Sidebar';
import LessonDetail from './components/LessonDetail';
import CourseSelector from './components/CourseSelector';
import './App.css';

const API_BASE = 'http://localhost:8080/api';

function App() {
  const [courses, setCourses] = useState([]);
  const [activeCourse, setActiveCourse] = useState(null);
  const [lessons, setLessons] = useState([]);
  const [activeLesson, setActiveLesson] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Fetch courses list
  useEffect(() => {
    const fetchCourses = async () => {
      setLoading(true);
      setError(null);
      try {
        const res = await fetch(`${API_BASE}/courses`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data = await res.json();
        setCourses(data);
        if (data.length > 0) {
          setActiveCourse(data[0]);
        }
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };
    fetchCourses();
  }, []);

  // Fetch lessons when course changes
  useEffect(() => {
    if (!activeCourse) return;
    const fetchLessons = async () => {
      try {
        const res = await fetch(`${API_BASE}/courses/${activeCourse.id}/lessons`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data = await res.json();
        setLessons(data);
        setActiveLesson(null);
      } catch (err) {
        setLessons([]);
      }
    };
    fetchLessons();
  }, [activeCourse]);

  const handleSelectCourse = (course) => {
    setActiveCourse(course);
    setActiveLesson(null);
  };

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
        <button className="retry-btn" onClick={() => window.location.reload()}>Thử lại</button>
      </div>
    );
  }

  return (
    <>
      <Sidebar
        courses={courses}
        activeCourse={activeCourse}
        onSelectCourse={handleSelectCourse}
        lessons={lessons}
        activeId={activeLesson?.id}
        onSelectLesson={handleSelectLesson}
      />
      <main className="main-content">
        <LessonDetail lesson={activeLesson} courseName={activeCourse?.name} />
      </main>
    </>
  );
}

export default App;
