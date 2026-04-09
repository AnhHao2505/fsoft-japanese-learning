package com.fsoft.japaneselearning.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lesson {
    private Long id;
    private String title;
    private String titleJp;
    private String category;
    private String level;
    private String content;
    private List<Vocabulary> vocabulary;
    private List<String> grammar;
    private List<String> examples;
}
