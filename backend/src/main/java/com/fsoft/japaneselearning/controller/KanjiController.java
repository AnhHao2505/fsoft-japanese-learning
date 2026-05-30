package com.fsoft.japaneselearning.controller;

import com.fsoft.japaneselearning.model.Kanji;
import com.fsoft.japaneselearning.service.KanjiService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class KanjiController {

    private final KanjiService kanjiService;

    public KanjiController(KanjiService kanjiService) {
        this.kanjiService = kanjiService;
    }

    @GetMapping("/courses/{courseId}/kanjis")
    public ResponseEntity<List<Kanji>> getKanjisByCourse(@PathVariable String courseId) {
        List<Kanji> kanjis = kanjiService.getKanjisByCourse(courseId);
        return ResponseEntity.ok(kanjis);
    }

    @GetMapping("/courses/{courseId}/kanjis/{kanjiId}")
    public ResponseEntity<Kanji> getKanji(@PathVariable String courseId,
                                          @PathVariable Long kanjiId) {
        return kanjiService.getKanjiById(kanjiId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}
