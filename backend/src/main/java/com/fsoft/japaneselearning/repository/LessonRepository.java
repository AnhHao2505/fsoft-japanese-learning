package com.fsoft.japaneselearning.repository;

import com.fsoft.japaneselearning.model.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Long> {

    List<Lesson> findByCourseIdOrderByIdAsc(String courseId);

    @Query("SELECT l FROM Lesson l WHERE " +
           "LOWER(l.title) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(l.titleJp) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(l.content) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Lesson> searchByKeyword(@Param("keyword") String keyword);
}
