import React from 'react';

const JapaneseIntro = () => {
  return (
    <div style={{ lineHeight: '1.8', color: 'var(--text)' }}>
      <div style={{ marginBottom: '32px' }}>
        <p style={{ fontSize: '1.1rem', marginBottom: '16px' }}>
          Tiếng Nhật là một ngôn ngữ vô cùng thú vị và độc đáo. Khác với tiếng Việt hay tiếng Anh chỉ sử dụng một bảng chữ cái Latinh, tiếng Nhật sử dụng kết hợp <strong>3 hệ thống chữ viết</strong> khác nhau trong cùng một câu: <strong>Hiragana</strong>, <strong>Katakana</strong> và <strong>Kanji</strong>.
        </p>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', gap: '24px', marginBottom: '40px' }}>
        {/* Hiragana */}
        <div style={{ padding: '24px', backgroundColor: 'rgba(59, 130, 246, 0.05)', borderRadius: '12px', borderLeft: '4px solid #3b82f6' }}>
          <h3 style={{ color: '#3b82f6', fontSize: '1.4rem', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <span style={{ fontSize: '2rem' }}>あ</span> 1. Hiragana (Chữ mềm)
          </h3>
          <p style={{ marginBottom: '12px' }}>
            Là bảng chữ cái cơ bản nhất, dùng để viết các từ thuần Nhật và các thành phần ngữ pháp (trợ từ, đuôi động từ). Đường nét uốn lượn, mềm mại.
          </p>
          <div style={{ display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: 'var(--primary)', marginRight: '8px' }}>わたし</span> 
              <span style={{ color: 'var(--text-muted)' }}>watashi (Tôi)</span>
            </div>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: 'var(--primary)', marginRight: '8px' }}>ありがとう</span> 
              <span style={{ color: 'var(--text-muted)' }}>arigatou (Cảm ơn)</span>
            </div>
          </div>
        </div>

        {/* Katakana */}
        <div style={{ padding: '24px', backgroundColor: 'rgba(236, 72, 153, 0.05)', borderRadius: '12px', borderLeft: '4px solid #ec4899' }}>
          <h3 style={{ color: '#ec4899', fontSize: '1.4rem', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <span style={{ fontSize: '2rem' }}>ア</span> 2. Katakana (Chữ cứng)
          </h3>
          <p style={{ marginBottom: '12px' }}>
            Dùng để phiên âm các từ mượn tiếng nước ngoài (như tiếng Anh), tên quốc gia, hoặc dùng để nhấn mạnh. Đường nét thẳng, cứng cáp và dứt khoát.
          </p>
          <div style={{ display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: '#ec4899', marginRight: '8px' }}>ベトナム</span> 
              <span style={{ color: 'var(--text-muted)' }}>betonamu (Việt Nam)</span>
            </div>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: '#ec4899', marginRight: '8px' }}>コーヒー</span> 
              <span style={{ color: 'var(--text-muted)' }}>ko-hi- (Cà phê)</span>
            </div>
          </div>
        </div>

        {/* Kanji */}
        <div style={{ padding: '24px', backgroundColor: 'rgba(16, 185, 129, 0.05)', borderRadius: '12px', borderLeft: '4px solid #10b981' }}>
          <h3 style={{ color: '#10b981', fontSize: '1.4rem', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <span style={{ fontSize: '2rem' }}>語</span> 3. Kanji (Hán tự)
          </h3>
          <p style={{ marginBottom: '12px' }}>
            Là các chữ mượn từ tiếng Trung Quốc, dùng để biểu thị ý nghĩa cốt lõi của từ. Tiếng Nhật có hàng ngàn chữ Kanji, giúp câu văn ngắn gọn và dễ hiểu ý nghĩa.
          </p>
          <div style={{ display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: '#10b981', marginRight: '8px' }}>日本</span> 
              <span style={{ color: 'var(--text-muted)' }}>Nihon (Nhật Bản)</span>
            </div>
            <div style={{ backgroundColor: 'white', padding: '8px 16px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', border: '1px solid var(--border-color)' }}>
              <span className="jp-text" style={{ fontSize: '1.2rem', color: '#10b981', marginRight: '8px' }}>学生</span> 
              <span style={{ color: 'var(--text-muted)' }}>Gakusei (Học sinh)</span>
            </div>
          </div>
        </div>
      </div>

      <div style={{ padding: '32px', backgroundColor: 'var(--bg-surface)', borderRadius: '16px', border: '1px solid var(--border-color)', boxShadow: 'var(--shadow-sm)' }}>
        <h3 style={{ fontSize: '1.5rem', marginBottom: '24px', textAlign: 'center' }}>Ví dụ về một câu hoàn chỉnh</h3>
        
        <div style={{ fontSize: '2rem', textAlign: 'center', marginBottom: '24px', padding: '24px', backgroundColor: 'var(--bg-lighter)', borderRadius: '12px' }}>
          <span className="jp-text" style={{ color: '#3b82f6' }}>わたし</span>
          <span className="jp-text" style={{ color: '#3b82f6' }}>は</span>
          <span className="jp-text" style={{ color: '#ec4899' }}>ベトナム</span>
          <span className="jp-text" style={{ color: '#10b981' }}>人</span>
          <span className="jp-text" style={{ color: '#3b82f6' }}>です。</span>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '24px' }}>
          <div>
            <h4 style={{ color: 'var(--text-muted)', fontSize: '0.9rem', textTransform: 'uppercase', marginBottom: '8px' }}>Phiên âm</h4>
            <p style={{ fontSize: '1.1rem', fontWeight: '500' }}>Watashi wa Betonamu-jin desu.</p>
          </div>
          <div>
            <h4 style={{ color: 'var(--text-muted)', fontSize: '0.9rem', textTransform: 'uppercase', marginBottom: '8px' }}>Ý nghĩa</h4>
            <p style={{ fontSize: '1.1rem', fontWeight: '500' }}>Tôi là người Việt Nam.</p>
          </div>
        </div>
        
        <div style={{ marginTop: '24px', display: 'flex', gap: '16px', flexWrap: 'wrap', justifyContent: 'center' }}>
          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '6px', fontSize: '0.9rem' }}>
            <span style={{ width: '12px', height: '12px', borderRadius: '50%', backgroundColor: '#3b82f6' }}></span> Hiragana
          </span>
          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '6px', fontSize: '0.9rem' }}>
            <span style={{ width: '12px', height: '12px', borderRadius: '50%', backgroundColor: '#ec4899' }}></span> Katakana
          </span>
          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '6px', fontSize: '0.9rem' }}>
            <span style={{ width: '12px', height: '12px', borderRadius: '50%', backgroundColor: '#10b981' }}></span> Kanji
          </span>
        </div>
      </div>
    </div>
  );
};

export default JapaneseIntro;
