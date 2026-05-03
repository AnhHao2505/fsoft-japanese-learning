package com.fsoft.japaneselearning.repository;

import com.fsoft.japaneselearning.model.Reading;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReadingRepository extends JpaRepository<Reading, Long> {
    List<Reading> findByCourseIdOrderBySortOrderAsc(String courseId);
}
