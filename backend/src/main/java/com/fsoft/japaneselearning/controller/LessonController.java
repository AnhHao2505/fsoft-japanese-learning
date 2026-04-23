package com.fsoft.japaneselearning.controller;

import com.fsoft.japaneselearning.model.Course;
import com.fsoft.japaneselearning.model.Lesson;
import com.fsoft.japaneselearning.service.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class LessonController {

    private final CourseService courseService;

    public LessonController(CourseService courseService) {
        this.courseService = courseService;
    }

    // === Course endpoints ===

    @GetMapping("/courses")
    public ResponseEntity<List<Course>> getAllCourses() {
        List<Course> courses = courseService.getAllCourses();
        // Return courses without lessons for listing
        courses.forEach(c -> c.setLessons(null));
        return ResponseEntity.ok(courses);
    }

    @GetMapping("/courses/{courseId}")
    public ResponseEntity<Course> getCourseById(@PathVariable String courseId) {
        return courseService.getCourseById(courseId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    // === Lesson endpoints ===

    @GetMapping("/courses/{courseId}/lessons")
    public ResponseEntity<List<Lesson>> getLessonsByCourse(@PathVariable String courseId) {
        List<Lesson> lessons = courseService.getLessonsByCourse(courseId);
        return ResponseEntity.ok(lessons);
    }

    @GetMapping("/courses/{courseId}/lessons/{lessonId}")
    public ResponseEntity<Lesson> getLesson(@PathVariable String courseId,
                                             @PathVariable Long lessonId) {
        return courseService.getLessonById(lessonId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    // === Search ===

    @GetMapping("/search")
    public ResponseEntity<List<Lesson>> search(@RequestParam String q) {
        if (q == null || q.trim().isEmpty()) {
            return ResponseEntity.ok(List.of());
        }
        List<Lesson> results = courseService.searchLessons(q.trim());
        return ResponseEntity.ok(results);
    }
}
