-- V31__add_n5_short_sentences.sql

-- Add new lesson 1004 for N5 Short Sentences
INSERT INTO lessons (id, course_id, category, title, title_jp, content) VALUES
(1004, 'n5_beginner', 'Từ vựng', 'Mẫu câu giao tiếp cơ bản', '日常挨拶 (Nichijou Aisatsu)', 'Những mẫu câu giao tiếp ngắn gọn thường dùng hàng ngày trong tiếng Nhật. Học thuộc lòng sẽ giúp bạn giao tiếp tự tin hơn ngay từ đầu.');

-- Add vocabulary words (sentences)
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES
(1004, 'おはようございます', 'ohayou gozaimasu', 'Chào buổi sáng (Lịch sự)'),
(1004, 'こんにちは', 'konnichiwa', 'Xin chào / Chào buổi chiều'),
(1004, 'こんばんは', 'konbanwa', 'Chào buổi tối'),
(1004, 'ありがとうございます', 'arigatou gozaimasu', 'Xin cảm ơn (Lịch sự)'),
(1004, 'すみません', 'sumimasen', 'Xin lỗi / Xin làm phiền / Cho tôi hỏi'),
(1004, 'はい', 'hai', 'Vâng / Dạ / Có'),
(1004, 'いいえ', 'iie', 'Không'),
(1004, 'さようなら', 'sayounara', 'Tạm biệt (Khi lâu ngày không gặp lại)'),
(1004, 'はじめまして', 'hajimemashite', 'Rất vui được gặp bạn (Lần đầu gặp mặt)'),
(1004, 'よろしくおねがいします', 'yoroshiku onegaishimasu', 'Rất mong được bạn giúp đỡ'),
(1004, 'おねがいします', 'onegaishimasu', 'Làm ơn / Xin vui lòng'),
(1004, 'わかりました', 'wakarimashita', 'Tôi hiểu rồi'),
(1004, 'わかりません', 'wakarimasen', 'Tôi không hiểu'),
(1004, 'ごめんなさい', 'gomennasai', 'Xin lỗi (Dùng cho người thân thiết)'),
(1004, 'いただきます', 'itadakimasu', 'Mời dùng bữa (Nói trước khi ăn)'),
(1004, 'ごちそうさまでした', 'gochisousamadeshita', 'Cảm ơn vì bữa ăn (Nói sau khi ăn xong)'),
(1004, 'おやすみなさい', 'oyasuminasai', 'Chúc ngủ ngon'),
(1004, 'いってきます', 'ittekimasu', 'Tôi đi đây (Nói khi ra khỏi nhà)'),
(1004, 'いってらっしゃい', 'itterasshai', 'Bạn đi nhé (Nói với người ra khỏi nhà)'),
(1004, 'ただいま', 'tadaima', 'Tôi đã về đây'),
(1004, 'おかえりなさい', 'okaerinasai', 'Bạn đã về đấy à (Nói với người vừa về)');
