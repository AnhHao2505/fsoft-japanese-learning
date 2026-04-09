package com.fsoft.japaneselearning.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {
    private String id;
    private String name;
    private String nameJp;
    private String description;
    private String level;
    private String icon;
    private List<Lesson> lessons;
}
