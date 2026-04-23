-- =============================================
-- V2: Seed data from courses.json
-- =============================================

INSERT INTO courses (id, name, name_jp, description, level, icon) VALUES ('jpd316', 'JPD316-FPT', 'JPD316', 'Khóa học tiếng Nhật JPD316 trình độ N3 tại FPT, khung chương trình học thuật.', 'N3', '📘');

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (101, 'jpd316', '[01] ～Vている (移動)', 'Vている (Kết quả chuyển động)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Diễn tả kết quả của hành động dịch chuyển (đang ở trạng thái sau khi đi/đến/về).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (101, '移動(いどう) (行く、来る、帰(かえ)る) + Vている', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (101, '今日(きょう)、私(わたし)は駅(えき)の前(まえ)のにできた新(あたら)しいデパートに来(き)ています。→ Hôm nay tôi đang có mặt ở trung tâm thương mại mới mở trước ga.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (101, 'キムさんは出張(しゅっちょう)のため、中国(ちゅうごく)に行(い)っています。→ Anh Kim đã sang Trung Quốc công tác (hiện đang ở đó).', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (101, 'なたポンさんは今(いま)、国(くに)へ帰(かえ)っていますから、パーティーに参加(さんか)できません。→ Anh Natapon đã về nước rồi nên không thể tham gia tiệc.', 2);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (102, 'jpd316', '[02] ～によって (Bị động)', 'によって (Bởi... - Tác nhân)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Bởi... (chỉ tác nhân thực hiện hành động, dùng cùng thể bị động).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (102, 'N + によって (đi cùng bị động)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (102, 'この建物(たてもの)は有名(ゆうめい)な建築家(けんちくか)によって設計(せっけい)されたそうです。→ Nghe nói tòa nhà này được thiết kế bởi kiến trúc sư nổi tiếng.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (102, 'そのウィルスは有名(ゆうめい)な研究者(けんきゅうしゃ)によって発見(はっけん)されました。→ Virus đó đã được phát hiện bởi nhà nghiên cứu nổi tiếng.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (103, 'jpd316', '[03] ～によって (Khác biệt)', 'によって (Tùy vào...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Tùy vào... (theo sau thường là từ thể hiện sự khác biệt: 違(ちが)う, 異(こと)なる, さまざま).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (103, 'N + によって + 違(ちが)う / 異(こと)なる / さまざま', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (103, '人(ひと)によって考(かんが)え方(かた)が違(ちが)います。→ Tùy mỗi người mà cách suy nghĩ khác nhau.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (103, '食事(しょくじ)のマナーは国(くに)によって異(こと)なります。→ Phép tắc ăn uống khác nhau tùy quốc gia.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (104, 'jpd316', '[04] ～によって (Nguyên nhân)', 'によって (Vì, do...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Vì, do... (diễn đạt nguyên nhân – mang tính trung lập).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (104, 'N + によって / により / による + N', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (104, '地震(じしん)によって、ビルが壊(こわ)れました。→ Vì động đất, tòa nhà bị hỏng.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (104, '津波(つなみ)によって、多(おお)くの人(ひと)が亡(な)くなりました。→ Do sóng thần, nhiều người đã thiệt mạng.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (105, 'jpd316', '[05] ～によって (Cách thức)', 'によって (Nhờ vào / Thông qua)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Nhờ vào, bằng, thông qua... (diễn đạt phương tiện, cách thức). Lưu ý: Không dùng với đồ dùng cá nhân hàng ngày.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (105, 'N + によって (cách thức)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (105, '友人(ゆうじん)の紹介(しょうかい)によって、ついに私(わたし)も仕事(しごと)を得(え)ることができた。→ Nhờ bạn giới thiệu, tôi đã có được việc làm.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (105, '合否(ごうひ)の結果(けっか)は後日(ごじつ)書面(しょめん)で連絡(れんらく)します。電話(でんわ)による問(と)い合(あ)わせはできません。→ Kết quả đỗ/trượt sẽ thông báo bằng văn bản sau. Không thể hỏi qua điện thoại.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (106, 'jpd316', '[06] ～うちに (Tranh thủ)', 'うちに (Tranh thủ lúc...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Tranh thủ trong lúc trạng thái chưa thay đổi để làm việc gì đó.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (106, 'V辞書 / Vない / Aい / Nの + うちに', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (106, '祖父(そふ)が元気(げんき)なうちに、家族(かぞく)みんなで旅行(りょこう)したい。→ Tranh thủ lúc ông còn khỏe, muốn đi du lịch cả gia đình.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (106, '温(あたた)かいうちに、召(め)し上(あ)がってください。→ Xin hãy ăn khi còn nóng.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (107, 'jpd316', '[07] ～うちに (Vô thức)', 'うちに (Trong lúc... dần dần)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Trong lúc đang làm việc này thì có sự thay đổi khác xảy ra (vô thức, không bao hàm ý chí).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (107, 'Vている / Vる + うちに', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (107, 'ピアノを練習(れんしゅう)しているうちに、上手(じょうず)になりました。→ Trong lúc luyện piano, dần dần tôi chơi giỏi lên.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (107, '本(ほん)を読(よ)んでいるうちに、眠(ねむ)くなります。→ Trong lúc đọc sách, dần dần buồn ngủ.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (108, 'jpd316', '[08] ～わりに', 'わりに (Mặc dù... nhưng)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Mặc dù... nhưng (khác với suy nghĩ hoặc mức độ thông thường). Không dùng khi chỉ có 2 kết quả rõ ràng.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (108, '普通形 / Aい / Aな / Nの + わりに', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (108, '毎日(まいにち)10時間(じかん)も勉強(べんきょう)したわりには、成績(せいせき)があまりよくなかった。→ Dù học tận 10 tiếng mỗi ngày, thành tích lại không tốt.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (108, 'このテストは勉強(べんきょう)しなかったわりに、よくできた。→ Dù không ôn nhưng làm bài khá tốt.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (109, 'jpd316', '[09] ～わりと', 'わりと (Khá là... / Tương đối)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Khá là... (dùng như phó từ nhấn mạnh mức độ).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (109, 'わりと + V / A', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (109, '今日(きょう)の試験(しけん)はわりと簡単(かんたん)だった。→ Bài thi hôm nay tương đối dễ.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (109, 'この料理(りょうり)はわりとおいしかった。→ Món ăn này khá ngon.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (110, 'jpd316', '[10] ～に限り (かぎり)', 'に限(かぎ)り (Chỉ dành cho...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Chỉ trong giới hạn / Chỉ dành riêng cho... (thường dùng trong thông báo).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (110, 'N + に限(かぎ)り', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (110, '18時前(じまえ)にご来店(らいてん)の方(かた)に限(かぎ)り、ビール1杯(いっぱい)サービス。→ Chỉ khách đến trước 18h, tặng 1 ly bia miễn phí.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (110, 'こちらへの応募(おうぼ)は、国内在住(こくないざいじゅう)の方(かた)に限(かぎ)ります。→ Ứng tuyển chỉ dành cho người sống trong nước.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (111, 'jpd316', '[11] ～に限って (かぎって)', 'に限(かぎ)って (Cứ hễ đúng lúc...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Cứ hễ đúng lúc quan trọng thì lại gặp chuyện không may.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (111, 'N + に限(かぎ)って', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (111, '僕(ぼく)が早(はや)く帰(かえ)るに限(かぎ)って、妻(つま)は残業(ざんぎょう)で帰(かえ)りが遅(おそ)い。→ Cứ hễ tôi về sớm thì vợ lại đúng lúc phải tăng ca nên về muộn.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (112, 'jpd316', '[12] ～に限る (かぎる)', 'に限(かぎ)る (...là nhất!)', 'Ngữ pháp', 'N3', 'Ý nghĩa: ...là tốt nhất, là số một (ý kiến chủ quan).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (112, 'N / Vる + に限(かぎ)る', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (112, '暑(あつ)いなあ。やっぱり夏(なつ)はつめたいビールに限(かぎ)る。→ Nóng quá. Đúng là mùa hè thì bia lạnh là tuyệt nhất.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (113, 'jpd316', '[13] ～こそ', 'こそ (Nhất định là / Chính là)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Dùng để nhấn mạnh rằng chính cái đó mới là quan trọng.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (113, 'N + こそ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (113, 'こちらこそよろしくお願(ねが)いします。→ Tôi mới là người xin hãy giúp đỡ.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (113, '今年(ことし)の夏(なつ)こそ海(うみ)に行(い)こう！→ Mùa hè năm nay nhất định đi biển!', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (114, 'jpd316', '[14] ～からこそ', 'からこそ (Chính vì...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Chính vì... (nhấn mạnh lý do dẫn đến kết quả).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (114, '普通形 + からこそ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (114, '留学(りゅうがく)したからこそ、自分(じぶん)の国(くに)のよさがわかるようになった。→ Chính vì đi du học nên tôi mới nhận ra cái hay của đất nước mình.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (114, '手伝(てつだ)ってくれたからこそ、仕事(しごと)が早(はや)く出来(でき)ました。→ Chính nhờ bạn giúp nên công việc xong sớm.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (115, 'jpd316', '[15] ～につき', 'につき (Bởi vì - Trang trọng)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Bởi vì... (dùng trong thông báo trang trọng, thư từ).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (115, 'N + につき', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (115, '閉店(へいてん)につき、大(だい)セール。→ Nhân dịp đóng cửa, giảm giá lớn.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (115, '改装中(かいそうちゅう)につきしばらくお休(やす)み。→ Đang sửa chữa nên tạm nghỉ.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (116, 'jpd316', '[16] ～ということだ (Nghĩa)', 'ということだ (Có nghĩa là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Có nghĩa là... (giải thích nội dung).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (116, '普通形 + ということだ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (116, '今(いま)からでは予約(よやく)できないということですね。→ Vậy có nghĩa là bây giờ không thể đặt chỗ phải không.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (116, 'このことわざの意味(いみ)は時間(じかん)を大切(たいせつ)にしないといけないということだ。→ Ý nghĩa câu tục ngữ này là phải trân trọng thời gian.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (117, 'jpd316', '[17] ～ということだ (Nghe nói)', 'ということだ (Nghe nói là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Nghe nói là... (truyền đạt lại thông tin).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (117, '普通形 + ということだ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (117, '来月(らいげつ)から値段(ねだん)が上(あ)がるということだ。→ Nghe nói từ tháng sau giá sẽ tăng.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (118, 'jpd316', '[18] ～でしょうか', 'でしょうか (Hỏi lịch sự)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Phải không? (cách hỏi lịch sự hơn ですか).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (118, '普通形 + でしょうか', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (118, '会員(かいいん)カードはお持(も)ちでしょうか。→ Quý khách có mang theo thẻ thành viên không ạ?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (119, 'jpd316', '[19] ～はずだ', 'はずだ (Chắc chắn là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Diễn tả phán đoán có căn cứ chắc chắn.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (119, '普通形 (Aな/Nの) + はずだ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (119, '行(い)きたいって言(い)っていたから、来(く)るはずだよ。→ Vì đã nói muốn đi, chắc chắn cậu ấy sẽ tới.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (119, 'どんなに長(なが)い日(ひ)でも、終(お)わりがあるはずだ。→ Dù ngày có dài đến đâu cũng sẽ kết thúc.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (120, 'jpd316', '[20] ～向け (むけ)', '向(む)け (Dành cho / Hướng tới)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Thiết kế đặc biệt hướng tới đối tượng nào đó.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (120, 'N + 向(む)けの N / 向(む)けに', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (120, 'この辞書(じしょ)は小学生(しょうがくせい)向(む)けです。→ Từ điển này dành cho học sinh tiểu học.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (120, '一人暮(ひとりぐ)らし向(む)けの家電(かでん)は種類(しゅるい)が多(おお)い。→ Đồ gia dụng dành cho người sống 1 mình có rất nhiều loại.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (121, 'jpd316', '[21] ～向き (むき)', '向(む)き (Phù hợp cho...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Đánh giá chung chung rằng đối tượng nào đó phù hợp.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (121, 'N + 向(む)き', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (121, 'この部屋(へや)は日当(ひあ)たりがよくて、一人暮(ひとりぐ)らし向(む)きだ。→ Phòng này nắng tốt, phù hợp cho sống một mình.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (122, 'jpd316', '[22] ～はずがない', 'はずがない (Chắc chắn không)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Chắc chắn không có chuyện đó, không thể nào (phán đoán chủ quan mạnh mẽ).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (122, '普通形 (Aな/Nの) + はずがない', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (122, 'Aさんは勉強(べんきょう)も仕事(しごと)も忙(いそが)しいので、他(ほか)のことはできるはずがない。→ A bận học lẫn làm, chắc chắn không thể rảnh làm việc khác.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (123, 'jpd316', '[23] ～（ば）～ほど', 'ば～ほど (Càng... càng...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Mức độ vế trước tăng thì vế sau cũng tăng theo.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (123, 'Vば Vるほど', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (123, 'Aければ Aいほど', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (123, '朝(あさ)は早(はや)ければ早(はや)いほど空気(くうき)がきれい。→ Buổi sáng càng sớm thì không khí càng trong lành.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (123, '旅行(りょこう)に行(い)くときは、荷物(にもつ)は軽(かる)いほどいい。→ Đi du lịch thì hành lý càng nhẹ càng tốt.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (124, 'jpd316', '[24] ～なんて', 'なんて (Ngạc nhiên / Không ngờ)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Ví dụ như... / Ngạc nhiên / Coi thường điều gì đó.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (124, '普通形 + なんて', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (124, '朝(あさ)は寝(ね)ているだけだなんて、もったいないと思(おも)いませんか。→ Buổi sáng mà chỉ ngủ thôi thì chẳng phải là quá phí sao?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (125, 'jpd316', '[25] ～でも', 'でも (Gì đó như... / Gợi ý)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Những thứ như là... (đưa ra gợi ý nhẹ nhàng, tượng trưng trong nhóm).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (125, 'N (+助詞(じょし)) + でも', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (125, '明日(あした)からでも自分(じぶん)に合(あ)った活動(かつどう)を始(はじ)めてみましょう。→ Ngay từ ngày mai thôi hãy bắt đầu hoạt động phù hợp.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (125, 'コーヒーでも飲(の)みましょう。→ Cùng uống cà phê hay gì đó nhé.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (126, 'jpd316', '[26] こんな/そんな/あんな', 'こんな・そんな・あんな (Như thế)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Như thế này / đó / kia (nêu ví dụ hoặc chỉ đối tượng).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (126, 'こんな / そんな / あんな + N', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (126, 'あんなおいしい料理(りょうり)、なかなか他(ほか)では食(た)べられないよね。→ Món ngon như thế thì ở nơi khác khó mà ăn được.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (126, 'そんな名前(なまえ)の人(ひと)、いた？→ Cái tên như thế cũng có nữa hả?', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (127, 'jpd316', '[27] ～ふうに', 'ふうに (Theo cách / Theo kiểu)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Theo cách / Theo kiểu (Làm như thế này...).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (127, 'こんな / そんな / あんな / どんな + ふうに', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (127, 'こんなふうにすればいいんですよ。→ Làm theo kiểu thế này là được đấy.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (127, 'どういうふうに説明(せつめい)すれば、子供(こども)にもわかりやすいだろう。→ Giải thích kiểu nào thì trẻ con dễ hiểu nhỉ?', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (128, 'jpd316', '[28] ～ことで', 'ことで (Bằng việc / Nhờ việc)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Bằng việc làm gì đó... (diễn đạt phương pháp, thường kết quả tích cực).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (128, 'Vる + ことで', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (128, '毎朝(まいあさ)、家(いえ)を出(で)る時間(じかん)を10分(ぷん)早(はや)くしたことで、気持(きも)ちにも安心(あんしん)ができた。→ Nhờ ra khỏi nhà sớm 10 phút mỗi sáng, tôi cảm thấy an tâm hơn.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (128, '寝(ね)る前(まえ)に日記(にっき)を書(か)くことで、毎日(まいにち)の生活(せいかつ)を見直(みなお)しています。→ Bằng việc viết nhật ký trước khi ngủ, tôi xem lại cách sống.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (129, 'jpd316', '[29] ～なあ', 'なあ (Cảm thán)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Bộc lộ cảm xúc, suy nghĩ (ngạc nhiên, ngưỡng mộ).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (129, '普通形 + なあ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (129, 'いいなあ。えがじょうずで。→ Tuyệt thế! Bạn vẽ giỏi thật.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (130, 'jpd316', '[30] ～ことがある / ～こともある', 'ことがある (Thỉnh thoảng)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Thỉnh thoảng có khi xảy ra việc gì đó (không phải lúc nào cũng thế).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (130, 'Vる / Vない + ことがある / こともある', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (130, '最近(さいきん)手紙(てがみ)をかくことがありますか。→ Dạo này bạn có hay viết thư tay không?', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (130, 'たまにねぼうして見(み)ないこともあります。→ Thỉnh thoảng ngủ quên nên cũng có khi không xem.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (131, 'jpd316', '[31] ～にとって', 'にとって (Đối với... - Quan điểm)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Xét theo lập trường, góc nhìn của đối tượng nào đó.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (131, 'N + にとって', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (131, '私(わたし)にとって本(ほん)を読(よ)むための貴重(きちょう)な時間(じかん)です。→ Đối với tôi đó là thời gian quý báu để đọc sách.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (131, '忙(いそが)しい人(ひと)にとって24時間(じかん)開(あ)いているスーパーは便利(べんり)です。→ Đối với người bận thì siêu thị 24h rất tiện lợi.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (132, 'jpd316', '[32] ～に対して (Đối lập)', 'に対(たい)して (Trái ngược với...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Diễn tả sự đối lập, trái ngược nhau giữa hai đối tượng.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (132, 'N + に対(たい)して / に対(たい)する + N', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (132, '兄(あに)がスポーツ好(ず)きなのに対(たい)して、弟(おとうと)はインドア派(は)だ。→ Anh trai thích thể thao, trái lại em trai thích ở nhà.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (133, 'jpd316', '[33] ～に対して (Thái độ)', 'に対(たい)して (Đối với - Hướng tới)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Hướng hành động hoặc thái độ tới một đối tượng cụ thể.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (133, 'N + に対(たい)して', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (133, '会社人(かいしゃじん)になると自分(じぶん)の発言(はつげん)に対(たい)して責任(せきにん)を持(も)たなくてはいけない。→ Khi đi làm phải chịu trách nhiệm với lời nói của mình.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (133, '先生(せんせい)は私(わたし)の質問(しつもん)に対(たい)して、なにも答(こた)えてくれなかった。→ Giáo viên đã không trả lời gì đối với câu hỏi của tôi.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (134, 'jpd316', '[34] ～ことだし', 'ことだし (Vì... nên...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Vì... (đưa ra một trong nhiều lý do) mà cũng... nên quyết định thế.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (134, '普通形 (Aな/N) + ことだし', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (134, '天気(てんき)もいいことだし、散歩(さんぽ)にでも行(い)こうか。→ Trời cũng đẹp, hay đi dạo đi.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (134, 'せっかくの休(やす)みのことだし、どこかに遊(あそ)びに行(い)こう。→ Vì cũng hiếm khi được nghỉ, đi chơi đâu đó đi.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (135, 'jpd316', '[35] ～てくれない？', 'てくれない？ (Làm giúp được không?)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Làm V giúp tôi được không? (cách nói thân mật).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (135, 'Vて + くれない？', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (135, '筆箱(ふでばこ)忘(わす)れちゃったんだ。悪(わる)いけど、ペン貸(か)してくれない？→ Tôi quên hộp bút rồi, xin lỗi, cho mượn bút được không?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (136, 'jpd316', '[36] ～じゃない？/ んじゃない？', 'じゃない？ (Chẳng phải... sao?)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Chẳng phải... sao? / Có lẽ... nhỉ? (xác nhận lại suy nghĩ).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (136, 'Aな / N + (なん)じゃない？', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (136, 'Aい / V普通形 + んじゃない？', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (136, '田中(たなか)くん、昨日(きのう)の晩(ばん)風邪(かぜ)引(ひ)いて熱(ねつ)があったみたいだから、今日(きょう)は学校(がっこう)休(やす)むんじゃない？→ Tanaka, hình như tối qua bị cảm sốt, hôm nay chắc nghỉ học phải không?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (137, 'jpd316', '[37] お・ご～です / でしょう', 'お・ご〜です (Tôn kính ngữ)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Cách nói tôn kính, lịch sự cao. お thường trước từ Nhật, ご trước từ Hán.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (137, 'お + V(ます) + です / でしょう', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (137, 'ご + N + です / でしょう', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (137, 'お箸(はし)をご利用(りよう)ですか？→ Quý khách có dùng đũa không ạ?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (138, 'jpd316', '[38] ～場合 (ばあい)', '場合(ばあい) (Trong trường hợp...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Trong trường hợp xảy ra chuyện gì. Chỉ là giả định nhưng có khả năng xảy ra. Khác với たら (không dùng cho điều không có thực) và 時 (không dùng cho quá khứ đã xảy ra).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (138, 'V普通形 / Aい / Aな / Nの + 場合(ばあい)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (138, 'パスワードを3回(かい)間違(まちが)えた場合(ばあい)、新(あたら)しいパスワードの登録(とうろく)が必要(ひつよう)です。→ Trường hợp nhập sai mật khẩu 3 lần thì cần đăng ký mật khẩu mới.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (138, '雨(あめ)の場合(ばあい)、運動会(うんどうかい)は中止(ちゅうし)になります。→ Trường hợp trời mưa, hội thể thao bị hủy.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (139, 'jpd316', '[39] ～ないことには～ない', 'ないことには～ない (Nếu không... thì không thể)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Nếu không / nếu chưa... thì không thể... (điều kiện cần thiết).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (139, 'Vない / Aくない / Aでない / Nでない + ことには～ない', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (139, '靴(くつ)は実際(じっさい)にはいてみないことには、サイズが合(あ)うかどうかわかりません。→ Nếu không mang giày thử thì không biết vừa size không.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (139, '経験者(けいけんしゃ)でないことには、この仕事(しごと)をうまくやることはできないだろう。→ Nếu không có kinh nghiệm thì chắc không thể làm tốt.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (139, '会(あ)ってみないことには、本当(ほんとう)にいい人(ひと)かどうかわからない。→ Nếu không gặp thử thì không biết có tốt hay không.', 2);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (140, 'jpd316', '[40] ～ことになっています', 'ことになっています (Được quy định là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Được quy định là... / Theo luật là... (nội quy, quy tắc chung).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (140, 'Vる + ことになっています', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (140, 'ここでは靴(くつ)を脱(ぬ)ぐことになっています。→ Ở đây theo quy định phải cởi giày.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (140, 'この会社(かいしゃ)では毎朝(まいあさ)ラジオ体操(たいそう)をすることになっています。→ Ở công ty này, theo quy định phải tập thể dục buổi sáng.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (141, 'jpd316', '[41] ～で結構です / かまいません', 'で結構(けっこう)です (Được rồi / Không sao)', 'Ngữ pháp', 'N3', 'Ý nghĩa: ...là được rồi / không sao cả.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (141, 'N + で結構(けっこう)です', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (141, 'N + でかまいません', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (141, 'コピーで結構(けっこう)です。→ Bản photo là được rồi.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (141, '日本語(にほんご)でかまいません。→ Dùng tiếng Nhật cũng được.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (142, 'jpd316', '[42] Vたいことがあるんですが', 'たいことがあるんですが (Tôi muốn nhờ/hỏi...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Tôi có việc muốn (hỏi/nhờ)... (mở đầu câu chuyện, ấp úng).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (142, 'Vたい + ことがあるんですが', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (142, 'あのう、お願(ねが)いしたいことがあるんですが。→ Xin lỗi, tôi có chuyện muốn nhờ ạ...', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (142, 'すみません。ちょっとお伺(うかが)いしたいことがあるんですが。→ Xin lỗi, tôi muốn hỏi 1 chút ạ.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (143, 'jpd316', '[43] ～(よ)うとする', 'ようとする (Định / Sắp làm)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Định / Sắp thực hiện hành động trong tích tắc (thường bị xen ngang).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (143, 'V(ý chí) + とする', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (143, '部屋(へや)に入(はい)ろうとした時(とき)、管理人(かんりにん)さんに声(こえ)をかけられました。→ Vừa định vào phòng thì bị quản lý gọi lại.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (143, '忘(わす)れようとしても忘(わす)れない思(おも)い出(で)がある。→ Có ký ức dù muốn quên nhưng không thể.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (144, 'jpd316', '[44] ～みたい/ようなんですが', 'みたいなんですが (Hình như...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Hình như là... (phán đoán lịch sự, mềm mỏng, thường nhờ vả khéo léo).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (144, '普通形 + みたいなんですが / ようなんですが', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (144, '雨(あめ)が降(ふ)るみたいなんですが。→ Hình như trời sắp mưa.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (144, 'パスワードが違(ちが)うみたいなんですが。→ Hình như sai mật khẩu rồi.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (145, 'jpd316', '[45] Vていただきたいんですが', 'ていただきたいんですが (Xin hãy giúp...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Tôi muốn được bạn giúp làm V (trang trọng, nhờ vả lịch sự).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (145, 'Vて + いただきたいんですが', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (145, 'このお知(し)らせがわからないので、教(おし)えていただきたいんですが。→ Vì tôi không hiểu thông báo này, xin anh giải thích giúp được không ạ?', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (146, 'jpd316', '[46] ～には', 'には (Để mà... thì cần)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Để đạt được mục tiêu A thì cần phải làm B.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (146, 'V辞書 + には', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (146, 'JPD316に合格(ごうかく)するにはもっと勉強(べんきょう)するべきだ。→ Để đỗ JPD316 thì cần phải học nhiều hơn.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (147, 'jpd316', '[47] ～にかかわらず / なく', 'にかかわらず (Bất kể...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Bất kể ~ thế nào thì vẫn / Không liên quan đến điều trước.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (147, 'N / Vる / Aい / Aな + にかかわらず', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (147, '天気(てんき)にかかわらず、試合(しあい)はおこなわれます。→ Bất kể thời tiết, trận đấu vẫn diễn ra.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (147, '年齢(ねんれい)にかかわらず、応募(おうぼ)できます。→ Không phân biệt tuổi tác, ai cũng ứng tuyển được.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (148, 'jpd316', '[48] ～次第 (しだい)', '次第(しだい) (Ngay sau khi...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Ngay sau khi xong V thì sẽ làm ngay việc tiếp theo. Không dùng quá khứ.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (148, 'V(bỏ ます) + 次第(しだい)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (148, '来週(らいしゅう)の予定(よてい)が決(き)まり次第(しだい)、すぐお知(し)らせします。→ Ngay khi lịch chốt xong tôi sẽ thông báo.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (148, '定員(ていいん)になり次第(しだい)、受付(うけつけ)を終了(しゅうりょう)します。→ Ngay khi đủ số lượng, đóng đăng ký.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (149, 'jpd316', '[49] ～途中 (で/に)', '途中(とちゅう) (Giữa chừng)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Giữa chừng khi đang làm gì đó. 途中(とちゅう)で: sau là hành động. 途中(とちゅう)に: sau là sự hiện hữu (ある).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (149, 'Vる / Nの + 途中(とちゅう)', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (149, '昨日(きのう)バイトに行(い)く途中(とちゅう)で、偶然(ぐうぜん)山田(やまだ)先生(せんせい)と会(あ)いました。→ Đang trên đường đi làm thì tình cờ gặp thầy Yamada.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (149, '駅(えき)から家(いえ)に帰(かえ)る途中(とちゅう)に図書館(としょかん)がある。→ Giữa đường từ ga về nhà có thư viện.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (150, 'jpd316', '[50] ～として', 'として (Với tư cách / Xem như)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Với tư cách là / Xem N1 như là N2.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (150, 'N1 を N2 として', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (150, '小学校(しょうがっこう)だった建物(たてもの)を公民館(こうみんかん)として利用(りよう)している。→ Dùng tòa nhà tiểu học cũ làm nhà văn hóa.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (150, '試験(しけん)の合格(ごうかく)を目標(もくひょう)として勉強(べんきょう)した。→ Lấy việc thi đỗ làm mục tiêu học tập.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (151, 'jpd316', '[51] ～を背にして (せにして)', 'を背(せ)にして (Quay lưng về phía...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Lấy N làm mốc ở sau lưng, quay lưng về phía.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (151, 'N + を背(せ)にして', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (151, '正面(しょうめん)入(い)り口(ぐち)を背(せ)にして、左斜(ひだりなな)め前(まえ)にあるビルが郵便局(ゆうびんきょく)です。→ Quay lưng về cửa chính, chếch trái phía trước là bưu điện.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (151, '白(しろ)い壁(かべ)をせにして立(た)ってください。→ Hãy đứng quay lưng vào tường trắng.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (152, 'jpd316', '[52] ～に沿って (そって)', 'に沿(そ)って (Dọc theo / Dựa theo)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Men dọc theo (sông, đường) hoặc dựa theo kế hoạch, phương châm.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (152, 'N + に沿(そ)って / に沿(そ)う / に沿(そ)った', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (152, '線路(せんろ)に沿(そ)って、桜(さくら)の木(き)が植(う)えてあります。→ Dọc theo đường ray có trồng cây hoa anh đào.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (152, '方針(ほうしん)に沿(そ)って、仕事(しごと)を進(すす)めてください。→ Hãy bám sát phương châm để làm việc.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (153, 'jpd316', '[53] ～おそれがある', 'おそれがある (E rằng / Sợ là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: E là sẽ có kết quả tồi tệ xảy ra (dùng trong cảnh báo, tin tức).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (153, 'Vる / Nの + おそれがある', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (153, '戦争(せんそう)が起(お)こるおそれがあります。→ E là chiến tranh sẽ nổ ra.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (153, 'この会社(かいしゃ)は倒産(とうさん)のおそれがある。→ Có nguy cơ công ty này phá sản.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (154, 'jpd316', '[54] ～そうにない', 'そうにない (Có vẻ không thể...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Không nghĩ là sẽ xảy ra, có vẻ không thể làm được.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (154, 'V(bỏ ます) + そうにない', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (154, 'この仕事(しごと)は明日(あした)までに終(お)わりそうにない。→ Có vẻ công việc này khó xong trước ngày mai.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (154, '一人(ひとり)の力(ちから)ではできそうにない。→ Một mình thì có vẻ không làm được.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (155, 'jpd316', '[55] ～ところ', 'ところ (Sắp / Đang / Vừa mới)', 'Ngữ pháp', 'N3', 'Ý nghĩa tổng hợp:
Vるところ: Chuẩn bị / Sắp làm.
Vているところ: Đang làm giữa chừng.
Vたところ: Vừa mới làm xong.
Vる/ないところだった: Suýt chút nữa thì...
Vところに: Đúng lúc (ai đó đến).
Vところを: Đang lúc (bị phát hiện).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (155, 'Động từ (các thể) + ところ', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, 'これから出(で)かけるところだ。→ Tôi chuẩn bị ra ngoài.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, '今(いま)ご飯(はん)を食(た)べているところです。→ Đang ăn cơm.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, '今(いま)帰(かえ)ったところです。→ Vừa mới về.', 2);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, 'もう少(すこ)しで事故(じこ)になるところだった。→ Suýt nữa thì xảy ra tai nạn.', 3);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, '出(で)かけようとしたところに、客(きゃく)がやってきた。→ Đúng lúc định đi thì khách đến.', 4);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (155, 'こっそりタバコを吸(す)っているところを、父(ちち)に見(み)つかった。→ Đang lén hút thuốc thì bị bố phát hiện.', 5);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (156, 'jpd316', '[56] ～ものだ', 'ものだ (Đạo lý / Hiển nhiên)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Vốn dĩ là, nên là... (chỉ điều hiển nhiên / chuẩn mực / lời khuyên mạnh). Cũng dùng với Vた cho hồi ức (Hồi đó...), và cho cảm thán (Thật là...).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (156, '普通形 + ものだ / ものではない', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (156, '若(わか)い人(ひと)はお年寄(としよ)りに席(せき)を譲(ゆず)るものだ。→ Người trẻ nên nhường ghế cho người già.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (156, '学生(がくせい)のころはよくこの店(みせ)でラーメンを食(た)べたものだ。→ Hồi sinh viên hay ăn ramen ở quán này.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (156, '時間(じかん)がたつのは早(はや)いものだ。→ Thời gian trôi nhanh thật.', 2);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (157, 'jpd316', '[57] ～ことだ', 'ことだ (Lời khuyên / Cảm thán)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Lời khuyên thiết thực (Nên / Không nên). Cũng dùng cho cảm thán.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (157, 'Vる / Vない + ことだ', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (157, 'N / A + ことだ (cảm thán)', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (157, '疲(つか)れているなら早(はや)く寝(ね)ることだ。→ Mệt thì nên ngủ sớm.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (157, 'もっと勉強(べんきょう)することだ。→ Nên học nhiều hơn.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (157, 'そんな良(よ)いチャンスを逃(のが)すのはとてももったいないことだ。→ Bỏ lỡ cơ hội tốt thế thật đáng tiếc.', 2);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (158, 'jpd316', '[58] ～だらけ / まみれ', 'だらけ / まみれ (Đầy / Toàn là...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: だらけ: Đầy toàn là (tiêu cực, bề mặt). まみれ: Dính đầy một lớp (bùn, máu).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (158, 'N + だらけ', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (158, 'N + まみれ', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (158, 'このレポートは間違(まちが)いだらけで読(よ)みにくい。→ Bài luận toàn lỗi sai đọc khó lắm.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (158, '息子(むすこ)が泥(どろ)まみれになって帰(かえ)ってきた。→ Con trai dính đầy bùn về nhà.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (159, 'jpd316', '[59] ～とか（で）', 'とかで (Nghe nói là / Hình như)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Truyền đạt thông tin nghe loáng thoáng, không rõ ràng.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (159, '普通形 + とか（で）', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (159, '風邪(かぜ)を引(ひ)いたとかで、さとうさんは今日(きょう)仕事(しごと)を休(やす)んだ。→ Nghe nói bị cảm, Satou nghỉ làm hôm nay.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (159, '今度(こんど)の試験(しけん)はかなり難(むずか)しいとかで。→ Nghe nói kỳ thi tới khó lắm.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (160, 'jpd316', '[60] ～てしまったようなんです', 'てしまったようなんです (Hình như đã lỡ...)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Trình bày sự việc nuối tiếc nhưng nói giảm nói tránh.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (160, 'Vてしまった + ようなんです', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (160, '財布(さいふ)をなくしてしまったようなんです。→ Có vẻ tôi đã lỡ làm mất ví tiền rồi.', 0);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (161, 'jpd316', '[61] ～ところが / ところで', 'ところが / ところで (Nhưng mà / Nhân tiện)', 'Ngữ pháp', 'N3', 'ところが: Nhưng mà (kết quả trái với dự đoán).
ところで: Nhân tiện, đổi chủ đề.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (161, '〜ところが、〜', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (161, '〜ところで、〜', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (161, '行(い)くつもりだった。ところが、病気(びょうき)でいけなくなった。→ Định đi nhưng bị ốm.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (161, 'もうすぐ今年(ことし)も終(お)わりですね。ところで、お正月(しょうがつ)はどうなさいますか。→ Sắp hết năm rồi nhỉ. Nhân tiện, năm mới bạn làm gì?', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (162, 'jpd316', '[62] ～につれて', 'につれて (Càng... càng - Song hành)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Cùng với sự phát triển A, B cũng thay đổi theo.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (162, 'Vる / N + につれて', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (162, 'お金持(かねも)ちになるにつれて、彼(かれ)はますます欲深(よくぶか)くなった。→ Càng giàu lên, anh ta càng tham lam.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (162, '街(まち)の発展(はってん)につれて、自然(しぜん)が少(すく)なくなった。→ Thành phố phát triển dần thì tự nhiên ít đi.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (163, 'jpd316', '[63] ～通り / どおり', '通(とお)り (Theo đúng như)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Làm đúng theo, giống như bước trước đó.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (163, 'Vる / Vた / Nの + とおり', 0);
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (163, 'N + どおり', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (163, '説明(せつめい)した通(とお)りにやってください。→ Hãy làm đúng như đã giải thích.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (163, '指示(しじ)通(どお)り、すみやかに行動(こうどう)してください。→ Hành động theo đúng chỉ dẫn.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (164, 'jpd316', '[64] ～際 (さい)', '際(さい) (Khi / Trong trường hợp)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Khi / Lúc (dùng trong tình huống trang trọng, thông báo).');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (164, 'Vる / Vた / Nの + 際(さい)（に）', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (164, '避難(ひなん)の際(さい)は決(けっ)してエレベーターを使用(しよう)しないでください。→ Khi sơ tán, tuyệt đối không dùng thang máy.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (164, '海外(かいがい)へ行(い)く際(さい)には、パスポートを忘(わす)れないでください。→ Khi ra nước ngoài, đừng quên hộ chiếu.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (165, 'jpd316', '[65] ～まま', 'まま (Để nguyên / Giữ nguyên)', 'Ngữ pháp', 'N3', 'Ý nghĩa: Cứ giữ nguyên trạng thái mà tiến hành tiếp.');
INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (165, 'Vた / Vない / Aい / Nの + まま', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (165, '思(おも)ったままの気持(きも)ちや感想(かんそう)をお伝(つた)えします。→ Truyền đạt y nguyên những gì mình nghĩ và cảm nhận.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (165, '見(み)たまま感(かん)じたままに描(えが)く。→ Vẽ y nguyên những gì thấy và cảm nhận.', 1);

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (301, 'jpd316', '[Từ vựng B2-B3] Mua sắm & Đời sống', '買い物(かいもの)・日常生活(にちじょうせいかつ)', 'Từ vựng', 'N3', 'Tổng hợp 75 từ vựng theo chủ đề của chương trình JPD316.');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '品物', 'しなもの', 'Hàng hóa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '品', 'しな', 'Đồ, hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '手に入れる', 'てにいれる', 'Có được trong tay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'お買い得', 'おかいどく', 'Mua được giá hời');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'お買い上げ', 'おかいあげ', 'Việc mua hàng (kính ngữ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '次回', 'じかい', 'Lần sau');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '来店', 'らいてん', 'Đến cửa hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '開店', 'かいてん', 'Mở cửa hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '閉店', 'へいてん', 'Đóng cửa hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '応募する', 'おぼうする', 'Ứng tuyển / Đăng ký tham gia');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '国内', 'こくない', 'Trong nước');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '国外', 'こくがい', 'Ngoài nước');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '在住する', 'ざいじゅうする', 'Cư trú / Sinh sống tại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '駐車', 'ちゅうしゃ', 'Đỗ xe');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '看板', 'かんばん', 'Bảng hiệu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '失敗', 'しっぱい', 'Thất bại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '袋', 'ふくろ', 'Cái túi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '手袋', 'てぶくろ', 'Găng tay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '福袋', 'ふくぶくろ', 'Túi may mắn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '中身', 'なかみ', 'Nội dung / Bên trong');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '振り仮名', 'ふりがな', 'Chữ phiên âm cách đọc Kanji');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '家電', 'かでん', 'Đồ điện gia dụng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '雑誌', 'ざっし', 'Tạp chí');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '全然', 'ぜんぜん', 'Hoàn toàn không');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '交換', 'こうかん', 'Trao đổi / Đổi trả');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '並ぶ', 'ならぶ', 'Xếp hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '描く', 'かく', 'Vẽ / Miêu tả');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '種類', 'しゅるい', 'Chủng loại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '暮らす', 'くらす', 'Sinh sống');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '一人暮らし', 'ひとりぐらし', 'Sống một mình');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '経験', 'けいけん', 'Kinh nghiệm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '行列', 'ぎょうれつ', 'Hàng người xếp hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '評判', 'ひょうばん', 'Đánh giá / Có tiếng tăm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '加わる', 'くわわる', 'Gia nhập / Thêm vào (tự)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '加える', 'くわえる', 'Thêm vào (tha)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '追加する', 'ついかする', 'Thêm vào / Bổ sung');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '安心感', 'あんしんかん', 'Cảm giác an tâm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '繋がる', 'つながる', 'Kết nối / Liên hệ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '関西', 'かんさい', 'Vùng Kansai');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '関東', 'かんとう', 'Vùng Kanto');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '印象', 'いんしょう', 'Ấn tượng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '拒否する', 'きょひする', 'Cự tuyệt / Bác bỏ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '舌', 'した', 'Cái lưỡi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '番組', 'ばんぐみ', 'Chương trình (TV/Radio)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '好み', 'このみ', 'Sở thích / Gu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '異なる', 'ことなる', 'Khác biệt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'アナウンサー', '', 'Phát thanh viên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'マナー', '', 'Quy tắc / Phép lịch sự');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'シェフ', '', 'Đầu bếp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'リポーター', '', 'Phóng viên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'メイン', '', 'Chính / Chủ yếu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '試着', 'しちゃく', 'Mặc thử đồ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '到着', 'とうちゃく', 'Đến nơi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '先着', 'せんちゃく', 'Đến trước (ưu tiên)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '着る', 'きる', 'Mặc (áo)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '着く', 'つく', 'Đến nơi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '裾', 'すそ', 'Gấu quần / Lai quần');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '受け取る', 'うけとる', 'Nhận lấy / Tiếp nhận');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '以降', 'いこう', 'Từ sau đó trở đi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '家具', 'かぐ', 'Nội thất');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '組み立てる', 'くみたてる', 'Lắp ráp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '延期する', 'えんきする', 'Trì hoãn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '延長する', 'えんちょうする', 'Kéo dài (thời gian)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '靴', 'くつ', 'Giày');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'あいにく', '', 'Thật không may / Đáng tiếc là');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'キャンセルする', '', 'Hủy bỏ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '取り消す', 'とりけす', 'Xóa bỏ / Hủy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '中止する', 'ちゅうしする', 'Chấm dứt / Dừng lại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '特別料金', 'とくべつりょうきん', 'Giá đặc biệt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '修理', 'しゅうり', 'Sửa chữa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'エピソード集', 'しゅう', 'Tập các câu chuyện / Episode');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'ブランド', '', 'Thương hiệu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, 'フリーサイズ', '', 'Kích cỡ tự do (Free size)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '壮麗', 'そうれい', 'Tráng lệ / Lộng lẫy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (301, '組合', 'くみあい', 'Sự kết hợp / Hiệp hội');

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (302, 'jpd316', '[Từ vựng B4] Công việc & Thời gian', '仕事(しごと)・時間管理(じかんかんり)', 'Từ vựng', 'N3', 'Tổng hợp 62 từ vựng theo chủ đề của chương trình JPD316.');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '有効', 'ゆうこう', 'Hiệu lực / Hữu hiệu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '記事', 'きじ', 'Bài báo / Bài viết');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '朝活', 'あさかつ', 'Hoạt động buổi sáng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '解消する', 'かいしょうする', 'Giải tỏa (stress/vấn đề)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '早起き', 'はやおき', 'Dậy sớm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '早朝', 'そうちょう', 'Sáng sớm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '出勤', 'しゅっきん', 'Đi làm (đến công ty)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '通勤', 'つうきん', 'Đi làm hàng ngày');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '欠勤', 'けっきん', 'Nghỉ làm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '口座', 'こうざ', 'Tài khoản ngân hàng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '講座', 'こうざ', 'Khóa học');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '集中', 'しゅうちゅう', 'Tập trung');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '筆者', 'ひっしゃ', 'Tác giả');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '信じる', 'しんじる', 'Tin tưởng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '信頼', 'しんらい', 'Tin cậy / Tín nhiệm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '頼む', 'たのむ', 'Nhờ vả');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '頼る', 'たよる', 'Dựa dẫm / Trông cậy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '節約する', 'せつやくする', 'Tiết kiệm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '調節する', 'ちょうせつする', 'Điều tiết / Điều chỉnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '生かす', 'いかす', 'Phát huy / Tận dụng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '浪費する', 'ろうひする', 'Lãng phí tiền bạc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '過ぎる', 'すぎる', 'Quá / Vượt quá');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '過ごす', 'すごす', 'Trải qua (thời gian)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '勤める', 'つとめる', 'Làm việc tại (địa điểm)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '努める', 'つとめる', 'Cố gắng / Nỗ lực');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '転勤', 'てんきん', 'Chuyển công tác');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '転校', 'てんこう', 'Chuyển trường');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '実際', 'じっさい', 'Thực tế');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '結構', 'けっこう', 'Tạm được / Khá / Đủ rồi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '手帳', 'てちょう', 'Sổ tay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '落ち着き', 'おちつき', 'Sự bình tĩnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '冷静', 'れいせい', 'Điềm tĩnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '慌てる', 'あわてる', 'Hoảng hốt / Luống cuống');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '余裕', 'よゆう', 'Phần dư / Sự thoải mái');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '見直す', 'みなおす', 'Xem lại / Đánh giá lại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '振り返る', 'ふりかえる', 'Ngoảnh lại / Nhìn lại quá khứ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '浮かぶ', 'うかぶ', 'Nổi lên / Hiện ra (ý tưởng)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'だらだら', '', 'Lề mề / Câu giờ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'あっという間に', 'あっというまに', 'Trong chớp mắt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'リズム', '', 'Nhịp điệu (rhythm)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '頑張る', 'がんばる', 'Cố gắng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '技術', 'ぎじゅつ', 'Kỹ thuật');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '知識', 'ちしき', 'Tri thức / Kiến thức');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '残る', 'のこる', 'Còn lại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '理解', 'りかい', 'Thấu hiểu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '勝手', 'かって', 'Tự tiện / Ích kỷ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '剥く', 'むく', 'Gọt vỏ / Bóc vỏ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '眺める', 'ながめる', 'Ngắm nhìn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '一休み', 'ひとやすみ', 'Nghỉ một lát');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '近づく', 'ちかづく', 'Đến gần');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'ぴったり', '', 'Vừa vặn / Khớp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'たっぷり', '', 'Đầy ắp / Dư dả');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, 'もったいない', '', 'Lãng phí');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '無駄', 'むだ', 'Vô ích');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '断る', 'ことわる', 'Từ chối');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '危険', 'きけん', 'Nguy hiểm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '遊園地', 'ゆうえんち', 'Công viên giải trí');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '登山', 'とざん', 'Leo núi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '山頂', 'さんちょう', 'Đỉnh núi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '頂上', 'ちょうじょう', 'Đỉnh / Chóp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '浮く', 'うく', 'Nổi / Lơ lửng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (302, '残す', 'のこす', 'Để lại / Bỏ lại');

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (303, 'jpd316', '[Từ vựng B5] Cơ sở vật chất & Giao thông', '施設(しせつ)・交通(こうつう)', 'Từ vựng', 'N3', 'Tổng hợp 96 từ vựng theo chủ đề của chương trình JPD316.');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '地域', 'ちいき', 'Khu vực');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '公民館', 'こうみんかん', 'Nhà văn hóa cộng đồng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '貸し出し', 'かしだし', 'Cho mượn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '本人', 'ほんにん', 'Chính chủ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '自宅', 'じたく', 'Nhà riêng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '帰宅', 'きたく', 'Về nhà');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '宅配便', 'たくはいびん', 'Dịch vụ giao hàng tận nhà');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '郵便局', 'ゆうびんきょく', 'Bưu điện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '郵送する', 'ゆうそうする', 'Gửi bằng đường bưu điện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '郵便物', 'ゆうびんぶつ', 'Bưu phẩm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '職員', 'しょくいん', 'Nhân viên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '職人', 'しょくにん', 'Thợ thủ công / Người lành nghề');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '就職', 'しゅうしょく', 'Xin việc / Tìm việc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '職場', 'しょくば', 'Nơi làm việc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, 'パスワード', '', 'Mật khẩu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '構わない', 'かまわない', 'Không sao / Không phiền');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '日当たり', 'ひあたり', 'Hướng nắng / Ánh sáng mặt trời');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '確認する', 'かくにんする', 'Xác nhận');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '場合', 'ばあい', 'Trường hợp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '保険証', 'ほけんしょう', 'Thẻ bảo hiểm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '学生証', 'がくせいしょう', 'Thẻ sinh viên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '証明書', 'しょうめいしょ', 'Giấy chứng nhận');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '届く', 'とどく', 'Đến nơi (vật)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '届ける', 'とどける', 'Giao đến / Đưa đến');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '探す', 'さがす', 'Tìm kiếm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '利用者', 'りようしゃ', 'Người sử dụng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '登録', 'とうろく', 'Đăng ký');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '記録', 'きろく', 'Ghi chép');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '身分証明書', 'みぶんしょうめいしょ', 'Giấy tờ tùy thân');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '運転免許証', 'うんてんめんきょしょう', 'Bằng lái xe');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '印鑑', 'いんかん', 'Con dấu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '代表者', 'だいひょうしゃ', 'Người đại diện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '連絡先', 'れんらくさき', 'Thông tin liên lạc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '使用料', 'しようりょう', 'Phí sử dụng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '記入する', 'きにゅうする', 'Điền vào (mẫu)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '管理人', 'かんりにん', 'Người quản lý');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '解決する', 'かいけつする', 'Giải quyết');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '伺う', 'うかがう', 'Thăm hỏi / Hỏi (khiêm nhường ngữ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '進路', 'しんろ', 'Hướng đi (tương lai)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '通路', 'つうろ', 'Lối đi / Hành lang');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '切れる', 'きれる', 'Bị đứt / Bị hết');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '交換する', 'こうかんする', 'Trao đổi / Thay thế');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '眠い', 'ねむい', 'Buồn ngủ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '眠る', 'ねむる', 'Ngủ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '睡眠', 'すいみん', 'Giấc ngủ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '事務所', 'じむしょ', 'Văn phòng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '授業', 'じゅぎょう', 'Tiết học');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '事故', 'じこ', 'Tai nạn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '施設', 'しせつ', 'Cơ sở vật chất');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '訓練', 'くんれん', 'Huấn luyện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '指導', 'しどう', 'Chỉ dẫn / Chỉ đạo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '卓球', 'たっきゅう', 'Bóng bàn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '方針', 'ほうしん', 'Phương châm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '橋', 'はし', 'Cây cầu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '壁', 'かべ', 'Bức tường');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '交差点', 'こうさてん', 'Ngã tư');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '植える', 'うえる', 'Trồng (cây)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '植物', 'しょくぶつ', 'Thực vật');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '線路', 'せんろ', 'Đường ray');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '道路', 'どうろ', 'Đường lộ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '桜', 'さくら', 'Hoa anh đào');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '希望', 'きぼう', 'Hy vọng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '横断する', 'おうだんする', 'Băng ngang qua');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '渡る', 'わたる', 'Đi qua (cầu/đường)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '歩道', 'ほどう', 'Vỉa hè');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '向かう', 'むかう', 'Hướng về phía');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '桜並木', 'さくらなみき', 'Hàng cây hoa anh đào');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '踏切', 'ふみきり', 'Đoạn đường ray giao đường bộ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '突き当たり', 'つきあたり', 'Cuối đường / Ngõ cụt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '斜め', 'ななめ', 'Nghiêng / Chéo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '書面', 'しょめん', 'Văn bản / Giấy tờ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '針', 'はり', 'Cây kim');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '夕べ', 'ゆうべ', 'Tối qua');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '取り換える', 'とりかえる', 'Thay mới / Thay thế');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '事務室', 'じむしつ', 'Phòng làm việc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '願う', 'ねがう', 'Cầu mong');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '隣', 'となり', 'Bên cạnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '在勤', 'ざいきん', 'Đang làm việc tại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '在学', 'ざいがく', 'Đang học tại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '講習', 'こうしゅう', 'Huấn luyện / Khóa học ngắn hạn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '器具', 'きぐ', 'Dụng cụ / Khí cụ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '有無', 'うむ', 'Có hay không');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '通年', 'つうねん', 'Quanh năm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '持参', 'じさん', 'Mang theo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '年齢', 'ねんれい', 'Tuổi tác');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '性別', 'せいべつ', 'Giới tính');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '返事', 'へんじ', 'Trả lời');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '天候', 'てんこう', 'Thời tiết (vĩ mô)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '到着する', 'とうちゃくする', 'Đến nơi (động từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, 'バレーボール', '', 'Bóng chuyền');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, 'ヨガ', '', 'Yoga');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, 'トレーニング', '', 'Tập luyện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '灰色', 'はいいろ', 'Màu xám');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '灰皿', 'はいざら', 'Gạt tàn thuốc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '進める', 'すすめる', 'Thúc đẩy / Tiến hành');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (303, '層', 'そう', 'Tầng / Lớp');

INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) VALUES (304, 'jpd316', '[Từ vựng B6] Thiên tai & Khẩn cấp', '災害(さいがい)・緊急(きんきゅう)', 'Từ vựng', 'N3', 'Tổng hợp 133 từ vựng theo chủ đề của chương trình JPD316.');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '緊急', 'きんきゅう', 'Khẩn cấp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '速報', 'そくほう', 'Tin báo nhanh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '震度', 'しんど', 'Cường độ động đất');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '念のため', 'ねんのため', 'Để cho chắc / Để đề phòng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '津波', 'つなみ', 'Sóng thần');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '警戒する', 'けいかいする', 'Cảnh giác');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '確保する', 'かくほする', 'Đảm bảo / Duy trì');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '震源', 'しんげん', 'Tâm chấn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '沖', 'おき', 'Ngoài khơi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '深さ', 'ふかさ', 'Độ sâu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '深い', 'ふかい', 'Sâu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '浅い', 'あさい', 'Nông');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '余震', 'よしん', 'Dư chấn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '揺れる', 'ゆれる', 'Rung lắc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '余る', 'あまる', 'Bị dư ra');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '接近する', 'せっきんする', 'Tiếp cận / Đến gần');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '欠航する', 'けっこうする', 'Hủy chuyến (tàu/máy bay)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '大雨', 'おおあめ', 'Mưa lớn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '大雪', 'おおゆき', 'Tuyết lớn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '影響する', 'えいきょうする', 'Ảnh hưởng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '消防署', 'しょうぼうしょ', 'Trạm cứu hỏa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '乾燥する', 'かんそうする', 'Khô hanh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '乾く', 'かわく', 'Khô');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '火災', 'かさい', 'Hỏa hoạn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '発生する', 'はっせいする', 'Phát sinh / Xảy ra');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '呼びかける', 'よびかける', 'Kêu gọi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '固定する', 'こていする', 'Cố định');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '雷', 'かみなり', 'Sấm sét');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '雷雨', 'らいう', 'Mưa giông');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '梅雨', 'つゆ', 'Mùa mưa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '洪水', 'こうずい', 'Lũ lụt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '強風', 'きょうふう', 'Gió mạnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '風速', 'ふうそく', 'Tốc độ gió');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '雨量', 'うりょう', 'Lượng mưa');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '注意報', 'ちゅういほう', 'Thông tin cảnh báo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '観測する', 'かんそくする', 'Quan sát / Đo đạc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '状況', 'じょうきょう', 'Tình hình');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '状態', 'じょうたい', 'Trạng thái');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '変更', 'へんこう', 'Thay đổi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '放送', 'ほうそう', 'Phát sóng');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '資料', 'しりょう', 'Tài liệu');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '祈る', 'いのる', 'Cầu nguyện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '患者', 'かんじゃ', 'Bệnh nhân');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '手首', 'てくび', 'Cổ tay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '足首', 'あしくび', 'Cổ chân');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '捻る', 'ひねる', 'Trật / Vặn / Xoắn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '経つ', 'たつ', 'Trôi qua (thời gian)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '痛める', 'いためる', 'Làm đau');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '診る', 'みる', 'Khám bệnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '診断', 'しんだん', 'Chẩn đoán');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '不思議', 'ふしぎ', 'Kỳ lạ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '変化', 'へんか', 'Thay đổi');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '預かる', 'あずかる', 'Giữ hộ / Trông hộ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '預ける', 'あずける', 'Gửi giữ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '驚く', 'おどろく', 'Ngạc nhiên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '階段', 'かいだん', 'Cầu thang');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '転ぶ', 'ころぶ', 'Té ngã');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '運ぶ', 'はこぶ', 'Vận chuyển');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '慣れる', 'なれる', 'Quen với');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'ひりひり', '', 'Rát / Cay tê');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'ずきずき', '', 'Đau nhói / Đau nhức');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'ふらふら', '', 'Chóng mặt / Lảo đảo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '避難する', 'ひなんする', 'Tị nạn / Sơ tán');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '日頃', 'ひごろ', 'Thường ngày');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '指示する', 'しじする', 'Chỉ thị');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '煙', 'けむり', 'Khói');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '喫煙', 'きつえん', 'Hút thuốc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '禁煙', 'きんえん', 'Cấm hút thuốc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '覆う', 'おおう', 'Bao phủ / Che đậy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '肘', 'ひじ', 'Khuỷu tay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '故障する', 'こしょうする', 'Hỏng hóc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '吹く', 'ふく', 'Thổi (gió)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '逃げる', 'にげる', 'Chạy trốn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '逃げ道', 'にげみち', 'Đường thoát');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '避難所', 'ひなんじょ', 'Nơi trú ẩn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '非常口', 'ひじょうぐち', 'Cửa thoát hiểm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '非常食', 'ひじょうしょく', 'Thực phẩm dự trữ khẩn cấp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '消化器', 'しょうかき', 'Bình chữa cháy');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '従う', 'したがう', 'Tuân theo / Làm theo');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '助け合う', 'たすけあう', 'Giúp đỡ lẫn nhau');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '災害', 'さいがい', 'Thiên tai');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '急病', 'きゅうびょう', 'Bệnh đột ngột');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '滑る', 'すべる', 'Trượt');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '崩れる', 'くずれる', 'Bị sập / Bị lở');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '全身', 'ぜんしん', 'Toàn thân');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '泥', 'どろ', 'Bùn');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '泥棒', 'どろぼう', 'Kẻ trộm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '無事', 'ぶじ', 'Bình an / Suôn sẻ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '溺れる', 'おぼれる', 'Chết đuối / Đuối nước');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '助ける', 'たすける', 'Cứu giúp (tha)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '助かる', 'たすかる', 'Được cứu (tự)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '飛び込む', 'とびこむ', 'Lao vào / Nhảy vào');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '怪我', 'けが', 'Bị thương');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '倉庫', 'そうこ', 'Nhà kho');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '埃', 'ほこり', 'Bụi bặm');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '誇り', 'ほこり', 'Niềm tự hào');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '共有する', 'きょうゆうする', 'Chia sẻ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '防災', 'ぼうさい', 'Phòng chống thiên tai');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '被害', 'ひがい', 'Thiệt hại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '震災', 'しんさい', 'Thảm họa động đất');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '設備', 'せつび', 'Trang thiết bị');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '担当', 'たんとう', 'Phụ trách');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '役割', 'やくわり', 'Vai trò');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '下水道', 'げずいどう', 'Hệ thống thoát nước');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '処理する', 'しょりする', 'Xử lý');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '発電', 'はつでん', 'Phát điện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '停電', 'ていでん', 'Cúp điện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '横断歩道', 'おうだんほどう', 'Vạch kẻ đường cho người đi bộ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '幸せ', 'しあわせ', 'Hạnh phúc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '人数', 'にんずう', 'Số người');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '欠く', 'かく', 'Thiếu sót');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '増える', 'ふえる', 'Tăng lên');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '減る', 'へる', 'Giảm xuống');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '訓練する', 'くんれんする', 'Huấn luyện');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '事項', 'じこう', 'Điều khoản / Mục');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '決して', 'けっして', 'Tuyệt đối (không)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'いざという時', 'いざというとき', 'Khi cần thiết / Lúc khẩn cấp');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'いざという', 'いざという', 'Khi cần / Lúc khẩn cấp (dạng rút gọn)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '影響', 'えいきょう', 'Ảnh hưởng (danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '避難経路', 'ひなんけいろ', 'Đường sơ tán');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '指示', 'しじ', 'Chỉ thị (danh từ)');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '斜面', 'しゃめん', 'Sườn dốc');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '雨上がり', 'あめあがり', 'Sau khi mưa tạnh');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '飛ばす', 'とばす', 'Làm bay');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '崩す', 'くずす', 'Làm sập');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'すりむく', '', 'Trầy xước da');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, 'うずくまる', '', 'Co rùm người lại');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '国道', 'こくどう', 'Đường quốc lộ');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '陸地', 'りくち', 'Đất liền');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '被災', 'ひさい', 'Bị thiên tai');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '負担', 'ふたん', 'Gánh nặng / Chi phí');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '普段', 'ふだん', 'Thường ngày');
INSERT INTO vocabularies (lesson_id, word, reading, meaning) VALUES (304, '貯水槽', 'ちょすいそう', 'Bể chứa nước');

SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));
SELECT setval('vocabularies_id_seq', (SELECT MAX(id) FROM vocabularies));

-- Default admin user (password: admin123, BCrypt encoded)
INSERT INTO users (username, email, password, display_name, role) VALUES ('admin', 'admin@fsoft.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Admin', 'ADMIN');
