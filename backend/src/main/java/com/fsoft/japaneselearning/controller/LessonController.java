package com.fsoft.japaneselearning.controller;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
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

    private List<Lesson> lessons = new ArrayList<>();

    @PostConstruct
    public void init() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        InputStream is = new ClassPathResource("lessons.json").getInputStream();
        lessons = mapper.readValue(is, new TypeReference<List<Lesson>>() {});
    }

    @GetMapping("/lessons")
    public ResponseEntity<List<Lesson>> getAllLessons() {
        return ResponseEntity.ok(lessons);
    }

    @GetMapping("/lessons/{id}")
    public ResponseEntity<Lesson> getLessonById(@PathVariable Long id) {
        Optional<Lesson> lesson = lessons.stream()
                .filter(l -> l.getId().equals(id))
                .findFirst();
        return lesson.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/lessons/category/{category}")
    public ResponseEntity<List<Lesson>> getLessonsByCategory(@PathVariable String category) {
        List<Lesson> filtered = lessons.stream()
                .filter(l -> l.getCategory().equalsIgnoreCase(category))
                .toList();
        return ResponseEntity.ok(filtered);
    }
}
