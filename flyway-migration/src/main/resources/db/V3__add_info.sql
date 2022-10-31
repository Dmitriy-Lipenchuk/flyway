INSERT INTO teachers (name, surname, rank)
VALUES ('Alexey', 'Zhukov', 'Senior');

INSERT INTO students (name, surname, grade)
VALUES ('Dmitriy', 'Lipenchuk', 'Bachelor');

INSERT INTO course (name, description, duration)
VALUES ('Java ot slov k dely', 'Java course', interval '60 days');

INSERT INTO homework (description, points)
VALUES ('DB schema development', 12);

INSERT INTO lesson (course_id, homework_id, name, date)
values (1, 1, 'DB schema development', date '2022-10-26' + time '18:00');

INSERT INTO course_teachers (teacher_id, course_id)
VALUES (1, 1);

INSERT INTO course_students (student_id, course_id)
VALUES (1, 1);

INSERT INTO academic_performance (lesson_id, student_id, homework_start, homework_end, homework_grade, classroom_attendance)
VALUES (1, 1, date '2022-10-28' + time '15:00', null, 11, true);