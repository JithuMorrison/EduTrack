CREATE OR REPLACE PROCEDURE insert_author_with_paper_check(
    p_paper_id IN CHAR,
    p_paper_title IN VARCHAR2,
    p_date_of_publish IN DATE,
    p_conf_id IN CHAR,
    p_conf_name IN VARCHAR2,
    p_organizer IN VARCHAR2,
    p_venue IN NUMBER,
    p_date_of_conference IN DATE,
    p_isbn IN NUMBER,
    p_field_of_study IN VARCHAR2,
    p_author_id IN CHAR,
    p_author_type IN VARCHAR2
) AS
    v_paper_count NUMBER;
    v_conf_count NUMBER;
BEGIN
    -- Check if the paper exists
    SELECT COUNT(*)
    INTO v_paper_count
    FROM paper
    WHERE paper_id = p_paper_id;

    -- Check if the conference exists
    SELECT COUNT(*)
    INTO v_conf_count
    FROM conference
    WHERE conf_id = p_conf_id;

    -- If the paper exists, insert author only
    IF v_paper_count > 0 THEN
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_paper_id, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Author inserted successfully.');

    -- If the conference exists but the paper does not, insert paper and author
    ELSIF v_conf_count > 0 THEN
        -- Insert data into paper table
        INSERT INTO paper(paper_id, paper_title, date_of_publish, conf_id, field_of_study)
        VALUES(p_paper_id, p_paper_title, p_date_of_publish, p_conf_id, p_field_of_study);

        -- Insert data into authors table
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_paper_id, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Paper and Author inserted successfully.');
    
    -- If neither the paper nor the conference exists, insert all three
    ELSE
        -- Insert data into conference table
        INSERT INTO conference(conf_id, conf_name, organizer, venue, date_of_conference, isbn)
        VALUES(p_conf_id, p_conf_name, p_organizer, p_venue, p_date_of_conference, p_isbn);

        -- Insert data into paper table
        INSERT INTO paper(paper_id, paper_title, date_of_publish, conf_id, field_of_study)
        VALUES(p_paper_id, p_paper_title, p_date_of_publish, p_conf_id, p_field_of_study);

        -- Insert data into authors table
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_paper_id, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Conference, Paper, and Author inserted successfully.');
    END IF;
END;
/

CREATE OR REPLACE PROCEDURE delete_author_and_related_records(
    p_paper_id IN CHAR,
    p_author_id IN CHAR
) AS
    v_author_count NUMBER;
    v_paper_count NUMBER;
BEGIN
    -- Check if there are multiple authors for the given paper
    SELECT COUNT(*)
    INTO v_author_count
    FROM authors
    WHERE publication_id = p_paper_id;

    -- If there is more than one author, delete only the author record
    IF v_author_count > 1 THEN
        DELETE FROM authors
        WHERE publication_id = p_paper_id
        AND author_id = p_author_id;
        
        DBMS_OUTPUT.PUT_LINE('Author deleted successfully.');

    ELSE
        -- Check if the conference has multiple papers
        SELECT COUNT(*)
        INTO v_paper_count
        FROM paper
        WHERE conf_id = (SELECT conf_id FROM paper WHERE paper_id = p_paper_id);

        -- If the conference has more than one paper, delete only the paper and the author record
        IF v_paper_count > 1 THEN
            DELETE FROM authors
            WHERE publication_id = p_paper_id
            AND author_id = p_author_id;

            DELETE FROM paper
            WHERE paper_id = p_paper_id;
            
            DBMS_OUTPUT.PUT_LINE('Paper and Author deleted successfully.');

        ELSE
            -- Get the conference ID before deleting the paper
            DECLARE
                v_conf_id CHAR(10);
            BEGIN
                SELECT conf_id
                INTO v_conf_id
                FROM paper
                WHERE paper_id = p_paper_id;

                -- Delete the author record
                DELETE FROM authors
                WHERE publication_id = p_paper_id
                AND author_id = p_author_id;

                -- Delete the paper record
                DELETE FROM paper
                WHERE paper_id = p_paper_id;

                -- Delete the conference record
                DELETE FROM conference
                WHERE conf_id = v_conf_id;

                DBMS_OUTPUT.PUT_LINE('Conference, Paper, and Author deleted successfully.');
            END;
        END IF;
    END IF;
END;
/


CREATE OR REPLACE PROCEDURE insert_journal_with_article_check(
    p_doi IN CHAR,
    p_article_name IN VARCHAR2,
    p_volume_no IN NUMBER,
    p_issue_no IN NUMBER,
    p_page_no IN NUMBER,
    p_date_of_publish IN DATE,
    p_issn IN NUMBER,
    p_field_of_study IN VARCHAR2,
    p_journal_name IN VARCHAR2,
    p_impact_factor IN NUMBER,
    p_publisher IN VARCHAR2,
    p_author_id IN CHAR,
    p_author_type IN VARCHAR2
) AS
    v_article_count NUMBER;
    v_journal_count NUMBER;
BEGIN
    -- Check if the article exists
    SELECT COUNT(*)
    INTO v_article_count
    FROM article
    WHERE doi = p_doi;

    -- Check if the journal exists
    SELECT COUNT(*)
    INTO v_journal_count
    FROM journal
    WHERE issn = p_issn;

    -- If the article exists, insert author information
    IF v_article_count > 0 THEN
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_doi, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Author information inserted successfully.');

    -- If the journal exists but the article does not, insert the article and author
    ELSIF v_journal_count > 0 THEN
        -- Insert data into article table
        INSERT INTO article(doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study)
        VALUES(p_doi, p_article_name, p_volume_no, p_issue_no, p_page_no, p_date_of_publish, p_issn, p_field_of_study);

        -- Insert data into authors table
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_doi, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Article and Author inserted successfully.');
    
    -- If neither the article nor the journal exists, insert both along with author
    ELSE
        -- Insert data into journal table
        INSERT INTO journal(issn, journal_name, impact_factor, publisher)
        VALUES(p_issn, p_journal_name, p_impact_factor, p_publisher);

        -- Insert data into article table
        INSERT INTO article(doi, article_name, volume_no, issue_no, page_no, date_of_publish, issn, field_of_study)
        VALUES(p_doi, p_article_name, p_volume_no, p_issue_no, p_page_no, p_date_of_publish, p_issn, p_field_of_study);

        -- Insert data into authors table
        INSERT INTO authors(publication_id, author_id, author_type)
        VALUES(p_doi, p_author_id, p_author_type);
        
        DBMS_OUTPUT.PUT_LINE('Journal, Article, and Author inserted successfully.');
    END IF;
END;
/




CREATE OR REPLACE PROCEDURE delete_article_and_related_records(
    p_doi IN CHAR,
    p_author_id IN CHAR
) AS
    v_author_count NUMBER;
    v_article_count NUMBER;
    v_issn NUMBER;
BEGIN
    -- Check if there are multiple authors for the given article
    SELECT COUNT(*)
    INTO v_author_count
    FROM authors
    WHERE publication_id = p_doi;

    -- If there is more than one author, delete only the author record
    IF v_author_count > 1 THEN
        DELETE FROM authors
        WHERE publication_id = p_doi
        AND author_id = p_author_id;
        
        DBMS_OUTPUT.PUT_LINE('Author deleted successfully.');

    ELSE
        -- Check if the journal has multiple articles
        SELECT issn INTO v_issn FROM article WHERE doi = p_doi;

        SELECT COUNT(*)
        INTO v_article_count
        FROM article
        WHERE issn = v_issn;

        -- If the journal has more than one article, delete only the article and the author record
        IF v_article_count > 1 THEN
            DELETE FROM authors
            WHERE publication_id = p_doi
            AND author_id = p_author_id;

            DELETE FROM article
            WHERE doi = p_doi;
            
            DBMS_OUTPUT.PUT_LINE('Article and Author deleted successfully.');

        ELSE
            -- Delete the author record
            DELETE FROM authors
            WHERE publication_id = p_doi
            AND author_id = p_author_id;

            -- Delete the article record
            DELETE FROM article
            WHERE doi = p_doi;

            -- Delete the journal record
            DELETE FROM journal
            WHERE issn = v_issn;

            DBMS_OUTPUT.PUT_LINE('Journal, Article, and Author deleted successfully.');
        END IF;
    END IF;
END;
/



CREATE OR REPLACE PROCEDURE delete_student_if_no_authors(
    p_student_id IN CHAR
) AS
    v_author_count NUMBER;
BEGIN
    -- Check if there are any records in the authors table with the given student_id
    SELECT COUNT(*)
    INTO v_author_count
    FROM authors
    WHERE author_id = p_student_id;

    -- If no records found in authors table, delete from student table
    IF v_author_count = 0 THEN
        DELETE FROM student
        WHERE student_id = p_student_id;
        
        DBMS_OUTPUT.PUT_LINE('Student deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Student cannot be deleted as it is associated with authors.');
    END IF;
END;
/



CREATE OR REPLACE PROCEDURE delete_faculty_if_no_authors(
    p_faculty_id IN CHAR
) AS
    v_author_count NUMBER;
BEGIN
    -- Check if there are any records in the authors table with the given faculty_id
    SELECT COUNT(*)
    INTO v_author_count
    FROM authors
    WHERE author_id = p_faculty_id;

    -- If no records found in authors table, delete from faculty table
    IF v_author_count = 0 THEN
        DELETE FROM faculty
        WHERE faculty_id = p_faculty_id;
        
        DBMS_OUTPUT.PUT_LINE('Faculty deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Faculty cannot be deleted as it is associated with authors.');
    END IF;
END;
/
