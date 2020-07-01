create table student(
  id char(3) not null,
  name varchar2(255) not null,
  age number,
  sex varchar2(255),
  constraint student_pk primary key (id)
  );

insert into student(id,name,age,sex) values('001','zhangsan',18,'male');
insert into student(id,name,age,sex) values('002','lisi',20,'female');

create table subject(
  id char(4) not null,
  subject varchar2(255) not null,
  teacher varchar2(255) not null,
  description varchar2(255),
  constraint subject_pk primary key (id)
  );

insert into subject(id,subject,teacher,description) values('1001','Chinese','Mr.Wang','the exam is easy');
insert into subject(id,subject,teacher,description) values('1002','math','Miss Liu','the exam is difficult');

create table score(
  id number not null,
  student_id char(3) not null,
  subject_id char(4) not null,
  score number,
  constraint score_pk primary key (id),
  constraint student_fk foreign key (student_id) references student(id),
  constraint subject_fk foreign key (subject_id) references subject(id)
  );

insert into score(id,student_id,subject_id,score) values(1,'001','1001',80);
insert into score(id,student_id,subject_id,score) values(2,'002','1002',60);
insert into score(id,student_id,subject_id,score) values(3,'001','1001',70);
insert into score(id,student_id,subject_id,score) values(4,'002','1002',60.5);
