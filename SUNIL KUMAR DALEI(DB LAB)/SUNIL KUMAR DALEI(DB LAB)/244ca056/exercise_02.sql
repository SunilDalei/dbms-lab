-- 1. List all students with a total credit count of 0.
SELECT ID, NAME, DEPT_NAME, TOT_CRED FROM STUDENT WHERE TOT_CRED = 0;

-- 2. Find the names of all courses offered by the "Physics" department.
select title from course where dept_name='Physics';

-- 3. Retrieve the names of all instructors who earn exactly ₹124651.41.
select name from instructor where salary=124651.41;

-- 4. List all classrooms with a capacity of exactly 10.
select *from classroom where capacity=10;

-- 5. Find the total number of courses offered in the "Summer" semester.
select count(course_id) from section where semester='Summer';

-- 6. List all students who have taken exactly 30 total credits.
select name,tot_cred from student where tot_cred=30;

-- 7. Find the names of all courses offered by the "History" department.
select title from course where dept_name='History';

-- 8. Retrieve the names of all instructors who earn more than ₹100,000.
 select name from instructor where salary>100000;

-- 9. List all classrooms located in the "Taylor" building.
select *from classroom where building='Taylor';

-- 10. Find the total number of courses offered in the "Winter" semester.
select count(course_id) from section where semester='Winter'; 

-- 11. List all students who have taken courses with a grade of "C" or lower.
select s.name from student s join takes t on s.id=t.id where t.grade in('C','C-');

-- 12. Retrieve the names of instructors who have taught in the "Fall" semester of 2002.
select ins.name from instructor ins join teaches tc on ins.id=tc.id where tc.semester='Fall' and year=2002;

-- 13. Find the average capacity of classrooms in each building.
 select building,avg(capacity) from classroom group by building;

-- 14. List all courses that have more than 3 credits.
select * from course where credits>3;

-- 15. Retrieve the names of students who have taken courses in the "Chandler" building.
select distinct s.name,sec.building from student s join takes tk on s.id=tk.id join section sec on sec.course_id=tk.course_id  where sec.building='Chandler';

-- 16. Find the total number of students advised by each instructor.
select i.name,count(*)total_students from instructor i join advisor a on i.id=a.i_id group by i.id,i.name;

-- 17. List all sections that do not have a classroom assigned.
select * from section where room_number is null;

-- 18. Retrieve the names of students who have taken courses with the highest number of credits.
select distinct s.name from student s join takes t on s.id=t.id join course c on t.course_id=c.course_id join(select max(credits) credits from course)mc on c.credits=mc.credits;

-- 19. Find the departments with the highest average instructor salary.
 select dept_name from instructor group by dept_name having avg(salary)=(select max(avg_salary) from(select avg(salary)avg_salary from instructor group by dept_name));

-- 20. List all courses that have been taught by more than one instructor.

-- 21. List all students who have taken courses with a grade of "A" in the "Fall" semester of 2022.

-- 22. Retrieve the names of instructors who have taught in the "Spring" semester of 2023.

-- 23. Find the average number of students enrolled in each course.

-- 24. List all courses that have exactly 4 credits.

-- 25. Retrieve the names of students who have taken courses in the "Packard" building.

-- 26. Find the total number of sections taught by each instructor.

-- 27. List all sections that are held in rooms with a capacity of less than 50.

-- 28. Retrieve the names of students who have taken courses with the lowest number of credits.

-- 29. Find the departments with the lowest average instructor salary.

-- 30. List all courses that have been taught by only one instructor.

-- 31. Find the students who have taken courses with every instructor in the university.

-- 32. Retrieve the names of instructors who have taught courses in all available semesters.

-- 33. List all courses that have been taught in every building.

-- 34. Find the students who have taken the most number of courses in a single year.

-- 35. Retrieve the names of students who have taken courses with overlapping time slots in the same semester.

-- 36. List all courses that have been taught by the same instructor in consecutive semesters.

-- 37. Find the departments where the total student credits are less than the department budget.

-- 38. Retrieve the names of students who have taken courses with every time slot.

-- 39. List all courses that have been taught in every year.

-- 40. Find the students who have taken the most number of courses with the same instructor.

-- 41. Find the students who have taken courses from at least 3 different departments.

-- 42. Retrieve the names of instructors who have taught the same course in consecutive years.

-- 43. List all courses that are prerequisites for exactly 2 other courses.

-- 44. Find the departments where the total student credits are equal to the department budget.

-- 45. Retrieve the names of students who have taken courses with every time slot in a single semester.

-- 46. List all courses that have been taught in every building except one.

-- 47. Find the students who have taken the most number of courses in a single department.

-- 48. Retrieve the names of instructors who have taught courses in all available time slots.

-- 49. List all students who have taken courses with overlapping time slots in different semesters.

-- 50. Find the courses that have the lowest enrollment across all semesters.
