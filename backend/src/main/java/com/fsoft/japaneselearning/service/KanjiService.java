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
        return kanjiRepository.findByCourseIdOrderBySortOrderAsc(courseId);
    }

    public Optional<Kanji> getKanjiById(Long id) {
        return kanjiRepository.findById(id);
    }
}
