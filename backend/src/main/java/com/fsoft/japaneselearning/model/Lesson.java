package com.fsoft.japaneselearning.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
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
@Table(name = "lessons")
@ToString(exclude = {"course", "vocabulary"})
public class Lesson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 200)
    private String title;

    @Column(name = "title_jp", length = 200)
    private String titleJp;

    @Column(length = 50)
    private String category;

    @Column(length = 10)
    private String level;

    @Column(columnDefinition = "TEXT")
    private String content;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    @JsonBackReference
    private Course course;

    @OneToMany(mappedBy = "lesson", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JsonManagedReference
    @OrderBy("id ASC")
    private List<Vocabulary> vocabulary = new ArrayList<>();

    @ElementCollection
    @CollectionTable(name = "lesson_grammar", joinColumns = @JoinColumn(name = "lesson_id"))
    @Column(name = "grammar_point", columnDefinition = "TEXT")
    @OrderColumn(name = "sort_order")
    private List<String> grammar = new ArrayList<>();

    @ElementCollection
    @CollectionTable(name = "lesson_examples", joinColumns = @JoinColumn(name = "lesson_id"))
    @Column(name = "example", columnDefinition = "TEXT")
    @OrderColumn(name = "sort_order")
    private List<String> examples = new ArrayList<>();
}
