package com.fsoft.japaneselearning.service;

import com.fsoft.japaneselearning.model.Reading;
import com.fsoft.japaneselearning.repository.ReadingRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class ReadingService {

    private final ReadingRepository readingRepository;

    public ReadingService(ReadingRepository readingRepository) {
        this.readingRepository = readingRepository;
    }

    public List<Reading> getReadingsByCourse(String courseId) {
        return readingRepository.findByCourseIdOrderBySortOrderAsc(courseId);
    }

    public Optional<Reading> getReadingById(Long id) {
        return readingRepository.findById(id);
    }
}
