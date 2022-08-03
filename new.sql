CREATE TABLE timing (
    timing_id integer,
    timing_office integer, 
    timing_schoolclass_ID integer,
    timing_teacher_ID integer,
    timing_lesson varchar(100),
    timing_begin timestamp,
    timing_end timestamp
)

CREATE TABLE schoolclass (
    schoolclass_ID integer,
    schoolclass_yaer date,
    schoolclass_name varchar (100),
    schoolclass_struct_ID integer
)

CREATE TABLE struct (
    struct_ID integer,
    struct_fname varchar(100),
    struct_lname varchar(100),
    struct_row integer,
    struct_desk integer,
    struct_variant integer,
    struct_adress_ID integer,
    struct_tel integer
)

SELECT * FROM schoolclass
SELECT * FROM timing
SELECT * FROM struct

SELECT 
    struct_fname AS "ИМЯ",
    struct_lname AS "ФАМИЛИЯ",
    timing_begin AS "ВРЕМЯ НАЧАЛА УРОКА",
    timing_end AS "ВРЕМЯ ОКОНЧАНИЯ УРОКА",
    struct_row AS "РЯД",
    struct_desk AS "ПАРТА",
    struct_variant AS "ВАРИАНТ"
    FROM 
    timing RIGHT JOIN 
    (schoolclass RIGHT JOIN struct ON schoolclass_struct_ID = struct_ID) 
    ON timing_schoolclass_ID = schoolclass_ID