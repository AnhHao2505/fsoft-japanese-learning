package com.fsoft.japaneselearning.controller;

import com.fsoft.japaneselearning.service.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class GrammarController {

    private final CourseService courseService;

    public GrammarController(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping("/courses/{courseId}/grammars")
    public ResponseEntity<List<String>> getGrammarsByCourse(@PathVariable String courseId) {
        return ResponseEntity.ok(courseService.getGrammarsByCourse(courseId));
    }
}
