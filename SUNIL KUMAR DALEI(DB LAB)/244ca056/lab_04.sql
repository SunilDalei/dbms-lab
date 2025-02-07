-- 1. Retrieve the names of all instructors who teach at least one course in the 'Computer Science' department.
SQL> select distinct ins.name from instructor ins join teaches tc on ins.id=tc.id join course c on c.course_id=tc.course_id where c.dept_name='CSE';

-- 2. List all students who have taken at least one course in 'Fall' and 'Spring' semesters in the same year.

-- 3. Find all classrooms that have a capacity of more than 100 but are not assigned to any section.
SQL> select cl.building,cl.room_number  from classroom cl left join section sct on cl.building=sct.building and cl.room_number=sct.room_number where cl.capacity>=100 and sct.room_number is null;

-- 4. Display all courses along with their prerequisites, including courses that have no prerequisites.
SQL> select c.course_id, c.title,pr.prereq_id from course c left join prereq pr  on c.course_id=pr.course_id;

-- 5. Retrieve the list of instructors who have never taught a course.
SQL> select ins.id,ins.name from instructor ins left join teaches tc on ins.id=tc.id where tc.course_id is null;

-- 6. Find the total budget allocated to all departments that have at least one instructor earning more than ₹50,000.
SQL> select d.dept_name,d.budget from department d join instructor ins on ins.dept_name=d.dept_name where ins.salary>50000;

-- 7. Find the average salary of instructors grouped by department but only include departments with more than 1 instructors.
SQL> select t1.dept_name,t1.Avg_salary from (select dept_name,count(id) nos,avg(salary) Avg_salary from instructor where dept_name is not null group by dept_name) t1 where t1.nos >=2;

-- 8. Find the total number of students enrolled in each course for every semester, and sort by semester and number of students (descending).

-- 9. Determine which department has the highest average course credit.
SQL> select * from (select dept_name, avg(credits) Avg_Credits  from course group by dept_name order by Avg_Credits desc) where rownum=1;

-- 10. Find the top 3 courses with the most students enrolled across all semesters.

-- 11. Find all students who have taken every course taught by the instructor 'Dr Hamsa'.

-- 12. Retrieve the names of students who have the same name as their advisor.

-- 13. Find all instructors who have taught at least one course that they did not belong to the department of.

-- 14. List all students who have taken a course in a classroom that has a capacity less than the number of students enrolled.

-- 15. Find students who have taken every course offered by their department.

-- 16. Identify the department(s) with the largest number of distinct courses offered.

-- 17. Find students who have taken a course but have not received a grade.

-- 18. Retrieve the details of instructors who have the exact same salary as another instructor.

-- 19. Identify all courses that have prerequisites, but the prerequisite itself has no prerequisite.

-- 20. Find all students who have taken courses in every semester (Fall, Winter, Spring, Summer) at least once.

-- 21. Find all prerequisite chains for a given course (i.e., if A is a prerequisite for B, and B is a prerequisite for C, return A → B → C).

-- 22. List all courses that have at least two levels of prerequisites (i.e., a prerequisite has another prerequisite).

-- 23. Find the shortest prerequisite chain for any course that eventually leads to a specific course, say 'CS101'.

-- 24. Identify students who have taken a course whose prerequisite they have never taken.

-- 25. Find all instructors who have taught a course that has another course as a prerequisite.

-- 26. Find all students who have the same total credits as another student in a different department.

-- 27. Identify instructors who have the highest salary in their department but still earn less than the highest salary in another department.

-- 28. Retrieve students who have taken more than one course but have failed at least half of them (assuming grade 'F' is failing).

-- 29. List all departments where the highest-paid instructor earns more than the total department budget divided by the number of instructors.

-- 30. Find courses that have never been taught in the same semester for consecutive years.

-- 31. Rank instructors by salary within their department and return only the second-highest salary in each department.

-- 32. Find students who have taken the most credits in a single semester.

-- 33. Retrieve the top 5 students with the highest total credits, including ties.

-- 34. Determine which instructors have taught the most unique courses.

-- 35. Find students who have received the highest grade (alphabetically) in the most number of distinct courses.

-- 36. Find all students who have taken courses in the 'Computer Science' and 'Mathematics' departments but not in 'Physics'.

-- 37. List students who have taken every course in their department except for one course.

-- 38. Find all instructors who have taught at least one course in every semester.

-- 39. Retrieve students who have the same advisor but are from different departments.

-- 40. Find courses that are prerequisites for some courses but are also taken by students who have never taken the main course.

-- 41. Increase the salary of instructors who have taught more than 5 courses by 10%.

-- 42. Remove students who have never taken any courses and have no advisor assigned.

-- 43. Assign an advisor to every student who does not have one, choosing the instructor from the same department with the highest salary.

-- 44. Update the grade of students who initially received 'F' but later retook the same course and scored higher.

-- 45. Delete all courses that have not been offered in the last 10 years.

-- 46. Find the instructor who has taught a course in the largest number of unique classrooms.

-- 47. Determine the department with the most students who have taken at least one course but have zero total credits recorded.

-- 48. Identify courses where the number of students who failed is greater than those who passed.

-- 49. Find the classroom that has hosted the highest number of distinct courses across all semesters.

-- 50. Retrieve students who have been enrolled in at least one course every year for at least 4 consecutive years.
