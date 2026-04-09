package com.fsoft.japaneselearning.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Vocabulary {
    private String word;
    private String reading;
    private String meaning;
}
