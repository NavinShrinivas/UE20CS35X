## Details 
- Name : P K Navin Shrinivas
- Section : D 
- SRN : PES2UG20CS237
## A : Do a multiway join with atleast 3 tables. 
- First multiway join : 
```sql
-- Find the address and name of the anchor teacher for all the electives : 
select e.elective_name,t.teacher_name,ti.address 
from electives as e join teachers as t ON e.anchor_ID = t.ID 
JOIN teacher_info as ti ON t.id = ti.ID;
```
- Output result : 
![[Pasted image 20230317161803.png]]
- Query plan : 
![[Pasted image 20230317161822.png]]
- Cost : 0.01914442 (Total)
![[Pasted image 20230317162725.png]]

- Second multiway join [4 tables]: 
```sql
-- Find the teachers of the first electives that students have selected
-- (Student_elective -> elective(anchro id) -> name of teacher in teacher)
select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
FROM students JOIN student_electives ON students.SRN = student_electives.SRN 
JOIN electives ON student_electives.first_elective=electives.course_code 
JOIN teachers ON teachers.ID = electives.anchor_ID;
```
- Result : 
![[Pasted image 20230317165003.png]]
- Cost of query : 0.01981252
![[Pasted image 20230317165106.png]]
## B : Changing join order 
- Modifying the first join query, 
```sql
select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
FROM students LEFT OUTER JOIN student_electives ON students.SRN = student_electives.SRN
JOIN electives ON student_electives.first_elective=electives.course_code
JOIN teachers ON teachers.ID = electives.anchor_ID;
```
- Estimated plan and actual plan : 
![[Pasted image 20230324030846.png]]
![[Pasted image 20230324030903.png]]
- Cost comparision : 
	- Actual : 0.01981252
	- Estimated : 0.01981252
	> They are the same!

- Anothe of the same join in different order : 
```sql
select students.student_name,student_electives.first_elective,electives.elective_name ,teachers.teacher_name
FROM students JOIN student_electives ON students.SRN = student_electives.SRN
JOIN electives ON student_electives.first_elective = electives.course_code
JOIN teachers ON teachers.ID = electives.anchor_ID;
```
- Estimated plan and actual plan : 
![[Pasted image 20230324031249.png]]
![[Pasted image 20230324031300.png]]
- Cost comparision : 
	- Actual : 0.01981252
	- Estimated : 0.01981252
- A Join with subqueries, first order : 
```sql
select section,elective_name,count(SRN) as number_of_student_in_elective_in_this_class from 
(select students.SRN,section,first_elective,elective_name from students
JOIN student_electives ON  students.SRN = student_electives.SRN  
JOIN electives ON student_electives.first_elective=electives.course_code) 
AS temp group by section, first_elective,elective_name order by section;
```
- Actual and estimated plan : 
![[Pasted image 20230324032622.png]]
![[Pasted image 20230324032634.png]]
![[Pasted image 20230324032736.png]]
- Cost comparision : 
	- Actual : 0.0026376399
	- estimated : 0.0026376399
- Join with second order : 
```sql
select section,elective_name,count(SRN) as number_of_student_in_elective_in_this_class from
(select students.SRN,section,first_elective,elective_name from electives
JOIN student_electives ON student_electives.first_elective=electives.course_code
JOIN students ON students.SRN = student_electives.SRN)
AS temp group by section, first_elective,elective_name order by section;
```
- Actual and estimated comparision : 
![[Pasted image 20230324032942.png]]
![[Pasted image 20230324032959.png]] 
![[Pasted image 20230324033103.png]]
- Output of the third join with sub queries : 
![[Pasted image 20230324033415.png]]