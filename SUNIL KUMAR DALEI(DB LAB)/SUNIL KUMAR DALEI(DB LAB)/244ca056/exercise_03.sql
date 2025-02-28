-- 1. List all students who have taken exactly 60 total credits.
select name from student where tot_cred=60 ;

-- 2. Find the names of all courses offered by the "Electrical Engineering" department.
select course_id from course where dept_name='Elec. Eng.';

-- 3. Retrieve the names of all instructors who earn less than ₹40,000.
select name from instructor where salary<40000;

-- 4. List all classrooms located in the "Main" building.
select room_number from classroom where building='Main';

-- 5. Find the total number of courses offered in the "Fall" semester.
select count(*)Courses_Offered  from section where semester='Fall';

-- 6. List all students who have taken exactly 90 total credits.
select name from student where tot_cred=90;

-- 7. Find the names of all courses offered by the "Mechanical Engineering" department.
 select title from course where dept_name='Mech. Eng.';

-- 8. Retrieve the names of all instructors who earn exactly ₹75,000.
 select name from instructor where salary=75000;

-- 9. List all classrooms located in the "Lambert" building.
select room_number from classroom where building='Lambert';

-- 10. Find the total number of courses offered in the "Spring" semester.
select count(*)Courses_Offered  from section where semester='Spring';

-- 11. List all students who have taken courses with a grade of "B" in the "Spring" semester of 2023.
select s.name from student s join takes t on t.id=s.id where t.grade='B ' and t.semester='Spring' and t.year=2023;

-- 12. Retrieve the names of instructors who have taught in the "Summer" semester of 2022.
select i.name from instructor i join teaches t on t.id=i.id where t.semester='Summer' and t.year=2022;

-- 13. Find the average number of credits offered by each department.
select dept_name,avg(credits)avg_credits  from course group by dept_name; 

-- 14. List all courses that have exactly 1 credit.
select course_id from course where credits=1;

-- 15. Retrieve the names of students who have taken courses in the "Painter" building.
select s.name,sc.building from student s join takes t on s.id=t.id join section sc on sc.course_id=t.course_id where sc.building='Painter';

-- 16. Find the total number of students enrolled in each course.
select course_id,count(*)No_of_Students from takes  group by course_id; 

-- 17. List all sections that are held in rooms with a capacity of more than 100.
 select sc.sec_id from section sc join classroom cl on sc.room_number=cl.room_number where cl.capacity>100;

-- 18. Retrieve the names of students who have taken courses with the highest number of credits in their department.
 select distinct s.name from student s join takes t on s.id=t.id join ( select * from course c1 where credits=(select max(credits) from course c2 where c1.dept_name=c2.dept_name)) c2 on c2.course_id=t.course_id;

-- 19. Find the departments with the highest total budget.
select *from department where budget=(select max(budget) from department);

-- 20. List all courses that have been taught by more than 2 instructors.

-- 21. List all students who have taken courses with a grade of "C" in the "Winter" semester of 2023.

-- 22. Retrieve the names of instructors who have taught in the "Fall" semester of 2021.

-- 23. Find the average number of sections taught per course.

-- 24. List all courses that have exactly 3 credits.
select title from course where credits=3;

-- 25. Retrieve the names of students who have taken courses in the "Taylor" building.

-- 26. Find the total number of courses taught by each instructor.

-- 27. List all sections that are held in rooms with a capacity of exactly 75.

-- 28. Retrieve the names of students who have taken courses with the lowest number of credits in their department.

-- 29. Find the departments with the lowest total budget.

-- 30. List all courses that have been taught by exactly 3 instructors.

-- 31. Find the students who have taken courses from at least 4 different departments.

-- 32. Retrieve the names of instructors who have taught the same course in multiple years.

-- 33. List all courses that are prerequisites for exactly 1 other course.

-- 34. Find the departments where the total student credits are greater than the department budget.

-- 35. Retrieve the names of students who have taken courses with every time slot in multiple semesters.

-- 36. List all courses that have been taught in every building except two.

-- 37. Find the students who have taken the most number of courses in a single semester across all departments.

-- 38. Retrieve the names of instructors who have taught courses in all available buildings.

-- 39. List all students who have taken courses with overlapping time slots in the same semester and year.

-- 40. Find the courses that have the highest enrollment in a single semester.

-- 41. Find the students who have taken courses from at least 5 different departments.

-- 42. Retrieve the names of instructors who have taught the same course in multiple semesters and years.

-- 43. List all courses that are prerequisites for exactly 4 other courses.

-- 44. Find the departments where the total student credits are less than half of the department budget.

-- 45. Retrieve the names of students who have taken courses with every time slot in multiple semesters and years.

-- 46. List all courses that have been taught in every building except three.

-- 47. Find the students who have taken the most number of courses in a single year across all departments.

-- 48. Retrieve the names of instructors who have taught courses in all available semesters and buildings.

-- 49. List all students who have taken courses with overlapping time slots in different semesters and years.

-- 50. Find the courses that have the lowest enrollment in a single semester.
