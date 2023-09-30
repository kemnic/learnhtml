Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.

mysql> create database NICO;
Query OK, 1 row affected (0.06 sec)

mysql> use NICO;
Database changed
mysql> create table STUDENTS(StudentID varchar(12) primary key,Fname varchar(10), Lname varchar(10),Course varchar(5),DOB varchar(12),DeptNo varchar(5));
Query OK, 0 rows affected (0.14 sec)

mysql> create table Dept
    -> create table Dept(DeptNo varchar(5),Name varchar(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'create table Dept(DeptNo varchar(5),Name varchar(5)' at line 2
mysql> create table Dept(DeptNo varchar(5),Name varchar(5));
Query OK, 0 rows affected (0.15 sec)
mysql> show tables;
+----------------+
| Tables_in_nico |
+----------------+
| dept           |
| students       |
+----------------+
2 rows in set (0.16 sec)

mysql> insert into Students values('M23B13/001','Ssentongo','Nicholas','BSIT','28/08/2000','A200');
Query OK, 1 row affected (0.04 sec)

mysql> insert into Students values('M23B13/002','Kemirembe','Hajarah','BSIT','28/08/2001','A200');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Students values('M23B13/003','Kwagala','DAVE','BSCS','28/09/2001','B200');
Query OK, 1 row affected (0.04 sec)

mysql> insert into Students values('M23B13/004','Ninsiima','Whitney','BSCS','18/09/2001','A200');
Query OK, 1 row affected (0.04 sec)

mysql> select * from students;
+------------+-----------+----------+--------+------------+--------+
| StudentID  | Fname     | Lname    | Course | DOB        | DeptNo |
+------------+-----------+----------+--------+------------+--------+
| M23B13/001 | Ssentongo | Nicholas | BSIT   | 28/08/2000 | A200   |
| M23B13/002 | Kemirembe | Hajarah  | BSIT   | 28/08/2001 | A200   |
| M23B13/003 | Kwagala   | DAVE     | BSCS   | 28/09/2001 | B200   |
| M23B13/004 | Ninsiima  | Whitney  | BSCS   | 18/09/2001 | A200   |
+------------+-----------+----------+--------+------------+--------+
4 rows in set (0.00 sec)

mysql> select * from dept;
Empty set (0.00 sec)

mysql> insert into dept values('A200','DIT');
Query OK, 1 row affected (0.05 sec)

mysql> insert into dept values('B200','DSC');
Query OK, 1 row affected (0.04 sec)

mysql> select * from dept;
+--------+------+
| DeptNo | Name |
+--------+------+
| A200   | DIT  |
| B200   | DSC  |
+--------+------+
2 rows in set (0.00 sec)

mysql> select * from students limit 3;
+------------+-----------+----------+--------+------------+--------+
| StudentID  | Fname     | Lname    | Course | DOB        | DeptNo |
+------------+-----------+----------+--------+------------+--------+
| M23B13/001 | Ssentongo | Nicholas | BSIT   | 28/08/2000 | A200   |
| M23B13/002 | Kemirembe | Hajarah  | BSIT   | 28/08/2001 | A200   |
| M23B13/003 | Kwagala   | DAVE     | BSCS   | 28/09/2001 | B200   |
+------------+-----------+----------+--------+------------+--------+
3 rows in set (0.00 sec)
mysql> select * from students where deptNo = 'A200';
+------------+-----------+----------+--------+------------+--------+
| StudentID  | Fname     | Lname    | Course | DOB        | DeptNo |
+------------+-----------+----------+--------+------------+--------+
| M23B13/001 | Ssentongo | Nicholas | BSIT   | 28/08/2000 | A200   |
| M23B13/002 | Kemirembe | Hajarah  | BSIT   | 28/08/2001 | A200   |
| M23B13/004 | Ninsiima  | Whitney  | BSCS   | 18/09/2001 | A200   |
+------------+-----------+----------+--------+------------+--------+
3 rows in set (0.03 sec)

mysql>