-- V38__add_jpd316_kanji.sql

DO $$
DECLARE
    kanji_id BIGINT;
BEGIN

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '参', 'THAM
On: サン
Kun: まいる', '', '', 'N3', 1) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '参加（さんか）: sự tham gia, tham dự', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '参考（さんこう）: tham khảo, tài liệu tham khảo', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '持参（じさん）: mang theo, đem theo khi đi ra ngoài', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '加', 'GIA
On: カ
Kun: くわわる、くわえる', '', '', 'N3', 2) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '参加（さんか）: sự tham gia, tham dự', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '加工（かこう）: gia công, chế biến', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '加入（かにゅう）: gia nhập, tham gia (tổ chức, hội nhóm)', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '流', 'LƯU
On: リュウ
Kun: ながれる、ながす', '', '', 'N3', 3) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '流行（りゅうこう）: xu hướng, mốt, trào lưu', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '流行る（はやる）: thịnh hành, đang hot', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '流通（りゅうつう）: lưu thông, phân phối', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '交流（こうりゅう）: giao lưu, trao đổi', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '協', 'HIỆP
On: キョウ', '', '', 'N3', 4) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '協力（きょうりょく）: hợp tác, hiệp lực', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '協定（きょうてい）: hiệp định, thỏa thuận', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '協約（きょうやく）: hiệp ước, giao ước', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '費', 'PHÍ
On: ヒ
Kun: ついやす', '', '', 'N3', 5) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '費用（ひよう）: chi phí', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '学費（がくひ）: học phí', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '会費（かいひ）: hội phí', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '消費者（しょうひしゃ）: người tiêu dùng', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '報', 'BÁO
On: ホウ', '', '', 'N3', 6) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '報道（ほうどう）: đưa tin, báo chí đưa tin', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '報告（ほうこく）: báo cáo', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '日報（にっぽう）: nhật báo, báo cáo hằng ngày', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '急報（きゅうほう）: tin khẩn, tin gấp', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '覚', 'GIÁC
On: カク
Kun: おぼえる', '', '', 'N3', 7) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '覚書（おぼえがき）: ghi chú, bản ghi nhớ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '味覚（みかく）: vị giác', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '自覚（じかく）: tự nhận thức, tự ý thức', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '就', 'TỰU
On: シュウ
Kun: つく', '', '', 'N3', 8) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '就職（しゅうしょく）: đi làm, nhận việc, xin việc', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '就学（しゅうがく）: đi học (bước vào học tập)', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '就業（しゅうぎょう）: làm việc, đang làm việc', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '職', 'CHỨC
On: ショク', '', '', 'N3', 9) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '職業（しょくぎょう）: nghề nghiệp', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '職員（しょくいん）: nhân viên, cán bộ', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '職場（しょくば）: chỗ làm, nơi làm việc', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '必', 'TẤT
On: ヒツ
Kun: かならず', '', '', 'N3', 10) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '必要（ひつよう）: cần thiết, sự cần thiết', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '必読（ひつどく）: bắt buộc phải đọc', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '要', 'YẾU
On: ヨウ
Kun: いる', '', '', 'N3', 11) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '要員（よういん）: nhân lực cần thiết, nhân sự chủ chốt', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '要所（ようしょ）: điểm quan trọng, vị trí then chốt', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '要理（ようり）: ý chính, điểm cốt lõi', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '要職（ようしょく）: chức vụ quan trọng', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '窓', 'SONG
On: ソウ
Kun: まど', '', '', 'N3', 12) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '窓口（まどぐち）: quầy tiếp nhận, cửa sổ giao dịch', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '同窓会（どうそうかい）: họp lớp, hội cựu học sinh', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '完', 'HOÀN
On: カン', '', '', 'N3', 13) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '完成（かんせい）: hoàn thành', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '完全（かんぜん）: hoàn toàn, trọn vẹn', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '成', 'THÀNH
On: セイ
Kun: なる', '', '', 'N3', 14) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '成人（せいじん）: người trưởng thành', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '成就（じょうじゅ）: thành tựu, đạt được', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '成長（せいちょう）: trưởng thành, phát triển', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '念', 'NIỆM
On: ネン', '', '', 'N3', 15) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '念願（ねんがん）: nguyện vọng, ước nguyện', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '念頭（ねんとう）: trong đầu, ghi nhớ trong đầu', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '残念（ざんねん）: đáng tiếc', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '理念（りねん）: lý niệm, tư tưởng, triết lý', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '温', 'ÔN
On: オン
Kun: あたたかい', '', '', 'N3', 16) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '温度（おんど）: nhiệt độ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '温室（おんしつ）: nhà kính, phòng giữ ấm', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '体温計（たいおんけい）: nhiệt kế (đo thân nhiệt)', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '気温（きおん）: nhiệt độ không khí', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '情', 'TÌNH
On: ジョウ
Kun: なさけ', '', '', 'N3', 17) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '情報（じょうほう）: thông tin', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '情意（じょうい）: tình cảm, thiện ý', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '友情（ゆうじょう）: tình bạn', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '同情（どうじょう）: đồng cảm, thương cảm', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '算', 'TOÁN
On: サン', '', '', 'N3', 18) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '算術（さんじゅつ）: thuật toán, phép tính', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '算出（さんしゅつ）: tính ra, ước tính', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '算定（さんてい）: xác định, tính toán', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '予算（よさん）: ngân sách, dự toán', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '計算（けいさん）: tính toán', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '放', 'PHÓNG
On: ホウ
Kun: はなれる、はなす、はなつ、ほうる', '', '', 'N3', 19) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '放送（ほうそう）: phát sóng', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '放火（ほうか）: phóng hỏa', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '放課後（ほうかご）: sau giờ học', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '開放（かいほう）: mở ra, giải phóng', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '達', 'ĐẠT
On: タツ', '', '', 'N3', 20) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '達成（たっせい）: đạt được, hoàn thành', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '達者（たっしゃ）: giỏi giang, khỏe mạnh', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '達人（たつじん）: cao thủ, người rất giỏi', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '上達（じょうたつ）: tiến bộ, tiến triển', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '速達（そくたつ）: chuyển phát nhanh', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '友達（ともだち）: bạn bè', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '直', 'TRỰC
On: チョク
Kun: なおる、なおす', '', '', 'N3', 21) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直覚（ちょっかく）: trực giác', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直言（ちょくげん）: nói thẳng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直前（ちょくぜん）: ngay trước, sát trước', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直後（ちょくご）: ngay sau, ngay sau đó', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '値', 'TRỊ
On: チ
Kun: ね、あたい', '', '', 'N3', 22) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '値引き（ねびき）: giảm giá', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '値下げ（ねさげ）: hạ giá', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '安値（やすね）: giá rẻ', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '高値（たかね）: giá cao', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '段', 'ĐOẠN
On: ダン', '', '', 'N3', 23) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '段階（だんかい）: giai đoạn, mức độ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '階段（かいだん）: cầu thang', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '異', 'DỊ
On: イ
Kun: ことなる', '', '', 'N3', 24) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '異見（いけん）: ý kiến khác, quan điểm khác', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '異同（いどう）: sự khác biệt và tương đồng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '異質（いしつ）: khác chất, khác bản chất', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '得', 'ĐẮC
On: トク
Kun: える', '', '', 'N3', 25) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '得意（とくい）: giỏi, sở trường', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '所得（しょとく）: thu nhập', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '体得（たいとく）: lĩnh hội, nắm vững (qua trải nghiệm)', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '探', 'THÁM
On: タン
Kun: さがす', '', '', 'N3', 26) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '探究（たんきゅう）: nghiên cứu, tìm tòi', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '探知（たんち）: phát hiện, dò tìm', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '果', 'QUẢ
On: カ
Kun: はたす', '', '', 'N3', 27) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '果実（かじつ）: quả, trái cây', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '果物（くだもの）: hoa quả, trái cây', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '成果（せいか）: kết quả, thành quả', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '限', 'HẠN
On: ゲン
Kun: かぎる', '', '', 'N3', 28) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '限度（げんど）: giới hạn, mức độ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '限界（げんかい）: giới hạn, ranh giới', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '限定（げんてい）: giới hạn, hạn chế', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '無限（むげん）: vô hạn', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '商', 'THƯƠNG
On: ショウ', '', '', 'N3', 29) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '商売（しょうばい）: buôn bán, kinh doanh', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '商業（しょうぎょう）: thương nghiệp', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '商品（しょうひん）: hàng hóa, sản phẩm', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '感', 'CẢM
On: カン', '', '', 'N3', 30) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '感覚（かんかく）: cảm giác', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '感情（かんじょう）: cảm xúc', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '感心（かんしん）: thán phục, khâm phục', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '同感（どうかん）: đồng cảm', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '悪感（あくかん）: ác cảm, cảm giác xấu', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '無感（むかん）: vô cảm', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '飛', 'PHI
On: ヒ
Kun: とぶ、とばす', '', '', 'N3', 31) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '飛行機（ひこうき）: máy bay', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '飛行場（ひこうじょう）: sân bay', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '機', 'CƠ
On: キ', '', '', 'N3', 32) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '機会（きかい）: cơ hội', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '動機（どうき）: động cơ, động lực', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '有機（ゆうき）: hữu cơ', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '活', 'HOẠT
On: カツ
Kun: いきる、いかす', '', '', 'N3', 33) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活動（かつどう）: hoạt động', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活発（かっぱつ）: sôi nổi, năng động', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活気（かっき）: sinh khí, sức sống', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活用（かつよう）: ứng dụng, vận dụng', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '生活（せいかつ）: cuộc sống', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活性（かっせい）: hoạt tính, sự hoạt hóa', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '他', 'THA
On: タ
Kun: ほか', '', '', 'N3', 34) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '他国（たこく）: nước khác', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '他方（たほう）: phía khác, mặt khác', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '他人（たにん）: người khác', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '他用（たよう）: việc khác', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '効', 'HIỆU
On: コウ', '', '', 'N3', 35) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '効果（こうか）: hiệu quả', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '効力（こうりょく）: hiệu lực', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '効験（こうけん）: hiệu nghiệm', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '有効（ゆうこう）: có hiệu quả', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '無効（むこう）: vô hiệu', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '発効（はっこう）: có hiệu lực', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '準', 'CHUẨN
On: ジュン', '', '', 'N3', 36) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '準備（じゅんび）: chuẩn bị', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '水準（すいじゅん）: tiêu chuẩn, mức độ', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '備', 'BỊ
On: ビ
Kun: そなえる、そなわる', '', '', 'N3', 37) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '準備（じゅんび）: chuẩn bị', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '備考（びこう）: ghi chú', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '予備（よび）: dự bị', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '解', 'GIẢI
On: カイ
Kun: とく、とける、とかす', '', '', 'N3', 38) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解決（かいけつ）: giải quyết', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解放（かいほう）: giải phóng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解答（かいとう）: câu trả lời', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解消（かいしょう）: giải tỏa', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解説（かいせつ）: giải thích', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '正解（せいかい）: đáp án đúng', 6);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '読解（どっかい）: đọc hiểu', 7);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '理解（りかい）: hiểu', 8);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '勤', 'CẦN
On: キン
Kun: つとめる、つとまる', '', '', 'N3', 39) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '勤勉（きんべん）: siêng năng, chăm chỉ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '通勤（つうきん）: đi làm', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '出勤（しゅっきん）: đi làm (đến nơi làm việc)', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '欠勤（けっきん）: nghỉ làm', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '勤務（きんむ）: công việc, nhiệm vụ', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '務', 'VỤ
On: ム
Kun: つとめる', '', '', 'N3', 40) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '勤務（きんむ）: công việc', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '事務所（じむしょ）: văn phòng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '公務員（こうむいん）: công chức', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '性', 'TÍNH
On: セイ、ショウ', '', '', 'N3', 41) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '性別（せいべつ）: giới tính', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '性格（せいかく）: tính cách', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '性質（せいしつ）: tính chất', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '男性（だんせい）: nam giới', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '女性（じょせい）: nữ giới', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活性（かっせい）: hoạt tính', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '結', 'KẾT
On: ケツ
Kun: むすぶ、ゆう、ゆわえる', '', '', 'N3', 42) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '終結（しゅうけつ）: kết thúc', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '結局（けっきょく）: kết cục, cuối cùng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '結合（けつごう）: kết hợp', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '結果（けっか）: kết quả', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '将', 'TƯỚNG
On: ショウ', '', '', 'N3', 43) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '将来（しょうらい）: tương lai', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '大将（たいしょう）: đại tướng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '主将（しゅしょう）: đội trưởng', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '信', 'TÍN
On: シン', '', '', 'N3', 44) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '信用（しんよう）: tín dụng, tin tưởng', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '返信（へんしん）: trả lời (thư, tin nhắn)', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '通信（つうしん）: thông tin liên lạc', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '過信（かしん）: quá tin tưởng', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '末', 'MẠT
On: マツ、バツ
Kun: すえ', '', '', 'N3', 45) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '末っ子（すえっこ）: con út', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '週末（しゅうまつ）: cuối tuần', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '月末（げつまつ）: cuối tháng', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '年末（ねんまつ）: cuối năm', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '記', 'KÝ
On: キ', '', '', 'N3', 46) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '記事（きじ）: bài báo', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '記者（きしゃ）: phóng viên', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '記入（きにゅう）: điền vào', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '日記（にっき）: nhật ký', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '暗記（あんき）: học thuộc lòng', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '落', 'LẠC
On: ラク
Kun: おちる、おとす', '', '', 'N3', 47) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '段落（だんらく）: đoạn văn', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '落石（らくせき）: đá rơi', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '落下（らっか）: rơi xuống', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '落後（らくご）: lạc hậu, tụt lại', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '器', 'KHÍ
On: キ
Kun: うつわ', '', '', 'N3', 48) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '器具（きぐ）: dụng cụ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '器用（きよう）: khéo léo', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '楽器（がっき）: nhạc cụ', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '機器（きき）: thiết bị, máy móc', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '例', 'LỆ
On: レイ
Kun: たとえる', '', '', 'N3', 49) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '例題（れいだい）: đề mẫu', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '例文（れいぶん）: câu ví dụ', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '例外（れいがい）: ngoại lệ', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '用例（ようれい）: ví dụ sử dụng', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '前例（ぜんれい）: tiền lệ', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '宅', 'TRẠCH
On: タク', '', '', 'N3', 50) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '自宅（じたく）: nhà riêng', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '帰宅（きたく）: về nhà', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '宅地（たくち）: đất ở', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '住宅（じゅうたく）: nhà ở', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '当', 'ĐƯƠNG
On: トウ
Kun: あたる、あたる', '', '', 'N3', 51) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '当時（とうじ）: lúc đó, thời đó', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '当事（とうじ）: đương sự', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '当日（とうじつ）: ngày hôm đó', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '本当（ほんとう）: thật sự', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '正当（せいとう）: chính đáng', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '相当（そうとう）: tương đương', 6);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '当駅（とうえき）: ga này', 7);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '管', 'QUẢN
On: カン
Kun: くだ', '', '', 'N3', 52) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '管理（かんり）: quản lý', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '食管（しょっかん）: thực quản', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '管区（かんく）: khu vực quản lý', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '導管（どうかん）: ống dẫn', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '決', 'QUYẾT
On: ケツ
Kun: きまる、きめる', '', '', 'N3', 53) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '決定（けってい）: quyết định', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '決意（けつい）: quyết tâm', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '決心（けっしん）: quyết tâm', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '解決（かいけつ）: giải quyết', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '可決（かけつ）: thông qua', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '先決（せんけつ）: ưu tiên trước', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '路', 'LỘ
On: ロ', '', '', 'N3', 54) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '路線（ろせん）: tuyến đường', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '線路（せんろ）: đường ray', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '道路（どうろ）: đường', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '活路（かつろ）: lối thoát', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '通路（つうろ）: lối đi', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '針路（しんろ）: hướng đi', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '植', 'THỰC
On: ショク
Kun: うえる、うわる', '', '', 'N3', 55) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '植物（しょくぶつ）: thực vật', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '植民（しょくみん）: thực dân', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '指', 'CHỈ
On: シ
Kun: ゆび、さす', '', '', 'N3', 56) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '指導（しどう）: chỉ đạo, hướng dẫn', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '指定（してい）: chỉ định', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '指名（しめい）: chỉ đích danh', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '導', 'ĐẠO
On: ドウ
Kun: みちびく', '', '', 'N3', 57) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '指導（しどう）: chỉ đạo, hướng dẫn', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '導管（どうかん）: ống dẫn', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '導入（どうにゅう）: đưa vào, giới thiệu', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '半導体（はんどうたい）: chất bán dẫn', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '面', 'DIỆN
On: メン
Kun: おも、おもて、つら', '', '', 'N3', 58) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '面白い（おもしろい）: thú vị', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直面（ちょくめん）: đối mặt', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '正面（しょうめん）: mặt trước', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '面会（めんかい）: gặp mặt', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '針', 'CHÂM
On: シン
Kun: はり', '', '', 'N3', 59) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '針路（しんろ）: hướng đi', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '長針（ちょうしん）: kim dài (đồng hồ)', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '短針（たんしん）: kim ngắn (đồng hồ)', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '方針（ほうしん）: phương châm', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '絵', 'HỘI
On: カイ、エ', '', '', 'N3', 60) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '絵本（えほん）: sách tranh', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '絵葉書（えはがき）: bưu thiếp có tranh', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '絵文字（えもじ）: biểu tượng cảm xúc', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '油絵（あぶらえ）: tranh sơn dầu', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '絵画（かいが）: hội họa, bức tranh', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '絵図（えず）: bản vẽ, sơ đồ', 6);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '格', 'CÁCH
On: カク', '', '', 'N3', 61) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '格好（かっこう）: dáng vẻ, hình dáng', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '格段（かくだん）: đặc biệt, vượt trội', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '格調（かくちょう）: phong cách, cách điệu', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '格安（かくやす）: giá rẻ', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '格言（かくげん）: cách ngôn, châm ngôn', 5);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '合格（ごうかく）: đỗ, đạt', 6);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '性格（せいかく）: tính cách', 7);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '資格（しかく）: tư cách, bằng cấp', 8);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '識', 'THỨC
On: シキ', '', '', 'N3', 62) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '識別（しきべつ）: phân biệt', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '識者（しきしゃ）: người có hiểu biết', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '知識（ちしき）: kiến thức', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '見識（けんしき）: nhận thức, kiến thức', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '意識（いしき）: ý thức', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '身', 'THÂN
On: シン
Kun: み', '', '', 'N3', 63) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '全身（ぜんしん）: toàn thân', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '下半身（かはんしん）: nửa thân dưới', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '終身（しゅうしん）: suốt đời, trọn đời', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '確', 'XÁC
On: カク
Kun: たしか、たしかめる', '', '', 'N3', 64) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確認（かくにん）: xác nhận, kiểm tra lại', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確定（かくてい）: xác định, quyết định chắc chắn', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確立（かくりつ）: xác lập, thiết lập vững chắc', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '正確（せいかく）: chính xác', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確保（かくほ）: đảm bảo, bảo đảm', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '認', 'NHẬN
On: ニン
Kun: みとめる', '', '', 'N3', 65) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '認定（にんてい）: công nhận, chứng nhận', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '認識（にんしき）: nhận thức', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確認（かくにん）: xác nhận, kiểm tra lại', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '保', 'BẢO
On: ホ
Kun: たもつ', '', '', 'N3', 66) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '保管（ほかん）: bảo quản, lưu giữ', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '保証（ほしょう）: bảo đảm, bảo hành', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '保留（ほりゅう）: bảo lưu, tạm hoãn', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '確保（かくほ）: đảm bảo, bảo đảm', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '深', 'THÂM
On: シン
Kun: ふかい', '', '', 'N3', 67) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '深度（しんど）: độ sâu', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '深窓（しんそう）: thâm khuê, khuê các', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '深夜（しんや）: đêm khuya', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '録', 'LỤC
On: ロク', '', '', 'N3', 68) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '録音（ろくおん）: ghi âm', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '録画（ろくが）: ghi hình', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '登録（とうろく）: đăng ký', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '記録（きろく）: ghi chép, kỷ lục', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '接', 'TIẾP
On: セツ', '', '', 'N3', 69) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '接待（せったい）: tiếp đãi', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '接近（せっきん）: tiếp cận', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '接着（せっちゃく）: kết dính, dán', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '面接（めんせつ）: phỏng vấn', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '直接（ちょくせつ）: trực tiếp', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '変', 'BIẾN
On: ヘン
Kun: かわる、かえる', '', '', 'N3', 70) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '変動（へんどう）: biến động', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '変化（へんか）: thay đổi, biến hóa', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '変体（へんたい）: biến thể', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '大変（たいへん）: rất, vất vả, nghiêm trọng', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '不変（ふへん）: bất biến, không đổi', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '議', 'NGHỊ
On: ギ', '', '', 'N3', 71) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '議題（ぎだい）: chủ đề nghị sự', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '議院（ぎいん）: nghị viện', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '会議（かいぎ）: hội nghị, cuộc họp', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '協議（きょうぎ）: bàn bạc, hiệp nghị', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '決議（けつぎ）: nghị quyết', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '示', 'THỊ
On: ジ
Kun: しめす', '', '', 'N3', 72) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '指示（しじ）: chỉ thị, hướng dẫn', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '教示（きょうじ）: chỉ dạy, chỉ giáo', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '公示（こうじ）: công bố', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '例示（れいじ）: nêu ví dụ, minh họa', 4);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '番', 'PHIÊN
On: バン', '', '', 'N3', 73) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '番号（ばんごう）: số, số hiệu', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '当番（とうばん）: trực ban, phiên trực', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '交番（こうばん）: đồn cảnh sát', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '号', 'HIỆU
On: ゴウ', '', '', 'N3', 74) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '番号（ばんごう）: số, số hiệu', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '記号（きごう）: ký hiệu', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '年号（ねんごう）: niên hiệu', 3);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '組', 'TỔ
On: ソ
Kun: くむ、くみ', '', '', 'N3', 75) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '組合（くみあい）: công đoàn, tổ hợp', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '番組（ばんぐみ）: chương trình', 2);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '共', 'CỘNG
On: キョウ
Kun: とも', '', '', 'N3', 76) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '共生（きょうせい）: cộng sinh', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '共通（きょうつう）: chung, thông dụng', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '共有（きょうゆう）: chia sẻ, cùng sở hữu', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '共同（きょうどう）: cùng nhau, hợp tác', 4);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '共産（きょうさん）: cộng sản', 5);

    INSERT INTO kanjis (course_id, character, meaning, onyomi, kunyomi, level, sort_order) 
    VALUES ('jpd316', '防', 'PHÒNG
On: ボウ
Kun: ふせぐ', '', '', 'N3', 77) RETURNING id INTO kanji_id;

    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '防水（ぼうすい）: chống nước', 1);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '防火（ぼうか）: phòng cháy', 2);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '防音（ぼうおん）: cách âm', 3);
    INSERT INTO kanji_examples (kanji_id, example, sort_order) VALUES (kanji_id, '消防（しょうぼう）: phòng cháy chữa cháy, cứu hỏa', 4);

END $$;
