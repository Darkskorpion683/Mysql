select first_name,last_name from student;
select instructor_id,tenured from instructor;
select s.first_name, s.last_name , a.first_name,a.last_name from instructor a join student s on s.advisor_id =a.instructor_id;
select s.first_name, s.last_name , a.first_name,a.last_name from instructor a left join student s on s.advisor_id =a.instructor_id;
select a.first_name,a.last_name,Count(s.num_credits) from instructor a join course s on s.instructor_id =a.instructor_id group by a.first_name,a.last_name;
select course_id ,course_name from course where course_name like '%3000%';
select c.course_id , i.first_name ,i.last_name ,count(c.num_credits) from instructor i join course c on c.instructor_id =i.instructor_id join student s on
s.advisor_id =i.instructor_id where s.student_id=1 group by c.course_id , i.first_name ,i.last_name ;