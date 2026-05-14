package com.fsoft.japaneselearning.repository;

import com.fsoft.japaneselearning.model.Kanji;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KanjiRepository extends JpaRepository<Kanji, Long> {
    List<Kanji> findByCourseIdOrderBySortOrderAsc(String courseId);
}
