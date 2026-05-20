-- V33__add_jpd326_grammar_lesson11_to_14.sql

-- Lesson 411: 〜をはじめ（として）／〜をはじめとする
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (411, 'jpd326', '[11] をはじめ', 'をはじめ（として）／をはじめとする', 'Ngữ pháp', 'N3', 'Ý nghĩa: "bắt đầu từ...", "tiêu biểu như..."
Dùng để nêu ra một ví dụ tiêu biểu trước, sau đó bao gồm nhiều đối tượng cùng loại khác.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (411, 'N＋をはじめ（として）／ N＋をはじめとする', 0);

INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (411, '横浜には中華街をはじめ、山下公園など多くの人が訪れる場所がある。→ Ở Yokohama có nhiều nơi được nhiều người ghé thăm như khu phố Trung Hoa, công viên Yamashita, v.v.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (411, 'このお店ではこの地方の名産品をはじめとするさまざまなお土産品が売られている。→ Ở cửa hàng này có bán nhiều loại quà lưu niệm khác nhau, tiêu biểu là các đặc sản nổi tiếng của vùng này.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (411, '大学で日本をはじめアジア諸国について研究していた。→ Ở đại học, tôi đã nghiên cứu về các nước châu Á, trước hết là Nhật Bản.', 2);

-- Lesson 412: 〜を通して／〜を通じて
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (412, 'jpd326', '[12] を通して', 'を通して／を通じて', 'Ngữ pháp', 'N3', 'Ý nghĩa: "suốt...", "thông qua..."
Dùng để diễn tả hành động/sự việc diễn ra xuyên suốt một khoảng thời gian hoặc thông qua một phương tiện, cách thức nào đó.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (412, 'N＋を通して／N＋を通じて', 0);

INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (412, 'この地域は１年を通してたくさんの人で賑わっています。→ Khu vực này nhộn nhịp đông người suốt cả năm.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (412, '祖父は一生を通して、頑固な職人であり続けた。→ Ông tôi suốt cuộc đời vẫn luôn là một người thợ thủ công cứng đầu.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (412, '子供たちはスポーツを通じて、色々なことを学ぶことができます。→ Trẻ em có thể học được nhiều điều thông qua thể thao.', 2);

-- Lesson 413: 〜ことから
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (413, 'jpd326', '[13] ことから', 'ことから', 'Ngữ pháp', 'N3', 'Ý nghĩa: "vì...", "do..."
Dùng để nêu căn cứ, lý do hoặc nguyên nhân dẫn đến một nhận định hay kết luận.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (413, '普通形（ナAな・ナAである／Nである）＋ことから', 0);

INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (413, '横に砂浜が長く延びていたことから、横浜村と呼ばれていました。→ Vì bãi cát kéo dài theo chiều ngang nên nơi này được gọi là làng Yokohama.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (413, '海洋生物の化石が発見されたことから、この辺りは昔、海だったと考えられる。→ Do phát hiện hóa thạch sinh vật biển nên người ta cho rằng khu vực này ngày xưa từng là biển.', 1);

-- Lesson 414: 〜といえば／〜というと
INSERT INTO lessons (id, course_id, title, title_jp, category, level, content) 
VALUES (414, 'jpd326', '[14] といえば', 'といえば／というと', 'Ngữ pháp', 'N3', 'Ý nghĩa: "nói đến... thì...", "nhắc đến... là nghĩ đến..."
Dùng khi nhắc đến một chủ đề nào đó và liên tưởng ngay đến một sự vật, sự việc tiêu biểu liên quan.');

INSERT INTO lesson_grammar (lesson_id, grammar_point, sort_order) VALUES (414, 'N／普通形＋といえば／〜というと', 0);

INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (414, '横浜といえば、中華街が有名です。→ Nói đến Yokohama thì khu phố Trung Hoa rất nổi tiếng.', 0);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (414, '冬のスポーツというと、スキーを思い浮かべます。→ Nhắc đến môn thể thao mùa đông thì tôi nghĩ ngay đến trượt tuyết.', 1);
INSERT INTO lesson_examples (lesson_id, example, sort_order) VALUES (414, '京都といえば、お寺が有名です。→ Nói đến Kyoto thì chùa chiền rất nổi tiếng.', 2);

SELECT setval('lessons_id_seq', (SELECT MAX(id) FROM lessons));
