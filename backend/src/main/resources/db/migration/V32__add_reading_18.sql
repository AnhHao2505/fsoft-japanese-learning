-- V32__add_reading_18.sql

WITH inserted_reading AS (
    INSERT INTO readings (course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
    VALUES (
        'jpd316', 
        'Bài đọc 18', 
        'DHAって知っていますか', 
        'DHAって知っていますか。健康のために欠かせないもので、マグロなどの魚に多く含まれています。さまざまな効果がありますが、いちばんの効果はこれによって血の流れがよくなり、生活習慣病（注1）の予防になることでしょう。DHAは、もともと私たちの体の中にあるものなのですが、体内（注2）では作られにくくなると言われています。また、年をとるとともに減少するということです。

（注1）生活習慣病：生活の仕方や食事のとり方など、その人の生活の習慣でなる病気
（注2）体内：体の中

DHAについて正しく書かれているものは、どれか。
1 DHAは健康のために必要だが、私たちの体内では作れない。
2 DHAは体内にあるものだが、だんだん作られにくくなる。
3 DHAは魚にしかないので、魚をたくさん食べなければならない。
4 DHAは毎日の食事でとらなくても、体内に十分あるからだいじょうぶだ。', 
        'Bạn có biết về DHA không? Là chất không thể thiếu cho sức khỏe, và có nhiều trong các loại cá như cá ngừ. Nó có rất nhiều hiệu quả, nhưng hiệu quả lớn nhất có lẽ là nhờ nó mà máu lưu thông tốt hơn, và giúp phòng chống các bệnh liên quan đến thói quen sinh hoạt (chú thích 1). DHA vốn dĩ có sẵn trong cơ thể chúng ta, nhưng người ta nói rằng nó dần trở nên khó được tạo ra trong cơ thể (chú thích 2). Hơn nữa, nó cũng giảm đi cùng với tuổi tác.

(Chú thích 1) Bệnh do thói quen sinh hoạt: Bệnh mắc phải do thói quen sinh hoạt của người đó, như cách sống hay cách ăn uống.
(Chú thích 2) Thể nội: Bên trong cơ thể.

Cái nào được viết đúng về DHA?
1 DHA cần thiết cho sức khỏe nhưng không thể tạo ra trong cơ thể chúng ta.
2 DHA có trong cơ thể nhưng dần dần trở nên khó được tạo ra. (ĐÁP ÁN ĐÚNG)
3 DHA chỉ có trong cá nên phải ăn thật nhiều cá.
4 DHA dù không hấp thụ từ bữa ăn hàng ngày thì cũng ổn vì nó có đủ trong cơ thể.', 
        '', 
        '', 
        18
    ) RETURNING id
)
INSERT INTO reading_grammar (reading_id, pattern, explanation, sort_order) 
SELECT id, '〜というものではない／〜というものでもない', 'Cấu trúc:
普通形　というものではない
*Aナ・Nだ

Ý nghĩa & Cách dùng:
phải chăng là 〜
「〜と思われるけど、これだ！と一つに決められない」という意味', 1 FROM inserted_reading
UNION ALL
SELECT id, '〜によって', 'Cấu trúc:
N　によって

Ý nghĩa & Cách dùng:
Do bởi 〜
「〜のために」「〜が原因で」という意味。', 2 FROM inserted_reading
UNION ALL
SELECT id, '〜ということだ', 'Cấu trúc:
普通形　ということだ

Ý nghĩa & Cách dùng:
nghe nói là 〜, phải chăng là 〜, nghĩa là 〜
聞いたり、読んだりしたことを、他の人に伝える時に使う。', 3 FROM inserted_reading;

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) 
SELECT id, '健康', 'けんこう', 'sức khỏe', 1 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '欠かせない', 'かかせない', 'không thể thiếu', 2 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, 'マグロ', 'まぐろ', 'cá ngừ', 3 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '含む', 'ふくむ', 'bao gồm, chứa', 4 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '効果', 'こうか', 'hiệu quả', 5 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '血', 'ち', 'máu', 6 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '流れ', 'ながれ', 'sự lưu thông, dòng chảy', 7 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '生活習慣病', 'せいかつしゅうかんびょう', 'bệnh do thói quen sinh hoạt', 8 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '予防', 'よぼう', 'phòng ngừa', 9 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '体内', 'たいない', 'trong cơ thể', 10 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316'
UNION ALL SELECT id, '減少する', 'げんしょうする', 'giảm bớt, suy giảm', 11 FROM readings WHERE title = 'Bài đọc 18' AND course_id = 'jpd316';
