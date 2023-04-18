create database session3_thuchanh1;
create table class(
classId int auto_increment primary key,
className varchar(200) not null,
startDate date ,
`status` tinyint 
);

create table student(
studentId int primary key auto_increment,
studentName varchar(100) not null,
address varchar(100),
phone varchar(11),
status tinyint ,
classId int,
foreign key(classId) references class(classId)
);

create table `subject`(
subId int auto_increment primary key,
subName varchar(200),
credit int,
status tinyint default(1)
);

create table mark (
markId int primary key auto_increment,
subId int,
foreign key (subId) references subject(subId),
stuId int,
foreign key (stuId) references student(studentId),
mark int ,
examTime tinyint 
);

-- bài thực hành 2
use session3_thuchanh1;
select * from student;
select * from student where status=true;
select * from subject where credit <10;
select s.studentId, s.studentName, c.className 
from student s join class c on s.classId=c.classId
where c.className="A1";

select s.studentId , s.studentName , sub.subName , m.mark
from student s join mark m on s.studentId=m.markId
join subject sub on m.subId=sub.subId
where sub.subName="CF";






