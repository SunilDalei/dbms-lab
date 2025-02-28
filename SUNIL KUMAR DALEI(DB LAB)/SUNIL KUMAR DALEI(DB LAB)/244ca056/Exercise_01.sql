--Exercise 1


-- 1. List all classrooms with a capacity greater than 50.
SQL> select * from classroom where capacity>50;

-- 2. Find the names of all instructors in the "Computer Science" department.
SQL> select name from instructor where dept_name='CSE';

-- 3. Retrieve the titles of all courses offered in the "Spring" semester of 2023.
SQL> select c.title from section s join course c on c.course_id=s.course_id  where  semester ='Fall' and year=2023;

-- 4. List all students who have taken more than 90 total credits.
SQL> select name from student where tot_cred>90;

-- 5. Find the names of all departments with a budget greater than ₹3,00,000,000.
SQL> select dept_name from department where budget>30000000;

-- 6. List all departments and their respective buildings.
SQL> select dept_name,building from department;

-- 7. Find the names of all students enrolled in the "Mechanical" department.
SQL> select name from student where dept_name='Mechanical';

-- 8. Retrieve the titles of all courses with 4 credits.
SQL> select title from course where credits=4;

-- 9. List all instructors who do not belong to any department.
SQL> select name from instructor where dept_name is NULL;

-- 10. Find the total number of classrooms in each building.
SQL> select building,count(room_number) total_rooms from classroom group by building;

-- 11. List all courses taught by the instructor with ID "INS01".
SQL> select c.title from course c join teaches t on c.course_id=t.course_id where t.id='INS01';

-- 12. Find the total number of students enrolled in each department.
SQL> select dept_name,count(id) total_students from student group by dept_name;

-- 13. Retrieve the names of students who have taken the course "CS10" and received an "AB" grade.
SQL> select s.name from student s join takes t on s.id=t.id where t.grade='AB' and t.course_id='CS10';

-- 14. List all instructors who earn a salary greater than ₹50,000.
SQL> select name from instructor where salary>50000;

-- 15. Find the average salary of instructors in each department.
SQL> select dept_name,avg(salary) average from instructor  where dept_name is not null group by dept_name;

-- 16. Retrieve the names of students who have not been assigned an advisor.
SQL> select s.name from student s left join advisor a on s.id=a.s_id where a.i_id is null;

-- 17. List all courses that have "CS10" as a prerequisite.
SQL> select c.title from course c join prereq p on c.course_id=p.course_id where p.prereq_id='CS10';

-- 18. Find the total number of sections taught in each building.
SQL> select building,count(sec_id) total_sections from section group by building;

-- 19. Retrieve the names of students who have taken at least one course in the "Spring" semester of 2022.
SQL> select s.name from student s join takes t on s.id=t.id where semester='Spring' and year=2022;

-- 20. List all classrooms that have not been assigned to any section.
SQL> select c.building,c.room_number from classroom c left join section s on c.room_number=s.room_number where s.room_number is null;

-- 21. List all courses offered by the "IT" department.
SQL> select dept_name,title  from course where dept_name='IT';

-- 22. Find the names of students who have taken courses in both "Fall" and "Winter" semesters.
SQL> select s.id,s.name,t1.course_id,t2.course_id from takes t1 join takes t2 on t1.id=t2.id join student s on s.id=t1.id where t1.semester='Fall' and t2.semester='Winter';

-- 23. Retrieve the names of instructors who have taught more than 1 sections.
SQL> select * from (select i.name,count(t.id) nos from instructor i join teaches t on t.id=i.id group by i.name) tb where tb.nos > 1;

-- 24. List all courses that have no prerequisites.
SQL> select *from course c left join prereq p on p.course_id=c.course_id where p.prereq_id is null;

-- 25. Find the average number of credits taken by students in each department.
SQL> select dept_name,avg(tot_cred) from student group by dept_name;

-- 26. Retrieve the names of students who have taken courses with the instructor "Dr Abhishek".
 SQL> select ins.name,tc.course_id,st.name from  instructor ins join teaches tc on tc.id=ins.id join takes tk on tk.course_id=tc.course_id join student st on st.id=tk.id where ins.name='Dr Abhishek';

-- 27. List all sections that are held in the "LHC-1" building.
 SQL> select *from section where building='LHC-1';

-- 28. Find the total budget allocated to all departments.
SQL> select dept_name,budget from department;

-- 29. Retrieve the names of students who have taken at least one course with a grade of "AB".
SQL> select distinct s.name from student s join takes tk on tk.id=s.id where grade='AB';

-- 30. List all instructors who have not taught any courses.
SQL> select ins.name from instructor ins left join teaches tc  on ins.id=tc.id where course_id is NULL;
 
-- 31. Find the names of students who have taken all courses offered by the "MACS" department.
SQL> select distinct st.name from  takes tk left join course c on tk.course_id=c.course_id join student st on st.id=tk.id  where c.dept_name='MACS';

-- 32. Retrieve the names of instructors who have taught every course in their department.

-- 33. List all students who have taken at least one course with every instructor in their department.

-- 34. Find the courses that have the highest number of prerequisites.

-- 35. Retrieve the names of students who have taken the same course more than once.

-- 36. List all instructors who have taught in every semester (Fall, Winter, Spring, Summer) in the year 2023.

-- 37. Find the departments where the average instructor salary is greater than the overall average salary.

-- 38. Retrieve the names of students who have taken courses in all available time slots.

-- 39. List all courses that have no prerequisites but are prerequisites for other courses.

-- 40. Find the students who have taken the most number of courses in a single semester.

-- 41. Find the students who have taken courses from all departments.

-- 42. Retrieve the names of instructors who have taught the same course in multiple semesters.

-- 43. List all courses that are prerequisites for more than 3 other courses.

-- 44. Find the departments where the total student credits exceed the department budget.

-- 48. Retrieve the names of instructors who have taught courses in all buildings.

-- 49. List all students who have taken courses with overlapping time slots.

-- 50. Find the courses that have the highest enrollment across all semesters.