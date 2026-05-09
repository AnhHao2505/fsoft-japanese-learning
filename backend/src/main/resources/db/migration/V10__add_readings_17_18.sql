-- Migration V10: Add Reading 17 and Reading 18

-- Bài đọc 17
INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
VALUES (
    14, 
    'jpd316', 
    'Bài đọc 17', 
    '', 
    '私たちは疲れを取るためによくお風呂に入る。
しかし実際にはお風呂に入るとかえって疲労物質が増えてしまうそうだ。
お風呂がいいのは実はその後ぐっすり眠れるからだそうだ。
疲労物質を減らすには目を閉じてじっとしているのが一番いいそうだ。
つまり睡眠が一番いいことになる。勿論昼寝もいい。
毎日睡眠時間が十分に取れればいいが、忙しい人には難しい。
では１時間に１度でも十分に寝たら疲労物質を減らす効果があるのだろうか。
寝すぎてかえって疲れたと感じた経験があるだろう。
それは疲労物質が減っても疲労感が残っているからだそうだ。
疲れ過ぎて脳が疲労を感じられなくなっているときに十分に寝るといままで働きが鈍かった脳が活発に働いて疲労を感じられるようになるのだ。
そして「かえって疲れた」と感じてしまうのだそうだ。
また「頑張っているね」とか「おかげで助かったよ」とかほめられると疲労感が減るそうだ。

栄養ドリンクやコーヒーを飲んだりしても同様の効果がある。甘い物を食べることもいい。うれしい・楽しいなどといった気持ちが疲労感を減らす。しかし疲労物質が減ったために元気になったのではないことを忘れてはならない。
疲労物質を減らすためにいい食べ物もある。鳥の胸肉に疲労物質を減少させる物質が最も多く含まれているそうだ。渡り鳥はその物質を持っているので何千キロも休むことなく飛び続けることができるそうだ。',
    'Chúng tôi thường vào bồn tắm ngâm mình để giảm mệt mỏi
Tuy nhiên thực ra việc tắm giống như ngược lại còn làm tăng sự mệt mỏi.
Việc tắm bồn thì tốt vì bạn có thể ngủ ngon sau đó.
Để giảm sự mệt mỏi thì tốt nhất là việc yên lặng nhắm mắt lại.
Có lẽ giấc ngủ là tốt nhất để giảm mệt mỏi. Đương nhiên việc ngủ trưa cũng tốt.
Sẽ tốt nếu bạn ngủ đủ giấc mỗi ngày nhưng đối với người bận rộn thì rất khó.
Liệu nếu ngủ đủ chỉ 1 lần cho mỗi giờ thì có thể hiệu quả trong việc giảm đi sự mệt mỏi không.
Liệu có trải nghiệm cảm thấy mệt mỏi ngược lại nếu ngủ nhiều quá không.
Vậy có thể vì cảm giác mệt mỏi vẫn còn nên dù đã giảm sự mệt mỏi đi.
Khi bạn ngủ đủ thì khi não đang trải qua sự mệt mỏi không cảm thể nhận được thì não sẽ trở nên hoạt bát trở lại.
Sau đó, có vẻ như cảm nhận được sự ngược lại của sự mệt mỏi.
Lại nữa khi được khen "Bạn đang cố gắng nhỉ" hay "Nhờ có bạn mà đã được giúp đỡ" thì cảm giác mệt mỏi sẽ giảm đi.',
    '', 
    '1. お風呂ーおふろ : tắm bồn
2. 実際に : thật ra/ thực ra
3. そのあと : sau đó
4. ぐっすり : Ngủ ngon
5. じっと : Yên lặng, câm lặng
6. もちろん : Đương nhiên
7. ひるね : ngủ trưa
8. 残るーのこる : còn lại
9. のう : não
10. どん : chậm chạp',
    14
);

-- Bài đọc 18
INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, difficult_kanji, notes, sort_order) 
VALUES (
    15, 
    'jpd316', 
    'Bài đọc 18', 
    '', 
    '人は何か考えたり何かを思い出したりするときに、目を閉じたり、上を見たりするが、なぜ、そのような体の動きをするのだろうか。
その動きには、どんな意味があるのだろうか。
何かを考えたり思い出そうとするときに、私たちは頭の中を考えやすい状態にする。
何かを考えるときにじゃまになる情報は見ないほうがいいから、目を閉じたり上を見たりして、他の情報を入れないようにするのだ。
つまり、考えること、思い出すことに集中させているのである。
そういえば、幼稚園や小学校の低学年のクラスでは、先生が「目を閉じて、今から言うことを聞いてください」というような場面を見たことがあるが、それは子どもたちを集中させるためにやっていたことなのだ。
私たちの体は私たちのものだが、自分ではまったくわからない動きを自然に行っているのである。',
    'Con người khi suy nghĩ, nhớ lại thì mắt họ nhắm lại hay nhìn lên trên, nhưng tại sao họ lại có những cử chỉ đó nhỉ?
Những cái cử chỉ đó thì có ý nghĩa gì nhỉ
Chúng ta sẽ đặt mình vào trạng thái dễ suy nghĩ khi chúng ta muốn nhớ lại hay suy nghĩ cái gì đó.
Vì cách tốt nhất là không nên nhìn thấy những thông tin gây mất tập trung nên chúng ta thường nhắm mắt lại và nhìn lên trên để ngăn các thông tin khác lọt vào.
Tóm lại, nó giúp bạn có thể tập trung để hồi tưởng hoặc suy nghĩ.
Nhân tiện, ở các lớp của trường mầm non và các lớp 1,2 của trường tiểu học thì, giáo viên có nói là hãy nhắm mắt lại và lắng nghe lời nói của cô. Đó là cách làm cho bọn trẻ tập trung hơn
Mặc dù là cơ thể của chúng ta nhưng có những cái hành động tự nhiên mà chúng ta không thể hiểu được toàn bộ tại sao lại như vậy.',
    '', 
    '1. 幼稚園ーようちえん: trường mẫu giáo
2. させている -> Chỉ mục đích',
    15
);
