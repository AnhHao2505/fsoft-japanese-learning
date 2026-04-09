package com.fsoft.japaneselearning.controller;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fsoft.japaneselearning.model.Course;
import com.fsoft.japaneselearning.model.Lesson;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.annotation.PostConstruct;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class LessonController {

    private List<Course> courses = new ArrayList<>();

    @PostConstruct
    public void init() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        InputStream is = new ClassPathResource("courses.json").getInputStream();
        courses = mapper.readValue(is, new TypeReference<List<Course>>() {});
    }

    // === Course endpoints ===

    @GetMapping("/courses")
    public ResponseEntity<List<Course>> getAllCourses() {
        // Return courses without lessons for listing
        List<Course> summary = courses.stream().map(c -> {
            Course s = new Course();
            s.setId(c.getId());
            s.setName(c.getName());
            s.setNameJp(c.getNameJp());
            s.setDescription(c.getDescription());
            s.setLevel(c.getLevel());
            s.setIcon(c.getIcon());
            s.setLessons(null);
            return s;
        }).toList();
        return ResponseEntity.ok(summary);
    }

    @GetMapping("/courses/{courseId}")
    public ResponseEntity<Course> getCourseById(@PathVariable String courseId) {
        Optional<Course> course = courses.stream()
                .filter(c -> c.getId().equals(courseId))
                .findFirst();
        return course.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    // === Lesson endpoints ===

    @GetMapping("/courses/{courseId}/lessons")
    public ResponseEntity<List<Lesson>> getLessonsByCourse(@PathVariable String courseId) {
        Optional<Course> course = courses.stream()
                .filter(c -> c.getId().equals(courseId))
                .findFirst();
        return course.map(c -> ResponseEntity.ok(c.getLessons()))
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/courses/{courseId}/lessons/{lessonId}")
    public ResponseEntity<Lesson> getLesson(@PathVariable String courseId, @PathVariable Long lessonId) {
        Optional<Course> course = courses.stream()
                .filter(c -> c.getId().equals(courseId))
                .findFirst();
        if (course.isEmpty()) return ResponseEntity.notFound().build();

        Optional<Lesson> lesson = course.get().getLessons().stream()
                .filter(l -> l.getId().equals(lessonId))
                .findFirst();
        return lesson.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}
