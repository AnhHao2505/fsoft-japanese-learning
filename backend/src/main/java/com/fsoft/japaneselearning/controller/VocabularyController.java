package com.fsoft.japaneselearning.controller;

import com.fsoft.japaneselearning.model.Vocabulary;
import com.fsoft.japaneselearning.service.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class VocabularyController {

    private final CourseService courseService;

    public VocabularyController(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping("/vocabularies")
    public ResponseEntity<List<Vocabulary>> getAllVocabularies() {
        return ResponseEntity.ok(courseService.getAllVocabularies());
    }

    @GetMapping("/courses/{courseId}/vocabularies")
    public ResponseEntity<List<Vocabulary>> getVocabulariesByCourse(@PathVariable String courseId) {
        return ResponseEntity.ok(courseService.getVocabulariesByCourse(courseId));
    }
}
