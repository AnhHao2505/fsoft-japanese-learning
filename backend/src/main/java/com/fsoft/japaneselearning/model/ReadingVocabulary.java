package com.fsoft.japaneselearning.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "reading_vocabularies")
@ToString(exclude = "reading")
public class ReadingVocabulary {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "reading_id", nullable = false)
    @JsonBackReference
    private Reading reading;

    @Column(nullable = false, length = 100)
    private String word;

    @Column(name = "reading", length = 200)
    private String readingText; // mapped from 'reading' column

    @Column(columnDefinition = "TEXT")
    private String meaning;

    @Column(name = "sort_order")
    private Integer sortOrder = 0;
}
