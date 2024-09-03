-- Create table Booking (t_id integer, status integer,
-- 					 primary key (t_id));
					 
-- Create table Customers(email varchar(30), name varchar(30), password varchar(100),
-- 					  primary key (email));

-- Create Table Books (t_id integer, email varchar(30), date Date,
-- 				   foreign key (t_id) References Booking(t_id),
-- 				   foreign key (email) References Customers(email));
					  
-- Create table Orders (o_id integer, status varchar(20), amount integer, email varchar(30),
-- 				   primary key (o_id), foreign key (email) references Customers (email));

-- Create table Contains (o_id integer, item_id integer,
-- 						 foreign key (o_id) references Orders(o_id),
-- 						 foreign key (item_id) references Menu (item_id));

						 
-- Create table Menu (item_id integer, type varchar(20), name varchar(40), price integer,
-- 				  primary key (item_id));

-- Create table Sales(s_id integer, amount integer, date DATE, o_id integer ,
-- 				  primary key (s_id), foreign key (o_id) references Orders(o_id));
				  
-- Create Table Admin (email varchar(30), name varchar(30), password varchar(100),
-- 				   primary key (email));
				   
-- Create Table Reviews (r_id integer, rating integer, feedback varchar(100), email varchar(30),
-- 					 primary key (r_id), Foreign Key (email) References Customers(email));


-- INSERT INTO Menu (id, type, name, price)
-- VALUES
--     (0, 'Starters', 'Garlic Bread', 550),
--     (1, 'Desserts', 'Chocolate Cake', 750),
--     (2, 'Beverages', 'Coca-Cola', 600),
--     (3, 'MainCourse', 'Grilled Chicken', 900),
--     (4, 'Starters', 'Mozzarella Sticks', 650),
--     (5, 'Desserts', 'Tiramisu', 800),
--     (6, 'Beverages', 'Iced Tea', 550),
--     (7, 'MainCourse', 'Spaghetti Bolognese', 850),
--     (8, 'Starters', 'Onion Rings', 700),
--     (9, 'Desserts', 'Cheesecake', 950),
--     (10, 'Beverages', 'Orange Juice', 600),
--     (11, 'MainCourse', 'Salmon Steak', 950),
--     (12, 'Starters', 'Bruschetta', 550),
--     (13, 'Desserts', 'Panna Cotta', 700),
--     (14, 'Beverages', 'Lemonade', 500),
--     (15, 'MainCourse', 'Beef Stroganoff', 800),
--     (16, 'Starters', 'Caprese Salad', 600),
--     (17, 'Desserts', 'Fruit Tart', 850),
--     (18, 'Beverages', 'Milkshake', 650),
--     (19, 'MainCourse', 'Vegetable Curry', 700),
--     (20, 'Starters', 'Chicken Wings', 750),
--     (21, 'Desserts', 'Apple Pie', 850),
--     (22, 'Beverages', 'Iced Coffee', 550),
--     (23, 'MainCourse', 'Lobster Thermidor', 1000),
--     (24, 'Starters', 'Spinach Dip', 600),
--     (25, 'Desserts', 'Strawberry Shortcake', 900),
--     (26, 'Beverages', 'Green Tea', 500),
--     (27, 'MainCourse', 'Beef Tacos', 800),
--     (28, 'Starters', 'Nachos', 650),
--     (29, 'Desserts', 'Banana Split', 750);



-- INSERT INTO Booking (id, status)
-- VALUES
--     (1, 0),
--     (2, 1),
--     (3, 1),
--     (4, 0),
--     (5, 1),
--     (6, 0),
--     (7, 1),
--     (8, 0),
--     (9, 1),
--     (10, 0),
--     (11, 1),
--     (12, 0),
--     (13, 1),
--     (14, 0),
--     (15, 1);

-- INSERT INTO Reviews (r_id, rating, feedback, email)
-- VALUES
--     (1, 5, 'Great service and delicious food!', 'vivek89237@gmail.com'),
--     (2, 4, 'The atmosphere was nice, but the food could be better.', '123@gmail.com'),
--     (3, 5, 'Excellent experience, will definitely visit again.', 'abcd@gmail.com'),
--     (4, 3, 'Average service, but the prices are a bit high.', 'xyz@gmail.com');
	
-- INSERT INTO Customers (email, name, password)
-- Values('123@gmail.com','Soumya Narvaria', '$2b$10$moK9TP8rgeayNimImDaB9.VXykxsA8/Ig044T9GmWMhDYLphBZaru'),
-- ('abcd@gmail.com','Aaditya Malviya', '$2b$10$moK9TP8rgeayNimImDaB9.VXykxsA8/Ig044T9GmWMhDYLphBZaru'),
-- ('xyz@gmail.com','Anant Bahore', '$2b$10$moK9TP8rgeayNimImDaB9.VXykxsA8/Ig044T9GmWMhDYLphBZaru');


-- INSERT INTO Orders (o_id , status , amount , email ) values
-- (2, 'Served', 1500, '123@gmail.com');
		  

-- Insert Into Contains (o_id , item_id) values(1, 2),
-- (1, 3),
-- (1,5),
-- (1,9);

-- select m.name from menu m
-- where id in (select item_id from contains );

-- Insert INTO Sales (s_id , amount, date , o_id) values (1, 1200, '2023-10-12', 1); 