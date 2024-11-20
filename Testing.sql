INSERT INTO location (pincode, area, city, country) VALUES (123456, 'Example Area', 'Example City', 'Example Country');

INSERT INTO location (pincode, area, city, country) VALUES (654321, 'Another Area', 'Another City', 'Another Country');

INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('S123456789828', 'John Doe', '01-JUN-2023', 'john.doe@example.com', 'Regular', 123456, 'Computer Science', '15-MAY-2000');

INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('S987654321098', 'Jane Smith', '15-SEP-2023', 'jane.smith@example.com', 'Regular', 654321, 'Electrical Engineering', '20-JUL-2001');

INSERT INTO journal (issn, journal_name, impact_factor, publisher) VALUES (1234567890, 'Example Journal', 3.75, 'Example Publisher');

INSERT INTO article (doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study) VALUES ('1234567890', 'Example Article', 5, 2, 100, '20-JUN-2004', 1234567890, 'Computer Science');

INSERT INTO authors (publication_id, author_id, author_type) VALUES ('1234567890', 'S123456789828', 'Main Author');

INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) VALUES ('C123456789', 'Example Conference', 'Example Organizer', 123456, '07-DEC-2004', 9876543210);

INSERT INTO paper (paper_id, paper_title, date_of_publish, conf_id, field_of_study) VALUES ('1234567890', 'Example Paper', '07-DEC-2004', 'C123456789', 'Computer Science');

-- Inserting into location table
INSERT INTO location (pincode, area, city, country) VALUES (111111, 'Downtown', 'Metropolis', 'United States');
INSERT INTO location (pincode, area, city, country) VALUES (222222, 'Suburbia', 'Smalltown', 'Canada');
INSERT INTO location (pincode, area, city, country) VALUES (333333, 'Seaside', 'Coastal City', 'Australia');

-- Inserting into student table
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('S111111111111', 'Alice Johnson', '01-JAN-2023', 'alice.johnson@example.com', 'Regular', 111111, 'Biology', '05-FEB-2002');
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('S222222222222', 'Bob Williams', '15-MAR-2023', 'bob.williams@example.com', 'Regular', 222222, 'History', '10-APR-2001');
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('S333333333333', 'Charlie Brown', '01-JUN-2023', 'charlie.brown@example.com', 'Regular', 333333, 'Mathematics', '15-JUL-2000');

-- Inserting into journal table
INSERT INTO journal (issn, journal_name, impact_factor, publisher) VALUES (9876543210, 'Science Review', 4.25, 'Science Publishing');
INSERT INTO journal (issn, journal_name, impact_factor, publisher) VALUES (5678901234, 'Medical Journal', 3.50, 'Medical Publications');
INSERT INTO journal (issn, journal_name, impact_factor, publisher) VALUES (4567890123, 'Engineering Today', 3.80, 'Engineering Society');

-- Inserting into article table
INSERT INTO article (doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study) VALUES ('9876543210', 'Scientific Breakthroughs', 10, 3, 150, '20-AUG-2005', 9876543210, 'Biology');
INSERT INTO article (doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study) VALUES ('5678901234', 'Medical Advances', 8, 2, 120, '15-JUL-2005', 5678901234, 'Medicine');
INSERT INTO article (doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study) VALUES ('4567890123', 'Engineering Innovations', 12, 1, 200, '10-SEP-2005', 4567890123, 'Engineering');

-- Inserting into authors table
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('9876543210', 'S111111111111', 'Main Author');
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('5678901234', 'S222222222222', 'Secondary Author');
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('4567890123', 'S333333333333', 'Contributing Author');

-- Inserting into conference table
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) VALUES ('C987654321', 'Science Symposium', 'Science Society', 111111, '15-MAR-2006', 1111111111);
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) VALUES ('C567890123', 'Medical Conference', 'Medical Association', 222222, '10-APR-2006', 2222222222);
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) VALUES ('C456789012', 'Engineering Expo', 'Engineering Institute', 333333, '20-JUN-2006', 3333333333);

-- Inserting into paper table
INSERT INTO paper (paper_id, paper_title, date_of_publish, conf_id, field_of_study) VALUES ('9876543210', 'Advancements in Biology', '15-MAR-2006', 'C987654321', 'Biology');
INSERT INTO paper (paper_id, paper_title, date_of_publish, conf_id, field_of_study) VALUES ('5678901234', 'Medical Research Findings', '10-APR-2006', 'C567890123', 'Medicine');
INSERT INTO paper (paper_id, paper_title, date_of_publish, conf_id, field_of_study) VALUES ('4567890123', 'Engineering Breakthroughs', '20-JUN-2006', 'C456789012', 'Engineering');

-- Inserting a faculty member
INSERT INTO faculty (faculty_id, name, email, position, address, dept, dob)  
VALUES ('F123456789', 'John Smith', 'john.smith@example.com', 'Professor', 123456, 'Computer Science', '20-JUN-1980');

-- Inserting another faculty member
INSERT INTO faculty (faculty_id, name, email, position, address, dept, dob)  
VALUES ('F987654321', 'Alice Johnson', 'alice.johnson@example.com', 'Associate Professor', 654321, 'Electrical Engineering', '20-SEP-1975');

-- Inserting one more faculty member
INSERT INTO faculty (faculty_id, name, email, position, address, dept, dob)  
VALUES ('F456789012', 'David Brown', 'david.brown@example.com', 'Assistant Professor', 111111, 'Mechanical Engineering', '20-MAR-1990');

-- Inserting a conference attended by a faculty member
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) 
VALUES ('C123456789', 'Science Symposium', 'Science Society', 123456, '20-JUN-2024', '9781234567890');

-- Inserting another conference attended by a faculty member
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) 
VALUES ('C987654321', 'Engineering Expo', 'Engineering Institute', 654321, '20-JUL-2024', '9780987654321');

-- Inserting one more conference attended by a faculty member
INSERT INTO conference (conf_id, conf_name, organizer, venue, date_of_conference, isbn) 
VALUES ('C456789012', 'Medical Conference', 'Medical Association', 111111, '20-SEP-2024', '9784567890123');

-- Linking a faculty member to a conference
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('4567890123', 'F123456789', 'Faculty');

-- Linking a student to the same conference
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('4567890123', 'S123456789828', 'Student');

-- Insert into location table
INSERT INTO location (pincode, area, city, country) VALUES (123456, 'Example Area', 'Example City', 'Example Country');
INSERT INTO location (pincode, area, city, country) VALUES (654321, 'Another Area', 'Another City', 'Another Country');

-- Insert into student table
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) 
VALUES ('S123456789828', 'John Doe', '01-JUN-2023', 'john.doe@example.com', 'Regular', 123456, 'Computer Science', '15-MAY-2000');
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) 
VALUES ('S987654321098', 'Jane Smith', '15-SEP-2023', 'jane.smith@example.com', 'Regular', 654321, 'Electrical Engineering', '20-JUL-2001');

-- Insert into faculty table
INSERT INTO faculty (faculty_id, name, email, position, address, dept, dob) 
VALUES ('F123456789', 'John Smith', 'john.smith@example.com', 'Professor', 123456, 'Computer Science', '15-MAY-1980');
INSERT INTO faculty (faculty_id, name, email, position, address, dept, dob) 
VALUES ('F987654321', 'Alice Johnson', 'alice.johnson@example.com', 'Associate Professor', 654321, 'Electrical Engineering', '20-SEP-1975');

-- Valid insert into authors table
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('PUB1234567', 'S123456789828', 'Student');
INSERT INTO authors (publication_id, author_id, author_type) VALUES ('PUB7654321', 'F123456789', 'Faculty');

insert into location values (654321,'Mappedu','Chengalpattu','India');
    
INSERT INTO student (student_id, name, batch, email, type, address, dept, dob) VALUES ('3122225001051', 'Jithu Morrison', '28-OCT-2022', 'jane.smith@example.com', 'UG', 654321, 'Computer Science', '20-JUN-2004');


insert into phone_no values ('3122225001051',8754550999);

select * from student where address = (select pincode from location where city = 'Another City');

select * from location;

SELECT c.conf_id, c.conf_name, c.organizer, c.venue, c.date_of_conference, c.isbn,
       p.paper_id, p.paper_title, p.date_of_publish, p.field_of_study
FROM authors a
JOIN paper p ON a.publication_id = p.paper_id
JOIN conference c ON p.conf_id = c.conf_id
JOIN student s ON a.author_id = s.student_id
WHERE s.name = 'John Doe';

SELECT c.conf_id, c.conf_name, c.organizer, c.venue, c.date_of_conference, c.isbn,
       p.paper_id, p.paper_title, p.date_of_publish, p.field_of_study
FROM authors a
JOIN paper p ON a.publication_id = p.paper_id
JOIN conference c ON p.conf_id = c.conf_id
JOIN faculty f ON a.author_id = f.faculty_id
WHERE f.name = 'John Smith';

SELECT j.issn, j.journal_name, j.impact_factor, j.publisher,
       a.doi, a.article_name, a.volume_no, a.issue_no, a.page_no, a.date_of_publish, a.field_of_study
FROM authors au
JOIN article a ON au.publication_id = a.doi
JOIN journal j ON a.issn = j.issn
JOIN student s ON au.author_id = s.student_id
WHERE s.name = 'John Doe';

SELECT j.issn, j.journal_name, j.impact_factor, j.publisher,
       a.doi, a.article_name, a.volume_no, a.issue_no, a.page_no, a.date_of_publish, a.field_of_study
FROM authors au
JOIN article a ON au.publication_id = a.doi
JOIN journal j ON a.issn = j.issn
JOIN faculty f ON au.author_id = f.faculty_id
WHERE f.name = 'John Smith';

SELECT c.conf_id, c.conf_name, c.organizer, c.venue, c.date_of_conference, c.isbn,
       COUNT(*) AS num_authors,
       p.paper_id, p.paper_title, p.date_of_publish, p.field_of_study
FROM conference c
JOIN paper p ON c.conf_id = p.conf_id
JOIN authors a ON a.publication_id = p.paper_id
GROUP BY c.conf_id, c.conf_name, c.organizer, c.venue, c.date_of_conference, c.isbn,
         p.paper_id, p.paper_title, p.date_of_publish, p.field_of_study
HAVING COUNT(*) > 1;

SELECT j.issn, j.journal_name, j.impact_factor, j.publisher,
       COUNT(*) AS num_authors,
       a.doi, a.article_name, a.volume_no, a.issue_no, a.page_no, a.date_of_publish, a.field_of_study
FROM journal j
JOIN article a ON a.issn = j.issn
JOIN authors au ON au.publication_id = a.doi
GROUP BY j.issn, j.journal_name, j.impact_factor, j.publisher,
         a.doi, a.article_name, a.volume_no, a.issue_no, a.page_no, a.date_of_publish, a.field_of_study
HAVING COUNT(*) > 1;

update conference set conf_name = 'Updated Conference Name', organizer = 'Updated Organizer', venue = 'Updated Venue', date_of_conference = TO_DATE('2024-07-01', 'YYYY-MM-DD'), isbn = 9876543210 where conf_id = 'Your_Conference_ID';


update paper set paper_title = 'Updated Paper Title', date_of_publish = TO_DATE('2024-07-01', 'YYYY-MM-DD'), field_of_study = 'Updated Field of Study' where paper_id = 'Your_Paper_ID';


update journal set journal_name = 'Updated Journal Name', impact_factor = 1.8, publisher = 'Updated Publisher' where issn = 'Your_Journal_ISSN';


update article set article_name = 'Updated Article Name', volume_no = 2, issue_no = 2, page_no = 100, date_of_publish = TO_DATE('2024-07-01', 'YYYY-MM-DD'), field_of_study = 'Updated Field of Study' where doi = 'Your_Article_DOI';


update student set name = 'New Name', batch = to_date('2024-06-15', 'YYYY-MM-DD'), email = 'newemail@example.com', type = 'New Type', address = 123456, dept = 'New Department', dob = to_date('2000-01-01', 'YYYY-MM-DD') where student_id = 'Your_Student_ID';


update faculty set name = 'New Name', email = 'newemail@example.com', position = 'New Position', address = 123456, dept = 'New Department', dob = to_date('1980-01-01', 'YYYY-MM-DD') where faculty_id = 'Your_Faculty_ID';

BEGIN
    insert_member(
        member_id => 'S123456789101',
        member_name => 'Emily Clark',
        member_email => 'emily.clark@example.com',
        member_pos => 'Regular',
        member_address => 123456,
        member_dept => 'Biology',
        member_dob => '10-JUL-2002',
        member_type => 'Student',
        member_batch => '01-JAN-2022',
        phone => 1234567890
    );
END;
/


BEGIN
    insert_member(
        member_id => 'F123456789023',
        member_name => 'Michael Brown',
        member_email => 'michael.brown@example.com',
        member_pos => 'Professor',
        member_address => 654321,
        member_dept => 'Chemistry',
        member_dob => '15-AUG-1985',
        member_type => 'Faculty',
        member_batch => NULL,
        phone => 9876543210
    );
END;
/


BEGIN
    insert_member(
        member_id => 'M001',
        member_name => 'John Doe',
        member_email => 'johndoe@example.com',
        member_pos => 'Professor',
        member_address => 654321,
        member_dept => 'Computer Science',
        member_dob => TO_DATE('1970-01-01', 'YYYY-MM-DD'),
        member_type => 'Faculty',
        member_batch => NULL,
        phone => 9876543210
    );
END;
/


EXECUTE insert_author_with_paper_check('paper_id_2', 'Paper Title 2', TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'conf_id_1', 'Conference Name 1', 'Organizer 1', 123456, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 1234567890, 'Field of Study 1', 'S23456789012', 'Author Type 2');


EXECUTE insert_journal_with_article_check('doi_1', 'Article Name 1', 1, 1, 1, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 1234567890, 'Field of Study 1', 'Journal Name 1', 1.5, 'Publisher 1', 'S23456789012', 'Author Type 1');


EXECUTE delete_author_and_related_records('paper_id_2', 'S23456789012');


EXECUTE delete_article_and_related_records('doi_1', 'S23456789012');


EXECUTE delete_student_if_no_authors('Your_Student_ID');


EXECUTE delete_faculty_if_no_authors('Your_Faculty_ID');
