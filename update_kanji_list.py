import re

file_path = 'frontend/src/components/KanjiList.jsx'
with open(file_path, 'r') as f:
    content = f.read()

new_style = """<style>{`
        .kanji-detail-card {
          background-color: var(--bg-surface);
          backdrop-filter: blur(12px);
          border: 1px solid var(--border-color);
          border-radius: 20px;
          margin-bottom: 24px;
          box-shadow: var(--shadow-md);
          overflow: hidden;
          display: flex;
          flex-direction: column;
          transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        .kanji-detail-card:hover {
          transform: translateY(-4px);
          box-shadow: var(--shadow-lg), var(--shadow-glow);
          border-color: rgba(59, 130, 246, 0.3);
        }
        .kanji-detail-header {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 12px 20px;
          border-bottom: 1px solid var(--border-light);
          background-color: rgba(255, 255, 255, 0.02);
        }
        .kanji-detail-body {
          display: flex;
          flex-direction: column;
        }
        @media (min-width: 768px) {
          .kanji-detail-body {
            flex-direction: row;
          }
        }
        .chugoc-section {
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          padding: 32px 24px;
          width: 100%;
          border-bottom: 1px solid var(--border-light);
          background: radial-gradient(circle at center, rgba(59, 130, 246, 0.08) 0%, transparent 70%);
        }
        @media (min-width: 768px) {
          .chugoc-section {
            width: 260px;
            border-bottom: none;
            border-right: 1px solid var(--border-light);
            flex-shrink: 0;
          }
        }
        .kanji-main-char {
          font-size: 5.5rem;
          line-height: 1;
          background: linear-gradient(135deg, #60A5FA, #3B82F6);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          font-weight: bold;
          margin-bottom: 12px;
          transition: all 0.3s ease;
          text-shadow: 0 0 30px rgba(59, 130, 246, 0.3);
        }
        .kanji-main-char:hover {
          transform: scale(1.1) rotate(2deg);
          text-shadow: 0 0 40px rgba(59, 130, 246, 0.6);
        }
        .kanji-sino-viet {
          font-size: 1.35rem;
          font-weight: 800;
          background: linear-gradient(90deg, #F87171, #EF4444);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          text-transform: uppercase;
          margin-bottom: 20px;
          letter-spacing: 0.15em;
        }
        .kanji-readings-row {
          display: flex;
          gap: 12px;
          width: 100%;
        }
        .reading-pill-box {
          flex: 1;
          background-color: rgba(255, 255, 255, 0.03);
          border: 1px solid var(--border-color);
          border-radius: 12px;
          padding: 8px 6px;
          text-align: center;
          transition: all 0.2s;
        }
        .reading-pill-box:hover {
          background-color: rgba(255, 255, 255, 0.06);
          border-color: rgba(255, 255, 255, 0.15);
        }
        .reading-pill-label {
          font-size: 0.7rem;
          font-weight: 700;
          color: var(--text-muted);
          margin-bottom: 4px;
        }
        .reading-pill-val {
          font-size: 0.95rem;
          font-weight: 600;
          color: var(--text-main);
        }
        .vidu-section {
          flex: 1;
          padding: 24px;
          display: flex;
          flex-direction: column;
        }
        .vidu-label {
          font-size: 0.85rem;
          font-weight: bold;
          color: var(--primary);
          letter-spacing: 0.1em;
          margin-bottom: 20px;
          display: flex;
          align-items: center;
          gap: 8px;
        }
        .vidu-label::before {
          content: '';
          display: block;
          width: 8px;
          height: 8px;
          background-color: var(--primary);
          border-radius: 50%;
          box-shadow: 0 0 10px var(--primary);
        }
        .vidu-grid {
          display: grid;
          grid-template-columns: 1fr;
          gap: 12px;
        }
        @media (min-width: 1024px) {
          .vidu-grid {
            grid-template-columns: repeat(2, 1fr);
          }
        }
        .vidu-card {
          background-color: rgba(255, 255, 255, 0.02);
          border: 1px solid var(--border-light);
          border-radius: 12px;
          padding: 16px;
          transition: all 0.2s ease;
        }
        .vidu-card:hover {
          background-color: rgba(255, 255, 255, 0.05);
          border-color: rgba(59, 130, 246, 0.3);
          transform: translateX(4px);
        }
        .vidu-jp-row {
          display: flex;
          align-items: baseline;
          gap: 12px;
          margin-bottom: 8px;
        }
        .vidu-word {
          font-size: 1.4rem;
          font-weight: 700;
          color: var(--text-main);
        }
        .vidu-reading-badge {
          background-color: var(--primary-focus);
          color: var(--primary-hover);
          padding: 4px 10px;
          border-radius: 20px;
          font-size: 0.85rem;
          font-weight: 600;
          border: 1px solid rgba(59, 130, 246, 0.2);
        }
        .vidu-meaning {
          color: var(--text-muted);
          font-size: 0.95rem;
          line-height: 1.5;
        }
      `}"""

# Replaces the entire style block
updated_content = re.sub(r'<style>\{`.*?`\}</style>', new_style.replace('\\', '\\\\'), content, flags=re.DOTALL)

with open(file_path, 'w') as f:
    f.write(updated_content)

print("Updated KanjiList.jsx styles.")
