-- V6: Seed 14 Readings

DELETE FROM reading_grammar;
DELETE FROM reading_vocabularies;
DELETE FROM readings;

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (1, 'jpd316', 'Bài đọc 1', '', '犬は、その先祖（※1）であるオオカミの本能を受け継いでいる。犬は昔から、群れを作ることで狩猟（※2）を 成功させ、敵から身を守ってきた。群れの中で遊んでいるときも、遊んでいる相手の強さをみて自分の力を知り、群れの中での自分の地位を知ろうとする。したがって、犬は飼い主の家族の中にいても、注意深く観察し、常にそれぞれの地位を探ろうとしているのだ。人間と犬がともに楽しい生活を送るためには、犬の飼い主は、犬が人間より順位が下であるということをはっきり認識（※3）させなければならない。いくらかわいくても （    ） ことが大切なのである。\n1. 守ってきた: Vる＋てきる => mang hàm nghĩa là đã luôn bảo vệ từ trước đến bây giờ\n2. 強さーつよさ: sức mạnh\n3. 力―ちから: năng lực\n4. 地位―ちい: địa vị\n5. 狩猟: しゅりょう: săn bắt\n6. 成功させーせいこうさせ: làm cho thành công\n7. むれ: bầy đàn\n8. 飼い主（かいぬし）: chủ nuôi (người nuôi thú)\n9. 注意深く（ちゅういぶかく）: cẩn thận / chú ý kỹ\n10.観察する（かんさつする）: quan sát\n11. 常に（つねに）luôn luôn\n12. それぞれ: mỗi/ từng\n13. 探ろうとしているのだ: luôn cố gắng dò xét\n14. 人間―にんげん: nhân gian\n15. ともに: cùng nhau\n16. 順位-じゅんい: vị trí/ thứ tự\n17. はっきり: rõ ràng\n18. 認識-にんしき: sự nhận thức, tri thức\n19. オオカミ: sói\n20. 先祖―せんそ: tổ tiên\n21. いくら: dù có\n現在の日本では、「リサイクル」ということばは、「使わなくなったものを人の手で回収し（※1 ）、新しい製品を作る原料や材料として利用すること」という意味で使われている。読み終わった新聞や雑誌を集めて紙の原料を作り、トイレットペーパーなどの製品にする、というのが、一つの例だ。\n江戸時代にも、古い紙から紙を作ったりすることはあったが、その量は、今ほど多くなかった。原料がたくさんあったからとか、使う人が少なかったからとかいうわけではない。わざわざ古い紙を回収しなくても、人が普通に生活しているうちに、資源（※2）が自然に循環（リサイクル）していたのだ。\nなぜそんなことができたかといえば、それは、資源のほとんどが、植物性のものだったからだ。食べたり、使って捨てたり、燃やしたりしても、それは、土に返り、また植物を育てる。つまり、植物の自然の循環（リサイクル）に合わせて、人間が生活していたということなのだ。\n現在―げんざい		Hiện nay\n回収するーかいしゅう		thu hồi\n製品				sản phẩm\n原料―げんりょう		nguyên liệu\n材料-ざいりょう		vật liệu/ tài liệu\n新聞				bài báo\nというのが	(nhấn mạnh/ dùng để giới thiệu)	cái việc/thứ gọi là…\n例―れい	ví dụ\n江戸時代―えどじだい	thời edo\nいうわけではない	không thể kết luận là', '', 1);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (2, 'jpd316', 'Bài đọc 3', '', '中国に住んでいた頃、中国人の友人の家に遊びに行ったことがある。そのとき、こんなことがあった。\n私が、トイレに行きたくなったとき「トイレを借りてもいい？」、のどがかわいたとき「冷蔵庫のお茶をもらってもいい？」と聞くたび、友人が①変な顔をした。そして、彼女は私に言った。「なぜ、あなたはいちいち『いいですか』と聞くの？私とあなたは親しい友人なのだから、私の家にいて、お茶を飲むのも、トイレを使うのも、『いい』に決まってる。だから聞かないで。」\n私はびっくりして、「ごめん、わかった」と言った。そうか、私が当たり前だと思ってすることが、彼女にはよそよそしく（※）感じられ、不快なのだと気づいた。それは文化の違いなのだろう。\nそれ以来、私はできるだけ聞かないようにした。しかし、それは②なかなか難しかった。「聞かないで友人の家のものを開けたり使ったりする」こと自体が、私にはどうしても「不快」に感じられてならないからだった。\n冷蔵庫―れいぞうこ	tủ lạnh\n変な顔―変なかお khuông mặt lạ\n当たり前―あたりまえ đương nhiên, dĩ nhiên\nびっくり	ngạc nhiên\n不快―ふかい khó chịu\n気づいた	nhận ra', '', 2);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (3, 'jpd316', 'Bài đọc 4', '', '日本の家庭では、父親は外で仕事をし、家事（※ 1）や子育てなど家の中での仕事は母親の仕事とされることが多かった。しかし、最近は、結婚後も仕事を持つ女性が増え、男性のほうでも、家事や子育てをしたいと思う人が増えているそうだ。2009年の調査で、0歳から6歳までの子どもを持つ男性に聞いたところ、「家事や子育てをもっとしたい」という人は、54％もいた。子どもが成長する姿をもっと見たい、と思う男性が多いようだ。\nしかし、そうは言っても、実際には、家事や子育てのほとんどは女性がしている。2011年に、20歳から39歳までの妻に「夫と妻がそれぞれ家事や子育てにかける時間の比率（※ 2）はどれぐらいですか」という質問をしたところ、最も多かったのは、「妻：夫＝9：1」（29％）と「妻：夫＝8：2」（24％）という回答だった。\nこれでは、女性は、安心して働くことができない。男性からは、「家事や子育てをしたいと思っても、会社が忙しくてできない」という声もあがっている。男性がもっと家の中での仕事ができるよう、国や会社は考えてほしいものだ。', '', 3);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES
(3, '家庭', '家庭', 'かてい 		gia đình', 1),
(3, '結婚後', '結婚後', 'けっこんご	sau khi kết hôn', 2),
(3, '調査', '調査', 'ちょうさ		điều tra, khảo sát', 3),
(3, '姿', '姿', 'すがた			bóng dáng, hình bóng', 4),
(3, '比率', '比率', 'ひりつ		Tỉ lệ, tỉ suất', 5);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (4, 'jpd316', 'Bài đọc 5', '', '妻は掃除をしない。自分ではハウスダスト・アレルギーだからだという。ほこりを吸うと咳がでるし、ほこりに触れると肌がかゆくなるという。（　　1　　）、掃除機も使えない。（　　2　　）、私が毎週休みの日に家の掃除をすることになる。私だってあんまりほこりがたまっていたら気になるから、しかたがないと思ってやっているんだ。（　　3　　）、妻はアレルギー体質と診断されたことは一度もない。', '', 4);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES
(4, '肌', '肌', 'はだ			da dẻ', 1),
(4, '掃除機', '掃除機', 'そうじき		máy hút bụi', 2),
(4, '掃除', '掃除', 'そうじ		dọn dẹp', 3),
(4, '体質', '体質', 'たいしつ		thể chất', 4);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (5, 'jpd316', 'Bài đọc 6', '', '人間が涙を流すのは、悲しいときだけではない。私たちは自然に目を閉じたり開いたりしている。それを「まばたき」と言う。そのまばたきをするたびに、涙が目の表面を流れているのだ。\nしかし、最近の調査によると、パソコンを長い時間使う人は、まばたきの回数が減って、涙の量が減ってしまう人が多いそうだ。そうすると目の表面がかわいて、目の病気になることもある。', '', 5);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (6, 'jpd316', 'Bài đọc 7', '', '火を使わず、温風も出さずに部屋を暖める話題の遠赤外線ヒーター。中でも最新型の「アッタメール」は、ほかの製品より暖かく、消費電力500Wと省エネ。室内に温度差ができないように暖めるので、顔だけ暖かく足元が寒いというようなことはありません。また空気も汚れません。電気代は9時間使って99円と経済的です。今なら申し込み順に100台までは35,000円とお得です。お早めにどうぞ。「アッタメール」で快適な冬を過ごしませんか。', '', 6);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (7, 'jpd316', 'Bài đọc 8', '', '現在、大都市では、夏の水不足が問題になっている。\nまた、農村部でも年によっては、雨不足が米や野菜など農産物に大きな影響を与えている。\nそこで、水不足問題を解決するために、人工的に雨を降らせる研究が進められている。\n雨をどうやって降らせるのか。\nごく小さい水や氷の粒が集まって空気中に浮かんでいるものが雲である。\n水分の多い厚い雲に飛行機を使ってドライアイスをまく。\nそうすると、空気の温度が下がり、雨が降るというわけだ。\n厚い雲の多い冬にダムの近くでそれを行うと効果的であるという結果も出た。\nまた、台風などが近づいてきたとき、まだ雲が海の上にあるうちに雨を降らせて、大雨による洪水の被害を小さくしようという研究も進んでいる。\nこの人工的に雨を降らせる方法が実現すれば都市の水不足や農業問題ばかりでなく、台風の被害などさまざまな対策に活用できるだろうと、各方面から期待が寄せられている。', 'Hiện tại, ở các thành phố lớn, đang xảy ra vấn đề thiếu nước vào mùa hè.\nNgoài ra, ngay cả vùng nông thôn cũng tuỳ vào từng năm, cũng bị ảnh hưởng lớn về mặt hàng nông sản như rau củ, lúa mì khi có tình trạng thiếu mưa.\nVì vậy, để giải quyết vấn đề thiếu nước, đang có những nghiên cứu mưa nhân tạo được tiến hành.\nLàm thế nào để tạo ra mưa.\nMây là những hạt nước cực nhỏ tụ lại và lơ lửng trong không khí\nNgười ta dùng máy bay để rải đá khô vào các đám mây có nhiều hơi nước.\nNếu làm theo cách đó thì nhiệt động không khí sẽ giảm, và sẽ có mưa rơi.\nĐã có kết quả rằng việc thực hiện 	ở gần đập nước vào mùa đông có nhiều mây dày nhiều hơi nước là có hiệu quả.\nNgoài ra, trong lúc mà cơn bão tiếp cận, có những biển mây phía trên để làm mưa, nghiên cứu để giảm thiệt hại lũ lụt do mưa lớn gây ra đang được tiến hành.\nPhương pháp tạo mưa nhân tạo này, nếu được thực hiện, không chỉ giúp giải quyết tình trạng thiếu nước ở đô thị và các vấn đề nông nghiệp mà còn có thể được ứng dụng vào nhiều biện pháp khác như giảm thiệt hại do bão, vì vậy đang nhận được nhiều kỳ vọng từ các phía.', 7);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (8, 'jpd316', 'Bài đọc 9', '', '先日、犬に引っ張られながら散歩している人を見かけた。きちんと教えれば飼い主に合わせて歩くようになるものだが、あの犬は教えられていないのだろう。\n犬は教えなければ勝手に行動する。散歩のとき、行きたい方向へ自由に行かせていると、①飼い主は自分の思い通りになると思い込んで、力いっぱい引っ張ってしまう。また、歩くのがいやになると途中で座り込んでしまったり、ほかの犬と出会ったとき、散歩していることを忘れて遊びたがったりする。②こんなことがないように、しつける必要がある。\nかわいいという気持ちは飼い主の自然の感情であり、いつもそばにいて面倒をみたいと思うものだ。だが、だれかそばにいないと落ち着けないとなると、犬もかわいそうだ。自立させることが必要だ。\n静かに留守番ができるようにしつけることにより、飼い主がどうしても出かけなければならないときに、安心してペット・ホテルに預けることもできる。どんな環境になっても自立できるようにしつけよう。③それが愛情であろう。\n人間と暮らすためには、我慢することが必要だということを教え、また、飼い主も社会のルールを守って犬と生活をしなければならない。\n犬が嫌いな人もいれば、アレルギーが起こる人もいる。他人に迷惑をかけないように心がけよう。④人間も犬も上手に暮らしていく方法を身につけてこそ、楽しく過ごせるのである\nせんじつ\n先日\nひっぱる\n引っ張る\nさんぽする\n散歩する\nみかける\n見かける\nきちんと\nかいぬし\n飼い主\n（に）あわせて\n（に）合わせて\nかってに\n勝手に\nこうどうする\n行動する\nほうこう\n方向\nじゆう\n自由\nおもいどおり\n思い通り\nあるく\n歩く\nいや\nとちゅう\n途中\nすわりこむ\n座り込む\nであう\n出会う\nわすれる\n忘れる\nあそぶ\n遊ぶ\nしぜん\n自然\nかんじょう\n感情\nめんどうをみる\n面倒をみる\nおちつく\n落ち着く\nかわいそう\nじりつする\n自立する\nるすばん\n留守番\nあんしんする\n安心する\nあずける\n預ける\nかんきょう\n環境\nあいじょう\n愛情\nにんげん\n人間\nくらす\n暮らす\nがまんする\n我慢する\nルール\nまもる\n守る\nアレルギー\nめいわくをかける\n迷惑をかける\nこころがける\n心がける\nひっぱる\n引っ張る\nめんどう\n面倒', '1\nbữa trước\n2\nlôi kéo\n3\ntản bộ, đi dạo\n4\nbắt gặp\n5\nđàng hoàng\n6\nchủ nuôi\n7\ncùng (với)\n8\ntự tiện\n9\nhành động\n10\nphương hướng\n11\ntự do\n12\ntheo như suy nghĩ\n13\nđi bộ\n14\nghét\n15\ngiữa chừng\n16\nngồi phịch xuống\n17\ngặp gỡ\n18\nquên\n19\nchơi\n20\ntự nhiên\n21\ncảm tình\n22\nchăm sóc\n23\nbình tĩnh\n24\ntội nghiệp\n25\ntự lập\n26\nvắng nhà\n27\nan tâm\n28\nkí gửi\n29\nhoàn cảnh, môi trường\n30\ntình yêu thương\n31\nloài người, con người\n32\nsống\n33\nchịu đựng\n34\nphép tắc\n35\ntuân thủ, giữ gìn\n36\ndị ứng\n37\nlàm phiền, quấy rầy\n38\nlưu tâm\n39\nKéo\n40\nPhiền hà', 8);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (9, 'jpd316', 'Bài đọc 10', '', '期末試験の代わりにレポートを提出してください。テーマは自由ですが、この講義に関係のあるものに限ります。A4用紙で5枚、読みにくいので手書きは受け付けません。締め切りは来週の金曜日午後5時です。事務に直接出してください。遅れたものは受け取りません。しかし理由がある場合に限り、受け取らないこともありません。', '', 9);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (10, 'jpd316', 'Bài đọc 11', '', 'A氏\nホームレスや貧しい人に対して「自己責任」という言葉が浴びせられるようになった。様々な意見があるが、この言葉が使われるようになったのはまだ最近のことだ。社会にゆとりがあって弱い立場の人を受け入れる気持ちがあった時代にはこんなことは言わなかった。個人が努力することも大切だが、仕事がなくて困っている人に対して「自己責任」だと言うだけでは何の解決にもならない。ただ絶望するだけだ。私たちの社会はいつからこんなに冷たくなってしまったのか。「自己責任」と言うとき私たちは自分たちには何の関係も責任もないと考える。だから見過ごしても心は痛まない。しかし普通に生きている人が突然酷い状況に陥ることもある。誰にもその可能性がある。病気の親の世話のために会社を辞めた若者がその後就職できなくなったそうだ。彼にも同じ言葉を投げかけられようか。人間は助け合うから人間なのだと思う。\nB氏\nテレビで生活保護の若者の生活を見たが、国からお金をもらって何もせずに暮らしていた。彼らがカラオケで一晩中歌っているのを見て税金の無駄だとはらがたった。時間があっても何かを勉強しようとしない。努力しないから結局肉体労働につくしかない。その仕事も熱心に探してはいなかった。ちょっと断られただけで次の会社に電話する気をなくしていた。仕事をする気がないようだ。景気が悪くなったら仕事は減る。年を取ったら肉体労働はできない。社会が悪いという人がいるが「自己責任」だと言いたくなる。もし保護がもらえなければホームレスになるしかない。厳しい状況は理解できるが、抜け出す努力が足りないのではないか。彼らにも多くのチャンスがあったはずだし現在でもまだやりようがあると思う。私から見るとホームレスは好きでホームレスをしているようにしか見えない。\n問1 ２人のホームレスや貧しい人たちに対する考えはどれか。\n1　両者とも助けるべき人と助けが必要じゃない人がいると考えている。\n2　２人とも個人の努力なしに解決できないと言っている。\n3　B氏は個人に責任がA氏は個人には全く責任がないと考えている。\n4　主にA氏は社会にB氏は個人に原因があると考えている。\n1.1234\n問2 本文の内容と合っているのはどれか。\n1　 ２人ともホームレスや貧しい人に対する解決策を述べていない。\n2　 ２人とも自分たちはこのような状態にはならいと考えている。\n3　 ２人とも努力しない人を助けたくないと考えている。\n4　２人ともホームレスや貧しい人にはチャンスがないと考えている。', '', 10);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (11, 'jpd316', 'Bài đọc 12', '', '最近「ワンコイン検診」をする病院があります。\nワンコインつまり5百円で簡単な健康診断ができます。\nこれは元々お金がないために病気の早期発見が遅れてしまう人のために考え出されたものでした。\n自分の体の気になる一部分だけを検査したい人が利用しています。\nほとんどの病院が予約をしなくても直ぐに検査できますから忙しい人にとっても便利です。\nどこかが悪い人だけでなく、健康を維持するために検査を続けている人もいます。\n症状によって受ける検査が違います。\nもし朝なかなか起きられない場合は貧血検査と心臓検査の2つを受け千円払うといいです。\n何といっても5百円は安いですから、気軽に受けられます。', 'Gần đây, có những dịch vụ kiểm tra sức khoẻ bằng 1 xu.\nVới 1 đồng xu tức là 500 yên thì bạn có thể kiểm tra sức khoẻ dễ dàng.\nCái này ban đầu đã được nghĩ ra/phát minh ra dành cho những người không phát hiện ra bệnh sớm vì họ không có tiền.\nDịch vụ này dành cho những người muốn kiểm tra sức khoẻ về một phần cơ thể mà họ quan tâm.\nĐối với người bận rộn thì dù không đặt trước lịch kiểm tra sức khoẻ ở bệnh viện họ cũng có thể kiểm tra ngay nên rất tiện lợi.\nKhông chỉ riêng người đang gặp vấn đề, mà cũng có những người đang tiếp tục kiểm tra để duy trì sức khoẻ.\nCó sự khác nhau về kết quả kiểm tra bạn nhận được tuỳ vào triệu chứng.\nNếu trường hợp vào buổi sáng bạn gặp khó khăn khi thức dậy, bạn phải trả 1000 yên cho 2 kiểm tra về tim và thiếu máu.', 11);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES
(11, '1. 検診', '1. 検診', 'けんしん: Khám bệnh', 1),
(11, '2. 健康診断', '2. 健康診断', 'けんこうしんだん: Kiểm tra sức khoẻ', 2),
(11, '3. 元々', '3. 元々', 'もともと: Vốn dĩ', 3),
(11, '4. 早期', '4. 早期', 'そうき: giai đoạn đầu', 4),
(11, '7. 一部分', '7. 一部分', 'いちぶぶん: một bộ phận/ một phần', 5),
(11, '10. 症状', '10. 症状', 'しょうじょう: triệu chứng bệnh', 6),
(11, '11. 貧血', '11. 貧血', 'ひんけつ: Thiếu máu', 7),
(11, '12.心臓', '12.心臓', 'しんぞう: Tim', 8);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (12, 'jpd316', 'Bài đọc 13', '', '新入生のみなさん、いよいよ大学生活始まりたね\nサークルはのぞいてみましたか\n気に入ったサークル、入ってみたいなと思うサークルはありましたか\n近くのカフェやレストランも、もうチェックしましたか', 'Xin chào các bạn tân sinh viên, cuối cùng thì cuộc sống đại học cũng bắt đầu\nCác bạn đã thấy các câu lạc bộ chưa\nCó câu lạc bộ nào mà bạn thích không, hay đã có câu lạc bộ nào mà bạn nghĩ muốn vào thử.\nCác bạn đã kiểm tra quán cà phê và nhà hàng gần đây chưa', 12);

INSERT INTO readings (id, course_id, title, title_jp, passage, passage_translation, sort_order)
VALUES (13, 'jpd316', 'Bài đọc 14', '', '昔は秋になると農家は次の年に畑にまく種を作るためにトウモロコシを軒先につり下げていた。\nしかし現在はほとんどの農家は種会社から種を買っている。\nその種のほうが自分で作った種よりもっとおいしかったり、病気に強かったり、もっと収穫できるからだ。\nしかしそれはハイブリッドと呼ばれる子孫ができない種なので、毎年買い続けなければならない。\n農家にとって、特に貧しいアジアの国の農家にとって、毎年種を買うのは大変なことだ。\nフィリピンでは「ハイブリッド種」に反対する農民同士が種の交換を始めた。\nバングラデシュでは「輸入ハイブリッド種」を買うことが国内の種研究者の反発を招いている。\nベトナムからはハイブリッドを使っても収穫量がわずかしか増えず、ハイブリッドは肥料がたくさん必要なので、結局利益はほとんど増えなかったという報告もある。\n世界のハイブリッド種のほとんどは欧米の会社が所有しているから、貧しい国からますますお金が吸い上げられていく問題もある。\nハイブリッド種が本当にいいのかどうかわからない。\nいいハイブリッド種もあるだろう。\nしかしいいとか悪いとかいう問題ではない。\n種を企業に握られていることこそが問題だ。\nそれも多くの場合、外国の企業に握られているのだ。\n売ってもらえなくなったり、急に値上がりしたりする恐れはないのだろうか。\n種から作物ができ、またそこから種ができ、命がつながっていく。これは自然なことだ。無理な話だとは思うが、そうできる良質な種を作ってもらいたいと思う。', '=> Ngày xưa, cứ hễ đến mùa thu, để tạo ra hạt giống gieo trồng trên ruộng vào năm sau thì người nhà nông/ nông dân đã treo bắp ngô ở hiên nhà.\n=> Tuy nhiên hiện nay thì người nông dân hầu như/ chủ yếu đang mua hạt giống từ các công ty hạt giống.\n=> Là vì năng suất cao hơn, có thể kháng bệnh tật mạnh hơn và ngon hơn hạt giống mà bản thân người nông dân tạo ra.\n=> Tuy nhiên vì hạt giống đó được gọi là dạng lai không thể sinh sản được nên mỗi năm phải tiếp tục mua.\n=> Theo/ đối với nhà nông/ nông dân, đặc biệt là các nông dân ở các nước Asia nghèo, gặp khó khăn khi mua hạt giống mỗi năm.\n=> Ở Philipines thì đã bắt đầu có sự giao lưu từ các nhóm nông dân phản đối hạt giống lai.\n=> Ở Bangladesh thì việc mua hạt giống lai được nhập khẩu đã gây ra phản đối từ các nhà nghiên cứu hạt giống trong nước.\n=> Từ Việt Nam thì dù sử dụng hạt cũng chỉ làm tăng sản lượng thu hoạch lên 1 ít, cũng có báo cáo rằng lợi ích cuối cùng hầu như không tăng, vì hạt lai cần rất nhiều phân bón.\n=> Vì trên thế giới hạt lai chủ yếu thuốc sở hữu của các công ty Âu Mỹ, cũng có vấn đề là tiền ngày càng bị mất/ bòn rút từ các nước nghèo\n=> Hạt lai có tốt hay không tôi cũng không chắc chắn.\n=> Tôi nghĩ có hạt lai tốt.\n=> Tuy nhiên, vấn đề không phải là tốt hay không tốt.\n=> Vấn đề là các hạt đang bị các xí nghiệp nắm.\n=> Cũng có nhiều trường hợp, xí nghiệp nước ngoài nắm.\n=> Tôi nghĩ không được bán, giá tăng bất ngờ không phải là mối lo ngại.', 13);

INSERT INTO reading_vocabularies (reading_id, word, reading, meaning, sort_order) VALUES
(13, '昔', '昔', 'むかし: hồi xưa, xưa, ngày xưa', 1),
(13, '秋', '秋', 'あき: mùa thu', 2),
(13, '畑', '畑', 'はたけ: ruộng đất', 3),
(13, '農家', '農家', 'のうか: nhà nông, nông dân', 4),
(13, '種', '種', 'たね: hạt giống', 5),
(13, '軒先', '軒先', 'のきさき: mái hiên', 6),
(13, '現在', '現在', 'げんざい: hiện tại, bây giờ', 7),
(13, '収穫', '収穫', 'しゅうかく: sự thu hoạch, kết quả đạt được, năng suất', 8),
(13, '子孫', '子孫', 'しそん: con cháu', 9),
(13, '輸入', '輸入', 'ゆにゅう: nhập khẩu', 10),
(13, '収穫', '収穫', 'しゅうかく: thu hoạch', 11),
(13, '肥料', '肥料', 'ひりょう: phân bón', 12),
(13, '欧米', '欧米', 'おうべい: Âu Mỹ', 13),
(13, '所有', '所有', 'しょゆう: sở hữu', 14),
(13, '企業', '企業', 'きぎょう: Công trường, xí nghiệp', 15);

