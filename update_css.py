import os

css_path = 'frontend/src/index.css'
with open(css_path, 'r') as f:
    content = f.read()

# Replace variables
new_vars = """
:root {
  /* Premium Dark Theme */
  --bg-main: #050505;
  --bg-surface: rgba(20, 24, 34, 0.6);
  --bg-surface-solid: #141822;
  --bg-surface-hover: rgba(30, 35, 48, 0.8);
  --bg-surface-active: rgba(40, 47, 63, 0.9);
  
  --primary: #3B82F6;
  --primary-hover: #60A5FA;
  --primary-focus: rgba(59, 130, 246, 0.25);
  
  --secondary: #8B5CF6;
  --accent: #10B981;
  --accent-soft: rgba(16, 185, 129, 0.15);
  
  --text-main: #F8FAFC;
  --text-muted: #94A3B8;
  --text-dim: #475569;
  
  --border-color: rgba(255, 255, 255, 0.08);
  --border-light: rgba(255, 255, 255, 0.03);

  --success: #10B981;
  --danger: #EF4444;

  --shadow-sm: 0 2px 4px 0 rgba(0, 0, 0, 0.2);
  --shadow-md: 0 8px 16px -4px rgba(0, 0, 0, 0.4), 0 4px 8px -2px rgba(0, 0, 0, 0.2);
  --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.5), 0 10px 10px -5px rgba(0, 0, 0, 0.2);
  --shadow-glow: 0 0 20px rgba(59, 130, 246, 0.3);
  --shadow-glow-purple: 0 0 20px rgba(139, 92, 246, 0.3);

  --font-sans: 'Inter', system-ui, -apple-system, sans-serif;
  --font-jp: 'Noto Sans JP', sans-serif;
  
  --nav-height: 72px;
}
"""

import re
content = re.sub(r':root\s*\{[^}]+\}', new_vars.strip(), content)

# Navbar modifications
content = content.replace("""
.navbar {
  height: var(--nav-height);
  background-color: var(--bg-surface);
  border-bottom: 1px solid var(--border-color);
  position: sticky;
  top: 0;
  z-index: 100;
  display: flex;
  justify-content: center;
  box-shadow: var(--shadow-sm);
}""", """
.navbar {
  height: var(--nav-height);
  background-color: rgba(15, 18, 25, 0.7);
  backdrop-filter: blur(16px);
  -webkit-backdrop-filter: blur(16px);
  border-bottom: 1px solid var(--border-color);
  position: sticky;
  top: 0;
  z-index: 100;
  display: flex;
  justify-content: center;
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.5);
}""")

content = content.replace("""
.search-input {
  width: 100%;
  padding: 10px 16px 10px 42px;
  border-radius: 8px;
  background-color: var(--bg-main);
  border: 1px solid var(--border-color);
  color: var(--text-main);
  font-size: 0.9rem;
  transition: all 0.2s;
}""", """
.search-input {
  width: 100%;
  padding: 10px 16px 10px 42px;
  border-radius: 24px; /* Pill shape */
  background-color: rgba(255, 255, 255, 0.03);
  border: 1px solid var(--border-color);
  color: var(--text-main);
  font-size: 0.9rem;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
.search-input:focus {
  background-color: rgba(255, 255, 255, 0.06);
  border-color: rgba(59, 130, 246, 0.5);
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15);
}
""")

# Buttons
content = content.replace("""
.btn-primary {
  background-color: var(--primary);
  color: white;
}
.btn-primary:hover {
  background-color: var(--primary-hover);
  color: white;
  transform: translateY(-1px);
  box-shadow: 0 4px 12px rgba(59, 130, 246, 0.4);
}""", """
.btn-primary {
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  color: white;
  border: none;
  box-shadow: 0 4px 10px rgba(59, 130, 246, 0.3);
}
.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(139, 92, 246, 0.5);
  filter: brightness(1.1);
}""")

# Card
content = content.replace("""
.card {
  background-color: var(--bg-surface);
  border-radius: 12px;
  border: 1px solid var(--border-color);
  overflow: hidden;
}""", """
.card {
  background-color: var(--bg-surface);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  border-radius: 16px;
  border: 1px solid var(--border-color);
  overflow: hidden;
  box-shadow: var(--shadow-md);
  transition: all 0.3s ease;
}
.card:hover {
  border-color: rgba(255, 255, 255, 0.15);
  box-shadow: var(--shadow-lg);
}""")

# Lesson Item
content = content.replace("""
.lesson-item {
  display: flex;
  align-items: center;
  padding: 16px;
  background-color: var(--bg-surface);
  border-radius: 10px;
  border: 1px solid var(--border-color);
  transition: all 0.2s ease;
  cursor: pointer;
  text-decoration: none;
  color: inherit;
}""", """
.lesson-item {
  display: flex;
  align-items: center;
  padding: 16px;
  background-color: var(--bg-surface);
  backdrop-filter: blur(8px);
  border-radius: 12px;
  border: 1px solid var(--border-color);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  cursor: pointer;
  text-decoration: none;
  color: inherit;
  position: relative;
  overflow: hidden;
}
.lesson-item::before {
  content: '';
  position: absolute;
  top: 0; left: 0; width: 4px; height: 100%;
  background: linear-gradient(to bottom, var(--primary), var(--secondary));
  opacity: 0;
  transition: opacity 0.3s ease;
}
.lesson-item:hover::before {
  opacity: 1;
}
""")

content = content.replace("""
.lesson-item:hover {
  border-color: var(--primary);
  background-color: var(--bg-surface-hover);
  transform: translateY(-2px);
  box-shadow: var(--shadow-md);
}""", """
.lesson-item:hover {
  border-color: rgba(139, 92, 246, 0.4);
  background-color: var(--bg-surface-hover);
  transform: translateY(-3px) scale(1.01);
  box-shadow: var(--shadow-lg), var(--shadow-glow-purple);
}""")

# Add Aurora across the app
content = content.replace("""
.aurora-bg {
  position: absolute;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  background: radial-gradient(circle at 50% 50%, rgba(59, 130, 246, 0.15), transparent 60%),
              radial-gradient(circle at 80% 20%, rgba(139, 92, 246, 0.1), transparent 50%);
  animation: aurora-rotate 20s linear infinite;
  z-index: -1;
  pointer-events: none;
}""", """
.aurora-bg {
  position: fixed;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  background: radial-gradient(circle at 50% 50%, rgba(59, 130, 246, 0.1), transparent 50%),
              radial-gradient(circle at 80% 20%, rgba(139, 92, 246, 0.08), transparent 40%),
              radial-gradient(circle at 20% 80%, rgba(16, 185, 129, 0.05), transparent 50%);
  animation: aurora-rotate 30s linear infinite;
  z-index: -1;
  pointer-events: none;
}""")

with open(css_path, 'w') as f:
    f.write(content)

print("CSS updated successfully.")
