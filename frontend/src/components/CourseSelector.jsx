export default function CourseSelector({ courses, activeCourse, onSelectCourse }) {
  return (
    <div className="course-selector">
      {courses.map(course => (
        <button
          key={course.id}
          className={`course-tab ${activeCourse?.id === course.id ? 'active' : ''}`}
          onClick={() => onSelectCourse(course)}
          title={course.description}
        >
          <span className="course-tab-icon">{course.icon}</span>
          <div className="course-tab-info">
            <span className="course-tab-name">{course.name}</span>
            <span className="course-tab-level">{course.level}</span>
          </div>
        </button>
      ))}
    </div>
  );
}
