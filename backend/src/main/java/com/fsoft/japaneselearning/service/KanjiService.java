package com.fsoft.japaneselearning.service;

import com.fsoft.japaneselearning.model.Kanji;
import com.fsoft.japaneselearning.repository.KanjiRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class KanjiService {

    private final KanjiRepository kanjiRepository;

    public KanjiService(KanjiRepository kanjiRepository) {
        this.kanjiRepository = kanjiRepository;
    }

    public List<Kanji> getKanjisByCourse(String courseId) {
        List<Kanji> kanjis = kanjiRepository.findByCourseIdOrderBySortOrderAsc(courseId);
        kanjis.forEach(kanji -> {
            if (kanji.getExamples() != null) {
                kanji.getExamples().removeIf(java.util.Objects::isNull);
            }
        });
        return kanjis;
    }

    @Transactional(readOnly = true)
    public Optional<Kanji> getKanjiById(Long id) {
        return kanjiRepository.findById(id).map(kanji -> {
            if (kanji.getExamples() != null) {
                kanji.getExamples().removeIf(java.util.Objects::isNull);
            }
            return kanji;
        });
    }
}
