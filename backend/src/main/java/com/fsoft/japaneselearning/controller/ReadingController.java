package com.fsoft.japaneselearning.controller;

import com.fsoft.japaneselearning.model.Reading;
import com.fsoft.japaneselearning.service.ReadingService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ReadingController {

    private final ReadingService readingService;

    public ReadingController(ReadingService readingService) {
        this.readingService = readingService;
    }

    @GetMapping("/courses/{courseId}/readings")
    public ResponseEntity<List<Reading>> getReadingsByCourse(@PathVariable String courseId) {
        List<Reading> readings = readingService.getReadingsByCourse(courseId);
        // Exclude huge text properties for listing to save bandwidth
        readings.forEach(r -> {
            r.setPassage(null);
            r.setVocabularies(null);
            r.setGrammars(null);
        });
        return ResponseEntity.ok(readings);
    }

    @GetMapping("/courses/{courseId}/readings/{readingId}")
    public ResponseEntity<Reading> getReading(@PathVariable String courseId,
                                              @PathVariable Long readingId) {
        return readingService.getReadingById(readingId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}
