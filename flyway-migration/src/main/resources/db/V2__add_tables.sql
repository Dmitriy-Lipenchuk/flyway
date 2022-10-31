CREATE TABLE academic_performance
(
    student_id           INT     NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    lesson_id            INT     NOT NULL REFERENCES lesson (id) ON UPDATE CASCADE ON DELETE CASCADE,
    homework_start       TIMESTAMP,
    homework_end         TIMESTAMP,
    homework_grade       INT     NOT NULL DEFAULT 0,
    classroom_attendance BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT academic_performance_pk PRIMARY KEY (student_id, lesson_id)
);