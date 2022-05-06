CREATE TABLE department
( dept_id number primary key,
  prod_id number(4),
  dept_name varchar(25) unique,
  dept_head varchar(25) NOT NULL,
  foreign key (prod_id) references product(prod_id)
); 