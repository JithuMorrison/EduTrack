create table location (
  pincode number constraint location_pincode_pk primary key,
  area varchar2(50),
  city varchar2(50),
  country varchar2(50)
);

create table student (
  student_id char(13) constraint student_student_id_pk primary key,
  name varchar2(50),
  batch date,
  email varchar2(50),
  type varchar2(10),
  address number constraint student_address_fk references location(pincode),
  dept varchar2(30),
  dob date
);

create table faculty (
  faculty_id char(13) constraint faculty_faculty_id_pk primary key,
  name varchar2(50),
  email varchar2(50),
  position char(20),
  address number constraint faculty_address_fk references location(pincode),
  dept varchar2(30),
  dob date
);

create table authors (
  publication_id char(10),
  author_id char(13),
  author_type varchar2(50),
  constraint authors_two_pk primary key (publication_id, author_id)
);

create table phone_no (
  id char(13),
  phone_no number,
  constraint phone_no_pk primary key (id, phone_no)
);

create table journal (
  issn number constraint journal_pk primary key,
  journal_name varchar2(50),
  impact_factor number,
  publisher varchar2(50)
);

create table article (
  doi char(10) constraint article_pk primary key,
  article_name varchar2(50),
  volume_no number,
  issue_no number,
  page_no number,
  date_of_publish date,
  issn number,
  field_of_study varchar2(50),
  constraint article_issn_fk foreign key (issn) references journal(issn)
);

create table conference (
  conf_id char(10) constraint pk_conference primary key,
  conf_name varchar2(50),
  organizer varchar2(50),
  venue number,
  date_of_conference date,
  isbn number,
  constraint fk_conference_venue foreign key (venue) references location(pincode)
);

create table paper (
  paper_id char(10) constraint pk_paper primary key,
  paper_title varchar2(50),
  date_of_publish date,
  conf_id char(10),
  field_of_study varchar2(50),
  constraint fk_paper_conference foreign key (conf_id) references conference(conf_id)
);
