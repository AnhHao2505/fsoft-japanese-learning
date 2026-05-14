package com.fsoft.japaneselearning.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "kanjis")
@ToString(exclude = "course")
public class Kanji {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    @JsonBackReference
    private Course course;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "lesson_id")
    @com.fasterxml.jackson.annotation.JsonIgnoreProperties({"course", "vocabulary", "grammar", "examples", "hibernateLazyInitializer", "handler"})
    private Lesson lesson;

    @Column(nullable = false, length = 10)
    private String character;

    @Column(length = 200)
    private String onyomi;

    @Column(length = 200)
    private String kunyomi;

    @Column(columnDefinition = "TEXT")
    private String meaning;

    @Column(name = "stroke_count")
    private Integer strokeCount;

    @Column(length = 10)
    private String level;

    @Column(name = "sort_order")
    private Integer sortOrder = 0;

    @ElementCollection
    @CollectionTable(name = "kanji_examples", joinColumns = @JoinColumn(name = "kanji_id"))
    @Column(name = "example", columnDefinition = "TEXT")
    @OrderColumn(name = "sort_order")
    private List<String> examples = new ArrayList<>();
}
