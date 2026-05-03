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
@Table(name = "readings")
@ToString(exclude = {"course", "vocabularies", "grammars"})
public class Reading {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    @JsonBackReference
    private Course course;

    @Column(nullable = false, length = 200)
    private String title;

    @Column(name = "title_jp", length = 200)
    private String titleJp;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String passage;

    @Column(name = "passage_translation", columnDefinition = "TEXT")
    private String passageTranslation;

    @Column(name = "sort_order")
    private Integer sortOrder = 0;

    @OneToMany(mappedBy = "reading", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JsonManagedReference
    @OrderBy("sortOrder ASC, id ASC")
    private List<ReadingVocabulary> vocabularies = new ArrayList<>();

    @OneToMany(mappedBy = "reading", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JsonManagedReference
    @OrderBy("sortOrder ASC, id ASC")
    private List<ReadingGrammar> grammars = new ArrayList<>();
}
