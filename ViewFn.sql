CREATE OR REPLACE VIEW student_faculty_details AS SELECT 'Student' AS member_type, student_id AS member_id, name, batch AS joining_date, email, type, address, dept, dob FROM student UNION ALL SELECT 'Faculty' AS member_type, faculty_id AS member_id, name, NULL AS joining_date, email, position AS type, address, dept, dob FROM faculty;

CREATE OR REPLACE FUNCTION calculate_age(
    dob_in IN DATE
) RETURN NUMBER AS
    age NUMBER;
BEGIN
    age := TRUNC(MONTHS_BETWEEN(SYSDATE, dob_in) / 12);
    RETURN age;
END;
/
