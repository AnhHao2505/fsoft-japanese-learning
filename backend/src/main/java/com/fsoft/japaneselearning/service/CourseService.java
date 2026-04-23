package com.fsoft.japaneselearning.service;

import com.fsoft.japaneselearning.model.Course;
import com.fsoft.japaneselearning.model.Lesson;
import com.fsoft.japaneselearning.repository.CourseRepository;
import com.fsoft.japaneselearning.repository.LessonRepository;
import com.fsoft.japaneselearning.repository.VocabularyRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class CourseService {

    private final CourseRepository courseRepository;
    private final LessonRepository lessonRepository;
    private final VocabularyRepository vocabularyRepository;

    public CourseService(CourseRepository courseRepository,
                         LessonRepository lessonRepository,
                         VocabularyRepository vocabularyRepository) {
        this.courseRepository = courseRepository;
        this.lessonRepository = lessonRepository;
        this.vocabularyRepository = vocabularyRepository;
    }

    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }

    public Optional<Course> getCourseById(String id) {
        return courseRepository.findById(id);
    }

    public List<Lesson> getLessonsByCourse(String courseId) {
        return lessonRepository.findByCourseIdOrderByIdAsc(courseId);
    }

    public Optional<Lesson> getLessonById(Long id) {
        return lessonRepository.findById(id);
    }

    public List<Lesson> searchLessons(String keyword) {
        return lessonRepository.searchByKeyword(keyword);
    }
}
