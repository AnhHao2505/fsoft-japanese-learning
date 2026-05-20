-- V34__add_reading_19.sql

INSERT INTO readings (course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
VALUES (
    'jpd316', 
    'Bài đọc 19', 
    '「日本」という漢字のふりがな', 
    'あなたは「日本」という漢字のふりがなを、どう書きますか。「にほん」ですか。（ 1 ）「にっぽん」ですか。
会社名として使う時や、オリンピックの応援では、「ニッポン」と言うことが多いようです。（ 2 ）、「いつ日本にきましたか」のように「にほん」と読むことも多いような気がします。
2009年、国会で「日本」の読み方を「にほん」「にっぽん」のどちらかに統一する必要はない、とされましたから、どちらでもいいということでしょうか。

問題 ( ) に入る正しい接続詞を1、2、3、4から選びなさい。

(1)
1. それとも
2. それから
3. そして
4. そういえば

(2)
1. ところで
2. それじゃ
3. それなのに
4. けれども', 
    'Bạn viết furigana cho chữ Hán "Nhật Bản" như thế nào? Là "Nihon"? Hay là "Nippon"?
Khi dùng làm tên công ty hoặc khi cổ vũ Olympic, có vẻ người ta thường nói là "Nippon". Tuy nhiên, tôi cảm thấy cũng thường đọc là "Nihon" giống như trong câu "Bạn đến Nhật Bản khi nào?".
Năm 2009, ở Quốc hội đã quyết định rằng không cần thiết phải thống nhất cách đọc "Nhật Bản" là "Nihon" hay "Nippon", vậy nên có lẽ đọc cách nào cũng được phải không.

Chọn liên từ đúng điền vào ( ).

(1)
1. それとも (Hay là) (ĐÁP ÁN ĐÚNG)
2. それから (Sau đó)
3. そして (Và)
4. そういえば (Nhắc mới nhớ)

(2)
1. ところで (Nhân tiện)
2. それじゃ (Vậy thì)
3. それなのに (Mặc dù vậy)
4. けれども (Tuy nhiên) (ĐÁP ÁN ĐÚNG)', 
    '', 
    '', 
    19
);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) 
SELECT id, '応援', 'おうえん', 'ủng hộ', 1 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '国会', 'こっかい', 'quốc hội', 2 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '統一する', 'とういつする', 'thống nhất', 3 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '漢字', 'かんじ', 'Chữ Hán', 4 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, 'ふりがな', 'ふりがな', 'Phiên hiragana (lên chữ kanji)', 5 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '書く', 'かく', 'Viết', 6 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '会社名', 'がいしゃめい', 'tên công ty', 7 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '使う', 'つかう', 'dùng', 8 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '読み方', 'よみかた', 'Cách đọc', 9 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '読む', 'よむ', 'Đọc', 10 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316'
UNION ALL SELECT id, '多い', 'おおい', 'Nhiều, đầy', 11 FROM readings WHERE title = 'Bài đọc 19' AND course_id = 'jpd316';
