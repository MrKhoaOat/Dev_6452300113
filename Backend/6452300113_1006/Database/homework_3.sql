select * from books where bname like '%o%' limit 2;

insert into sell_histories(isbn, emp_id, price, amount) values
('9783598215933', 1, 250, 5),
('9783598215957', 1, 352, 1),
('9783598215766', 3, 289, 2),
('9783598215957', 4, 352, 4),
('9783598215933', 4, 250, 6),
('9783598215919', 2, 199, 2),
('9783598215933', 3, 250, 3),
('9783598215995', 2, 157, 2),
('9783598215919', 3, 199, 7),
('9783598215995', 1, 157, 1);

select sum(amount) from sell_histories;

select distinct isbn from sell_histories;

select sum(price) from sell_histories;
