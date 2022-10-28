CREATE TABLE teachers
(
    id      SERIAL  NOT NULL PRIMARY KEY,
    name    VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    rank    VARCHAR NOT NULL
);

CREATE TABLE students
(
    id      SERIAL  NOT NULL PRIMARY KEY,
    name    VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    grade   VARCHAR NOT NULL
);

CREATE TABLE course
(
    id          SERIAL   NOT NULL PRIMARY KEY,
    name        VARCHAR  NOT NULL,
    description VARCHAR  NOT NULL,
    duration    INTERVAL NOT NULL
);

CREATE TABLE homework
(
    id          SERIAL  NOT NULL PRIMARY KEY,
    description VARCHAR NOT NULL,
    points      INT     NOT NULL
);

CREATE TABLE lesson
(
    id          SERIAL    NOT NULL PRIMARY KEY,
    course_id   INT       NOT NULL REFERENCES course (id) ON UPDATE CASCADE ON DELETE CASCADE,
    homework_id INT       NOT NULL REFERENCES homework (id) ON UPDATE CASCADE,
    name        VARCHAR   NOT NULL,
    date        TIMESTAMP NOT NULL
);

CREATE TABLE course_teachers
(
    teacher_id INT NOT NULL REFERENCES teachers (id) ON UPDATE CASCADE ON DELETE CASCADE,
    course_id  INT NOT NULL REFERENCES course (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT course_teachers_pk PRIMARY KEY (teacher_id, course_id)
);

CREATE TABLE course_students
(
    student_id INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    course_id  INT NOT NULL REFERENCES course (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT course_students_pk PRIMARY KEY (student_id, course_id)
);