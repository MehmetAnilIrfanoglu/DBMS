# Natural Join
select * 
from student, takes 
where student.ID = takes.ID;

select * 
from student join takes 
on student.ID = takes.ID;

select * 
from student natural join takes;

select * 
from instructor, teaches 
where instructor.ID=teaches.ID;

select * 
from instructor natural join teaches;

select name, course_id 
from instructor natural join teaches;

select name, course_id 
from instructor natural join teaches where instructor.dept_name='Accounting';

# Natural Left Outer Join
select * 
from course natural left outer join prereq;

select *
from student natural left join takes;

	# Find all students who have not taken a course
	select *
	from student natural left join takes
	where course_id is null;
    
# Natural Right Outer Join
select * 
from course natural right outer join prereq;

# Natural Full Outer Join
select * 
from course left outer join prereq 
on course.course_id=prereq.course_id
union all
select * 
from course right outer join prereq 
on course.course_id=prereq.course_id;