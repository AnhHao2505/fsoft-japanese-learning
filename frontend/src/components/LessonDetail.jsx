export default function LessonDetail({ lesson }) {
  if (!lesson) {
    return (
      <div className="welcome-screen">
        <div className="welcome-icon">📚</div>
        <h2>Chào mừng đến với 日本語学習</h2>
        <p>Chọn một bài học từ sidebar để bắt đầu hành trình học tiếng Nhật tại FPT Software 🚀</p>
      </div>
    );
  }

  return (
    <div className="lesson-detail">
      <header className="lesson-detail-header">
        <div className="meta-tags">
          <span className="lesson-tag tag-level">{lesson.level}</span>
          <span className="lesson-tag tag-category">{lesson.category}</span>
        </div>
        <h1>{lesson.title}</h1>
        <div className="title-jp">{lesson.titleJp}</div>
      </header>

      <div className="lesson-description">
        {lesson.content}
      </div>

      {/* Vocabulary Section */}
      {lesson.vocabulary && lesson.vocabulary.length > 0 && (
        <div className="section-card">
          <h2 className="section-title">
            <span className="icon">📝</span>
            Từ vựng (語彙)
          </h2>
          <table className="vocab-table">
            <thead>
              <tr>
                <th>Từ vựng</th>
                <th>Phiên âm</th>
                <th>Nghĩa</th>
              </tr>
            </thead>
            <tbody>
              {lesson.vocabulary.map((v, i) => (
                <tr key={i}>
                  <td className="vocab-word">{v.word}</td>
                  <td className="vocab-reading">{v.reading}</td>
                  <td className="vocab-meaning">{v.meaning}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {/* Grammar Section */}
      {lesson.grammar && lesson.grammar.length > 0 && (
        <div className="section-card">
          <h2 className="section-title">
            <span className="icon">📖</span>
            Ngữ pháp (文法)
          </h2>
          <ul className="grammar-list">
            {lesson.grammar.map((g, i) => (
              <li key={i}>{g}</li>
            ))}
          </ul>
        </div>
      )}

      {/* Examples Section */}
      {lesson.examples && lesson.examples.length > 0 && (
        <div className="section-card">
          <h2 className="section-title">
            <span className="icon">💬</span>
            Ví dụ (例文)
          </h2>
          <ul className="example-list">
            {lesson.examples.map((ex, i) => (
              <li key={i}>{ex}</li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}
