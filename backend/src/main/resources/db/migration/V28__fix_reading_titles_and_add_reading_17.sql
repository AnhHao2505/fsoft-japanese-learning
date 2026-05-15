-- V28__fix_reading_titles_and_add_reading_17.sql

-- Cập nhật lại title cho khớp với sort_order thực tế để hiển thị đúng số thứ tự
UPDATE readings SET title = 'Bài đọc ' || sort_order WHERE title LIKE 'Bài đọc %';

-- Thêm bài đọc mới (Bài đọc 17)
INSERT INTO readings (course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
VALUES ('jpd316', 'Bài đọc 17', '', '日本で働く外国人や留学生向けの住まいには、いろいろなタイプがある。今回は、若い人に人気があるゲストハウスとホームステイについて考えてみよう。

ゲストハウスとは、一つの家で数名が共同生活するものをいう。寝室は別々だが、キッチンやバスルームは共用だ。いろいろな国籍、年齢、職業の人が一緒に住むので、異文化交流（注）が楽しめる。日本語だけでなく、いくつものことばが使われるので、語学の学習にもなる。ただ、ほかの人と仲よくやるためには、積極的に関わったり、相手の話をよく聞く態度も必要である。

ホームステイは、一般の日本人家庭で生活する。今の日本の文化や習慣を知ることができ、日本語の上達にもつながる。本当の家族のようにしたしい関係が生まれることもある。何年も過ごすことはむずかしいが、日本に慣れるまでの1～2ヵ月利用する留学生にはおすすめだ。それぞれの特徴を知って、えらびたい。', 'Có nhiều kiểu chỗ ở dành cho người nước ngoài và lưu học sinh làm việc tại Nhật Bản. Lần này, chúng ta hãy cùng xem xét về guest house (nhà khách) và homestay, vốn đang phổ biến với những người trẻ tuổi.

Guest house là loại hình mà một vài người cùng sống chung trong một căn nhà. Phòng ngủ thì riêng biệt, nhưng nhà bếp và phòng tắm thì dùng chung. Do có những người thuộc nhiều quốc tịch, độ tuổi, nghề nghiệp khác nhau cùng chung sống nên có thể tận hưởng sự giao lưu văn hóa khác biệt. Không chỉ tiếng Nhật mà nhiều ngôn ngữ khác nhau cũng được sử dụng nên nó cũng giúp ích cho việc học ngoại ngữ. Tuy nhiên, để có thể sống hòa thuận với người khác, cần phải có thái độ chủ động tham gia và lắng nghe cẩn thận câu chuyện của đối phương.

Homestay là việc sống tại các gia đình người Nhật thông thường. Có thể tìm hiểu được văn hóa và phong tục của Nhật Bản ngày nay, và cũng giúp cải thiện tiếng Nhật. Cũng có lúc sinh ra mối quan hệ thân thiết giống như gia đình thật sự. Mặc dù khó có thể ở lại trong nhiều năm, nhưng nó được khuyến khích cho các lưu học sinh sử dụng trong 1~2 tháng cho đến khi quen với Nhật Bản. Nên biết đặc điểm của từng loại để có thể lựa chọn phù hợp.', '', '', 17);
