-- Migration V13: Add Reading 17 and related vocabularies

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
VALUES (
    16, 
    'jpd316', 
    'Bài đọc 17', 
    'ボランティア募集', 
    '文章を読んで、質問に答えなさい。答えは１・２・３・４から最もよいものを一つえらびなさい。

「森林を守る会」では森林の草取りボランティアを募集しております。
日時：　　　1月24日（日曜日）9：00
集合場所：　JR青梅線沢井駅
定員：　　　50名（ただし12歳以上）
参加費：　　200円（ボランティア保険料）
服装：　　　動きやすくて汚れてもいい服装（長袖・長ズボン）
　　　　　靴は長靴、登山靴など
持ち物：　雨具・タオル・(注) 軍手
　　　　　申し込み方法：　電話またはEメールでお申し込みください。
　　　　　電話　001－202－0202「森林を守る会」森正子
　　　　　Eメール　northisland@northisland .co .jp
締め切り：1月14日

(注) 軍手：木綿で作られている作業用の手袋

1. このボランティアに参加できないのは誰か。
   1. 女子高校生
   2. 8時に駅に着いた人
   3. タオルを忘れた人
   4. 保険に入らない人',
    'Đọc đoạn văn và trả lời câu hỏi. Chọn đáp án đúng nhất từ 1, 2, 3, 4.

"Hội bảo vệ rừng" đang chiêu mộ tình nguyện viên nhổ cỏ trong rừng.
Ngày giờ: 9:00 ngày 24 tháng 1 (Chủ nhật)
Nơi tập trung: Ga Sawai tuyến JR Ome
Số người tối đa: 50 người (tuy nhiên phải từ 12 tuổi trở lên)
Phí tham gia: 200 yên (tiền bảo hiểm tình nguyện viên)
Trang phục: Trang phục dễ vận động và có bị bẩn cũng không sao (áo dài tay, quần dài)
Giày thì mang giày ủng, giày leo núi...
Mang theo: Đồ đi mưa, khăn tắm, (Chú ý) Găng tay
Cách đăng ký: Vui lòng đăng ký qua điện thoại hoặc Email.
Điện thoại: 001-202-0202 "Hội bảo vệ rừng" Mori Masako
Email: northisland@northisland.co.jp
Hạn chót: Ngày 14 tháng 1

(Chú ý) Găng tay (Gunte): Găng tay dùng trong lao động làm bằng cotton.

1. Ai là người KHÔNG THỂ tham gia hoạt động tình nguyện này?
   1. Nữ sinh cấp 3 (trên 12 tuổi -> có thể tham gia)
   2. Người đến ga lúc 8 giờ (Tập trung lúc 9h, đến lúc 8h -> có thể tham gia)
   3. Người quên khăn tắm (Khăn tắm là đồ mang theo nhưng không phải điều kiện cấm -> có thể tham gia)
   4. Người không vào bảo hiểm (Phí tham gia 200 yên là tiền bảo hiểm tình nguyện viên bắt buộc -> Không đóng không được tham gia) -> ĐÁP ÁN: 4',
    '', 
    '',
    16
);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES 
(16, '森林', 'しんりん', 'rừng', 0),
(16, '草取り', 'くさとり', 'nhổ cỏ', 1),
(16, '募集する', 'ぼしゅうする', 'chiêu mộ, tuyển', 2),
(16, '定員', 'ていいん', 'số người tối đa', 3),
(16, '保険料', 'ほけんりょう', 'tiền bảo hiểm', 4),
(16, '服装', 'ふくそう', 'trang phục', 5),
(16, '長袖', 'ながそで', '(áo) dài tay', 6),
(16, '長靴', 'ながぐつ', 'giầy ủng', 7),
(16, '登山靴', 'とざんぐつ', 'giầy leo núi', 8),
(16, '雨具', 'あまぐ', 'đồ đi mưa', 9),
(16, 'タオル', '', 'khăn tắm', 10),
(16, '軍手', 'ぐんて', 'găng tay', 11),
(16, '締め切り', 'しめきり', 'hạn chót', 12);
