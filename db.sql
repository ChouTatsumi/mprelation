-- noinspection SqlNoDataSourceInspectionForFile

drop table if exists man;
drop table if exists company;
drop table if exists woman;
drop table if exists child;
drop table if exists tel;

create table man
(
    man_id        bigint(20) not null,
    name      varchar(30),
    lao_po_id bigint(20) not null,
    company_id bigint(20) not null
);


create table company
(
    company_id        bigint(20) not null,
    name      varchar(30)
);



create table woman
(
    woman_id          bigint(20) not null,
    name        varchar(30),
    lao_gong_id bigint(20) not null
);

create table child
(
    child_id         bigint(20) not null,
    name       varchar(30),
    lao_han_id bigint(20) not null,
    lao_ma_id bigint(20) not null
);


create table tel
(
    id         bigint(20) not null,
    tel       varchar(30),
    man_id bigint(20) not null
);

create table course
(
    course_id         bigint(20) not null,
    name       varchar(30)
);


create table student_course
(
    id         bigint(20) not null,
    student_id      bigint(20) not null,
    course_id      bigint(20) not null
);




-- noinspection SqlNoDataSourceInspectionForFile

insert into man(man_id, name, lao_po_id, company_id)
values (1, '����ԳС��', 1, 1),
       (2, '��������', 2, 1);
       
insert into company(company_id,name)
values (1,'�ٶ�'),
	   (2,'С��');

insert into woman(woman_id, name, lao_gong_id)
values (1, '����ԳС������', 1),
       (2, '������������', 2);

INSERT INTO child (child_id, name, lao_han_id, lao_ma_id)
VALUES (1, 'СС��', 1, 1),
       (2, 'СС��', 2, 2),
       (3, '����', 2, 1),
       (4, 'С��ͷ', 2, 1),
       (5, '�����', 1, 2);
       
       
INSERT INTO tel (id, tel, man_id)
VALUES (1, '139xxxxxx', 1),
       (2, '137xxxxxx', 1),
       (3, '158xxxxxx', 2),
       (4, '159xxxxxx', 1);
       
insert into course(course_id,name)
values  (1,'����'),
		(2,'Ӣ��'),
		(3,'��ѧ'),
		(4,'����'),
	    (5,'��ѧ');
	   
	   
	   
insert into student_course(id,student_id,course_id)
values  (1,1,1),
		(2,1,2),
		(3,1,3),
		(4,2,2),
 		(5,2,3),
	    (6,3,1);