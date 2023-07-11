create database bank;
use bank;
create table employees(e_id int,e_salary int check (e_salary>15000),e_name varchar (30) not null,branch_name varchar(30) not null,
branch_id varchar(20)primary key,e_age int check(e_age>21));
insert into employees values(123,20000,"selva","chennai","CE123",22);
insert into employees values(124,25000,"priya","coimbatore","CO124",23);
insert into employees values(125,26000,"vimal","salem","SE125",24);
insert into employees values(126,30000,"rani","erode","ER126",25),(121,32000,"chitra","bangalore","BA121",26);
insert into employees values(122,34000,"hari","chennai","CE122",23);
insert into employees values(127,35000,"ezhil","coimbatore","CO127",26);
insert into employees values(128,37000,"ammu","salem","SE128",27);
insert into employees values(129,40000,"kalai","erode","ER123",22),(130,42000,"radha","bangalore","BA123",27);
select * from employees;
create table customer(cus_accNo int not null,
cus_pin int ,
cus_name varchar(20) not null,
balance_amount int,
acc_type varchar(20),
cus_panNo varchar(20) primary key,
cus_contactNo varchar(10),
cus_address varchar(50) default "not mention",
branch_id varchar(20)); 
select * from customer;
insert into customer values(123456,2345,"veni",10000,"savings_account","veni123",1234567890,"salem","SE125");
insert into customer values(234567,1111,"dhivya",20000,"current_account","dhi234",9870654321,"coimbatore","CO127");
insert into customer values(987654,4590,"kaviya",15000,"savings_account","kavi980",8907652136,"chennai","CE122");
insert into customer values(347809,5544,"sujitha",20000,"current_account","suji534",9863475091,"bangalore","BA123");
insert into customer values(237680,7642,"venkatesan",30000,"savings_account","venky883",6321903467,"chennai","CE123");
insert into customer values(567890,6381,"periyasamy",35000,"current_account","samy897",7890653124,"coimbatore","CO124");
insert into customer values(680329,4530,"mohan",32000,"savings_account","moh340",8905647312,"erode","ER126");
insert into customer values(907651,9072,"vijay",40000,"savings_account","viji231",9807612534,"bangalore","BA121");
insert into customer values(436790,9762,"shobika",33000,"current_account","shobi209",8973452109,"salem","SE128");
insert into customer values(345900,8910,"saranya",38000,"savings_account","saran341",6281091298,"erode","ER123");
select * from customer;
use bank;
select customer.cus_accNo, customer.cus_pin, customer.cus_name, customer.balance_amount, customer.acc_type, customer.cus_panNo,
customer.cus_contactNo, customer.cus_address, employees.e_id, employees.e_salary, employees.e_name, employees.branch_name, employees.e_age
from customer
inner join employees
on employees.branch_id=customer.branch_id;
select*from customer order by branch_id ;