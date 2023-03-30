# DBT ASSIGNMENT-1 
## Details : 
> [!info] - Name : P K Navin Shrinivas
> - Section : D
> - SRN : PES2UG20CSS237
## Section A : Creating ERD, Tables and inserting data. 
- ERD : 
![[Pasted image 20230308101146.png]]
- 4 entities are created, with 100 records each [except electives].
- 8 schemas for 4 enties are created, 4 without index and 4 with.
- CURD selecting number of lines in 2 of those tables : 
```sql
select * from student_electives;
select * from student_electives_no_index;
```
![[Pasted image 20230307190819.png]]
- More selecting data : 
```sql
select * from teachers;
select * from electives;
```
![[Pasted image 20230307190904.png]]
## Section B : Scan Queries on tables with (All scans will be observed) 
- For comparision (table scan) : 
![[Pasted image 20230308092106.png]]
- IO Cost : 0.0001885 | CPU Cost : 0.0032035
- Clustered Index scan (on tables with index) : 
![[Pasted image 20230308091440.png]]
- IO cost : 0.0002637 | CPU cost : 0.003125
- The difference between the two scan are neglible as order of index doesn't help with scan!
## Section C : Same Queries with index and without (Seeks can be seen here) 
- A join select betwen two tables with no index : 
```sql
SELECT * FROM students_no_index AS  \
s,student_electives_no_index AS se where s.SRN \
like 'PES2%' AND se.SRN=s.SRN;
```
![[Pasted image 20230307192313.png]]
- Cost of query : 
![[Pasted image 20230308094828.png]]
- CPU Cost : 0.0199186
- Query : 
```sql
SELECT * FROM students AS s,student_electives\
AS se where s.SRN like 'PES2%' AND se.SRN=s.SRN;
```
![[Pasted image 20230307203509.png]]
- Cost : 
![[Pasted image 20230308094943.png]]
- CPU Cost : 0.0002299 
- We can observe that Cost of JOIN selects with Indexs are much faster than without index.
- With non clusted index : 
```sql
create NONCLUSTERED INDEX no_pk_srn_students ON students_no_index (SRN);

create NONCLUSTERED INDEX no_pk_srn_students_elective ON student_electives_no_index (SRN);

SELECT * FROM students_no_index AS s,student_electives_no_index AS se where s.SRN like 'PES2%' AND se.SRN=s.SRN;
```
![[Pasted image 20230324030546.png]]
- Cpu Cost : 0.0204526
![[Pasted image 20230324030633.png]]