-- V39__link_jpd316_kanji.sql

DO $$
DECLARE
    v_lesson_id BIGINT;
BEGIN
    -- Bài 4
    INSERT INTO lessons (course_id, title, category, level) VALUES ('jpd316', 'Bài 4', 'Kanji', 'N3') RETURNING id INTO v_lesson_id;
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '参';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '加';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '流';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '協';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '費';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '報';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '覚';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '就';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '職';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '必';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '要';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '窓';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '完';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '成';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '念';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '温';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '情';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '算';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '放';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '達';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '直';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '値';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '段';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '異';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '得';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '探';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '果';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '限';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '商';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '感';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '飛';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '機';

    -- Bài 5
    INSERT INTO lessons (course_id, title, category, level) VALUES ('jpd316', 'Bài 5', 'Kanji', 'N3') RETURNING id INTO v_lesson_id;
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '活';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '他';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '効';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '準';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '備';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '解';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '勤';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '務';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '性';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '結';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '将';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '信';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '末';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '記';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '落';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '器';

    -- Bài 6
    INSERT INTO lessons (course_id, title, category, level) VALUES ('jpd316', 'Bài 6', 'Kanji', 'N3') RETURNING id INTO v_lesson_id;
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '例';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '宅';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '当';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '管';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '決';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '路';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '植';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '指';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '導';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '面';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '針';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '絵';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '格';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '識';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '身';

    -- Bài 7
    INSERT INTO lessons (course_id, title, category, level) VALUES ('jpd316', 'Bài 7', 'Kanji', 'N3') RETURNING id INTO v_lesson_id;
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '確';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '認';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '保';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '深';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '録';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '接';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '変';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '議';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '示';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '番';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '号';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '組';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '共';
    UPDATE kanjis SET lesson_id = v_lesson_id WHERE course_id = 'jpd316' AND character = '防';

END $$;
