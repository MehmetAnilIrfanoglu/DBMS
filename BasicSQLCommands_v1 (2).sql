# select Clause
select name from instructor;

select dept_name from instructor;

	# distinct Keyword
select distinct dept_name from instructor;

	# all Keyword
select all dept_name from instructor;

	# All attributes
select * from instructor;

	# Literals
select '437';

select '437' as FOO;

select 'A' from instructor;

	# Arithmetic Operations
select ID, name, salary/12 from instructor;

select ID, name, salary/12 as monthly_salary from instructor;

# where Clause
select name from instructor 
where dept_name='Comp. Sci.';

select name from instructor 
where dept_name='Comp. Sci.' and salary > 80000;

# from Clause
select * from instructor, teaches;

select name, course_id from instructor, teaches
 where instructor.ID=teaches.ID;

select name, course_id from instructor, teaches 
where instructor.ID=teaches.ID and 
dept_name='Comp. Sci.';

# Natural Join
select * from instructor, teaches 
where instructor.ID=teaches.ID;

select * from instructor natural join teaches;

select name, course_id from instructor natural join teaches;

select name, course_id from instructor natural join teaches where instructor.dept_name='Accounting';

# Rename Operation
select * from instructor T, instructor S
where S.dept_name='Comp. Sci.' and T.salary > S.salary order by S.salary desc;

select distinct T.name from instructor as T, instructor as S
where S.dept_name='Comp. Sci.' and T.salary > S.salary;

select T.name from instructor as T, instructor as S
 where T.salary > S.salary and S.dept_name='Comp. Sci.';

select T.name from instructor T, instructor S where T.salary > S.salary and S.dept_name='Comp. Sci.';

# String Operations
select name from instructor where name like '%ol%';

select name from instructor where name like '_ol_';

select dept_name from department 
where building like '%Watson%';

select course_id from course 
where course_id like 'BIO-%';

select course_id from course 
where course_id like '2_\%' escape '\\';

#insert into instructor values('10010', '100%', 'Comp. Sci.', '61000');
#select * from instructor where name like '1_0\%' escape '\\';
#delete from instructor where name like '1_0\%' escape '\\';

select 'comp. sci.' = 'Comp. Sci.';

select binary 'comp. sci.' = 'Comp. Sci.';

select concat('comp. ', 'sci.');

select upper('comp. sci.');

select lower('Comp. Sci.');

select char_length('Comp. Sci.');

select substring('Comp. Sci.', 7);

select '    comp. sci.';
select trim('    comp. sci.');

# Ordering
select distinct name from instructor order by name;

select distinct name from instructor
 order by name desc;

select distinct name, dept_name from instructor 
order by dept_name, name;

# Between operator
select name from instructor 
where salary between 90000 and 100000;

# Tuple Comparison
select name, course_id from instructor, teaches 
where (instructor.ID, dept_name) = (teaches.ID, 'Biology');

# Set Operations
	# union
(select course_id from section 
where semester='Fall' and year=2009)
 union
 (select course_id from section 
 where semester='Spring' and year=2010);

	# intersect
select * from section S, section T 
where S.course_id=T.course_id and 
S.semester='Fall' and S.year=2009
 and T.semester='Spring' and T.year=2010;

	# except
select course_id from section 
where semester='Spring' and year=2010;

select course_id
from section
where course_id not in 
(select course_id from section 
where semester='Spring' and year=2010);
select *
from section
where (semester='Fall' and year=2009) and course_id not in (select course_id from section where semester='Spring' and year=2010);

select *
 from instructor T, instructor S;

select distinct *
 from instructor T, instructor S 
 where T.salary < S.salary;

select distinct salary from instructor;

select distinct salary from instructor 
where salary not in 
(select distinct T.salary 
from instructor T, instructor S 
where T.salary < S.salary);

# Including Duplicates
(select course_id from section 
where semester='Fall' and year=2009) 
union all (select course_id from section 
where semester='Spring' and year=2010);

# Null Values
select 5 + null;

select name from instructor where salary is null;

# Three Valued Logic
select 5 < null;

select null != null;

select null = null;

select null or true;

select null or false;

select null or null;

select null and true;

select null and false;

select null and null;

select not null;

# Aggregate Functions
	# avg
select avg(salary) from instructor 
where dept_name='Comp. Sci.';

	# count
select count(distinct ID) from teaches
 where semester='Spring' and year=2010;

select count(*) from course;

		# group by
select dept_name, avg(salary) as avg_salary 
from instructor 
group by dept_name;

		# having clause
select dept_name, avg(salary) 
from instructor 
where salary > 40000
group by dept_name 
having avg(salary) > 42000;

select sum(salary) 
from instructor;

# Nested Subqueries
	# in the where clause
		# Set Membership
			# in connective
select distinct course_id 
from section 
where semester='Fall' and year=2009 and course_id in 
	(select course_id 
	from section 
    where semester='Spring' and year=2010);

			#not in connective
select distinct course_id 
from section 
where semester='Fall' and year=2009 and course_id not in 
	(select course_id 
    from section 
    where semester='Spring' and year=2010);

select course_id, sec_id, semester, year 
    from teaches 
    where teaches.ID=10101;

select * 
from takes 
where (course_id, sec_id, semester, year) in 
	(select course_id, sec_id, semester, year 
    from teaches 
    where teaches.ID=10101);

select count(distinct takes.ID) from 
takes, teaches 
where takes.course_id = teaches.course_id and 
teaches.ID=10101;

		#Set Comparison
			#some clause
select distinct T.name 
from instructor T, instructor S 
where T.salary > S.salary and S.dept_name='Biology';

select *
from instructor 
where salary > some 
	(select salary 
    from instructor 
    where dept_name='Biology');

			#all clause
select name 
from instructor 
where salary > all 
	(select salary 
    from instructor 
    where dept_name='Biology');

		#Empty Relations
			#exists clause
select course_id 
from section S 
where semester='Fall' and year=2009 and exists 
	(select * 
    from section as T 
    where semester='Spring' and year=2010 and S.course_id=T.course_id);

select * 
from section S, section T 
where T.semester='Spring' and T.year=2010 and S.course_id = T.course_id;

select * 
from section S, section T 
where S.semester='Fall' and S.year=2009 and T.semester='Spring' and T.year=2010 and S.course_id=T.course_id;

			#not exists clause
select S.ID, S.name 
from student S where not exists 
	(select course_id 
    from course 
    where dept_name='Biology' not in 
		(select T.course_id 
        from takes T 
        where S.ID=T.ID));
        
select distinct course_id  from student S, takes T where S.ID = T.ID;

			#unique clause
select T.course_id 
from course T 
where distinct 
	(select R.course_id 
    from section R 
    where T.course_id=R.course_id and R.year=2009);

select course_id, count(course_id) as counter 
from section 
where year = 2009 
group by course_id 
having counter = 1;

	# in the from clause
select dept_avg.dept_name, dept_avg.avg_salary 
from (select dept_name, avg(salary) as avg_salary 
	  from instructor 
      group by dept_name) as dept_avg
where avg_salary > 42000;

select dept_name, avg_salary 
from (select dept_name, avg(salary) 
	 from instructor 
     group by dept_name) as average_instructor(dept_name, avg_salary) 
where avg_salary > 42000;

		#with clause
with max_budget(value) as 
	(select max(budget) 
    from department) 
select department.dept_name 
from department, max_budget 
where department.budget=max_budget.value;

with dept_total(dept_name, value) as 
	(select dept_name, sum(salary) 
    from instructor 
    group by dept_name), 
    dept_total_avg(value) as 
    (select avg(value) 
    from dept_total)
select dept_name 
from dept_total, dept_total_avg 
where dept_total.value > dept_total_avg.value;

# in the select clause
	# scalar subquery
select dept_name, (select count(*) 
				  from instructor 
                  where department.dept_name=instructor.dept_name) as num_instructors 
from department;

# Modification of the Database
	# deletion
delete from instructor;

delete from instructor 
where dept_name='Finance';
    
delete from instructor 
where dept_name in 
	(select dept_name 
    from department 
    where building='Watson');

select * 
from instructor;    

select * 
from instructor 
where dept_name in 
	(select dept_name 
    from department 
    where building='Watson');
    
delete from instructor
where salary < (select avg(salary)
				from instructor);
                
with avg_salary(value) as 
	(select avg(salary) 
    from instructor) 
select * 
from instructor, avg_salary
where salary < value;

	# insertion
insert into course 
values('CS-437', 'Database Systems', 'Comp. Sci.', 4);

insert into student 
values('3003', 'Green', 'Finance', null);

insert into student 
	select ID, name, dept_name, 0 
    from instructor;

insert into instructor 
values('53466', 'Samet', 'Comp. Sci.', '68843');

	# update
update instructor 
set salary=salary*1.03 
where salary>100000;

update instructor 
set salary=salary*1.05 
where salary <= 100000;

		# case statement
update instructor 
set salary = case 
				  when salary <= 100000 then salary*1.05 
                  else salary*1.03 
			 end;

		# update with scalar subqueries
update student S 
set tot_cred = 
	(select sum(credits) 
    from takes, course 
    where takes.course_id=course.course_id and S.ID=takes.ID and takes.grade != 'F' and takes.grade is not null);
    

update student S 
set tot_cred = 
	(select case
				when sum(credits) is not null then sum(credits) 
				else 0 
			end 
	from takes, course 
    where takes.course_id=course.course_id and S.ID=takes.ID and takes.grade != 'F' and takes.grade is not null);