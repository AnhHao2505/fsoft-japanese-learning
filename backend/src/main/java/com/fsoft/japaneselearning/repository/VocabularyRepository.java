package com.fsoft.japaneselearning.repository;

import com.fsoft.japaneselearning.model.Vocabulary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VocabularyRepository extends JpaRepository<Vocabulary, Long> {

    List<Vocabulary> findByLessonIdOrderByIdAsc(Long lessonId);

    @Query("SELECT v FROM Vocabulary v WHERE " +
           "LOWER(v.word) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(v.reading) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(v.meaning) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Vocabulary> searchByKeyword(@Param("keyword") String keyword);
}
