CREATE OR REPLACE TRIGGER check_email_format
BEFORE INSERT OR UPDATE ON student
FOR EACH ROW
DECLARE
    v_email_pattern VARCHAR2(100) := '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.(com|org|edu|nz|au|in)$';
BEGIN
    IF NOT REGEXP_LIKE(:NEW.email, v_email_pattern) THEN
        RAISE_APPLICATION_ERROR(-20004, 'Invalid email format');
    END IF;
END;
/



CREATE OR REPLACE TRIGGER check_faculty_email_format
BEFORE INSERT OR UPDATE ON faculty
FOR EACH ROW
DECLARE
    v_email_pattern VARCHAR2(100) := '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|org|edu|nz|au|in)$';
BEGIN
    IF NOT REGEXP_LIKE(:NEW.email, v_email_pattern) THEN
        RAISE_APPLICATION_ERROR(-20005, 'Invalid email format');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER trg_student_insert
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    IF :NEW.type IN ('Research Scholar','UG','PG','Mtech') THEN
        -- If the type is valid, do nothing
        NULL;
    ELSE
        -- If the type is invalid, raise an error
        RAISE_APPLICATION_ERROR(-20001, 'Invalid Student Type');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER trg_faculty_insert
BEFORE INSERT ON faculty
FOR EACH ROW
BEGIN
    IF :NEW.position IN ('Professor','Associate Professor','Assistant Professor') THEN
        -- If the position is valid, do nothing
        NULL;
    ELSE
        -- If the position is invalid, raise an error
        RAISE_APPLICATION_ERROR(-20002, 'Invalid Faculty Position');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER trg_check_author_id
BEFORE INSERT ON authors
FOR EACH ROW
DECLARE
    v_student_count NUMBER;
    v_faculty_count NUMBER;
BEGIN
    -- Check if the author_id exists in the student table
    SELECT COUNT(*)
    INTO v_student_count
    FROM student
    WHERE student_id = :NEW.author_id;

    -- Check if the author_id exists in the faculty table
    SELECT COUNT(*)
    INTO v_faculty_count
    FROM faculty
    WHERE faculty_id = :NEW.author_id;

    -- If author_id exists in neither student nor faculty table, raise an error
    IF v_student_count = 0 AND v_faculty_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid Author ID');
    END IF;
END;
/



CREATE OR REPLACE TRIGGER trg_check_publication_id
BEFORE INSERT ON authors -- ensure this is the correct table name
FOR EACH ROW
DECLARE
    v_article_count NUMBER;
    v_paper_count NUMBER;
BEGIN
    -- Check if the publication_id exists in the article table (doi)
    SELECT COUNT(*)
    INTO v_article_count
    FROM article
    WHERE doi = :NEW.publication_id;

    -- Check if the publication_id exists in the paper table (paper_id)
    SELECT COUNT(*)
    INTO v_paper_count
    FROM paper
    WHERE paper_id = :NEW.publication_id;

    -- If neither doi nor paper_id exists, raise an error
    IF v_article_count = 0 AND v_paper_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Invalid DOI or Paper ID');
    END IF;
END;
/



CREATE OR REPLACE TRIGGER trg_check_student_or_faculty_id
BEFORE INSERT ON phone_no
FOR EACH ROW
DECLARE
    v_student_count NUMBER;
    v_faculty_count NUMBER;
BEGIN
    -- Check if the id exists in the student table
    SELECT COUNT(*)
    INTO v_student_count
    FROM student
    WHERE student_id = :NEW.id;

    -- Check if the id exists in the faculty table
    SELECT COUNT(*)
    INTO v_faculty_count
    FROM faculty
    WHERE faculty_id = :NEW.id;

    -- If id exists in neither student nor faculty table, raise an error
    IF v_student_count = 0 AND v_faculty_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Invalid Student ID or Faculty ID');
    END IF;
END;
/
