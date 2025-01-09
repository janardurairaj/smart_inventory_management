create database inventory_sales;
use inventory_sales;
create table  Products (
    Product_ID int primary key,
    Product_Name varchar(100) not null,
    Category varchar(50),
    Unit_Price decimal(10, 2) not null,
    Stock_Quantity int default 0,
    Reorder_Level int default 5
);
insert into  Products (product_id,Product_Name, Category, Unit_Price, Stock_Quantity, Reorder_Level) values
(1,'Wireless Mouse', 'Electronics', 19.99, 100, 10),
(2,'Gaming Keyboard', 'Electronics', 49.99, 50, 5),
(3,'Smartphone Case', 'Accessories', 9.99, 200, 20),
(4,'Bluetooth Speaker', 'Electronics', 29.99, 75, 10),
(5,'LED Monitor', 'Electronics', 129.99, 30, 5),
(6,'Running Shoes', 'Footwear', 79.99, 40, 10),
(7,'Fitness Tracker', 'Wearables', 99.99, 60, 10),
(8,'Backpack', 'Accessories', 39.99, 80, 15),
(9,'Coffee Maker', 'Home Appliances', 49.99, 25, 5),
(10,'Desk Lamp', 'Furniture', 19.99, 120, 15),
(11,'Wireless Earbuds', 'Electronics', 59.99, 70, 10),
(12,'Portable Charger', 'Electronics', 24.99, 150, 15),
(13,'Water Bottle', 'Accessories', 12.99, 180, 10),
(14,'Yoga Mat', 'Fitness', 29.99, 50, 10),
(15,'Office Chair', 'Furniture', 199.99, 20, 5),
(16,'Laptop Stand', 'Accessories', 49.99, 60, 10),
(17,'Electric Kettle', 'Home Appliances', 39.99, 40, 10),
(18,'Vacuum Cleaner', 'Home Appliances', 149.99, 15, 5),
(19,'Gaming Headset', 'Electronics', 89.99, 35, 5),
(20,'Wireless Keyboard', 'Electronics', 39.99, 50, 10),
(21,'Smart Thermostat', 'Home Appliances', 199.99, 10, 2),
(22,'Blender', 'Home Appliances', 59.99, 30, 10),
(23,'Standing Desk', 'Furniture', 299.99, 10, 2),
(24,'Action Camera', 'Electronics', 249.99, 25, 5),
(25,'Tripod', 'Accessories', 29.99, 100, 10),
(26,'Sleeping Bag', 'Outdoor', 79.99, 50, 10),
(27,'Tent', 'Outdoor', 199.99, 20, 5),
(28,'Hiking Boots', 'Footwear', 149.99, 30, 10),
(29,'Sunglasses', 'Accessories', 19.99, 120, 15),
(30,'Bluetooth Headphones', 'Electronics', 79.99, 40, 10);

select * from products ;

create table Customers (
    Customer_ID int primary key,
    Full_Name varchar(100) not null,
    Email varchar(100) unique not null,
    Phone varchar(15),
    Address varchar(255)
);

insert into Customers (Customer_ID,Full_Name, Email, Phone, Address) values
(301,'John Doe', 'john.doe@example.com', '1234567890', '123 Main St, Cityville'),
(302,'Jane Smith', 'jane.smith@example.com', '9876543210', '456 Elm St, Townsville'),
(303,'Alice Johnson', 'alice.johnson@example.com', '4561237890', '789 Oak St, Villagetown'),
(304,'Bob Brown', 'bob.brown@example.com', '7894561230', '101 Pine St, Suburbia'),
(305,'Charlie Adams', 'charlie.adams@example.com', '1237894560', '202 Birch St, Metropolis'),
(306,'Diana Green', 'diana.green@example.com', '9871236540', '303 Cedar St, Smallville'),
(307,'Eve Taylor', 'eve.taylor@example.com', '6549871230', '404 Spruce St, Riverside'),
(308,'Frank White', 'frank.white@example.com', '3216549870', '505 Maple St, Hillside'),
(309,'Grace Black', 'grace.black@example.com', '7891234560', '606 Redwood St, Seaside'),
(310,'Henry Moore', 'henry.moore@example.com', '4569873210', '707 Cherry St, Lakewood'),
(311,'Sophia Carter', 'sophia.carter@example.com', '5432167890', '808 Palm St, Meadowbrook'),
(312,'Liam Wilson', 'liam.wilson@example.com', '2109876543', '909 Willow St, Forestville'),
(313,'Olivia Martin', 'olivia.martin@example.com', '6543210987', '1010 Cypress St, Beachside'),
(314,'Mason Clark', 'mason.clark@example.com', '7890123456', '1111 Cedar Ave, Countryside'),
(315,'Emma Harris', 'emma.harris@example.com', '9876540123', '1212 Oak Ave, Riverside'),
(316,'Noah Wright', 'noah.wright@example.com', '1230984567', '1313 Pine Ave, Lakeside'),
(317,'Isabella Hall', 'isabella.hall@example.com', '5678901234', '1414 Birch Ave, Greenfield'),
(318,'James King', 'james.king@example.com', '3456789012', '1515 Spruce Ave, Hilltown'),
(319,'Charlotte Scott', 'charlotte.scott@example.com', '7896541230', '1616 Maple Ave, Highland'),
(320,'William Young', 'william.young@example.com', '9873216540', '1717 Redwood Ave, Woodland'),
(321,'Amelia Baker', 'amelia.baker@example.com', '3219876540', '1818 Cherry Ave, Forestview'),
(322,'Benjamin Carter', 'benjamin.carter@example.com', '6541239870', '1919 Palm Ave, Treelake'),
(323,'Mia Phillips', 'mia.phillips@example.com', '4567891230', '2020 Willow Ave, Bluestone'),
(324,'Elijah Turner', 'elijah.turner@example.com', '1234567891', '2121 Cypress Ave, Riverpark'),
(325,'Ava Mitchell', 'ava.mitchell@example.com', '9876543212', '2222 Cedar St, Hillcrest'),
(326,'Lucas Perez', 'lucas.perez@example.com', '4561237891', '2323 Oak St, Greenwood'),
(327,'Harper Collins', 'harper.collins@example.com', '7894561231', '2424 Pine St, Sunnyvale'),
(328,'Alexander Rivera', 'alexander.rivera@example.com', '1237894561', '2525 Birch St, Willowpark'),
(329,'Evelyn Ramirez', 'evelyn.ramirez@example.com', '9871236541', '2626 Spruce St, Brookside'),
(330,'janar','janar123@examble.com',8870281733,'2025 karungalpatty st,salem');

select * from customers;

create table  Sales (
    Sale_ID int primary key,
    Customer_ID int not null,
    Sale_Date date not null,
    Total_Amount decimal (15, 2) not null,
    foreign key (Customer_ID) references Customers(Customer_ID)
);

insert into  Sales (Sale_ID,Customer_ID, Sale_Date, Total_Amount) values
(31,301, '2023-12-01', 150.50),
(32,302, '2023-12-02', 200.75),
(33,303, '2023-12-03', 320.00),
(34,304, '2023-12-04', 125.00),
(35,305, '2023-12-05', 400.99),
(36,306, '2023-12-06', 300.00),
(37,307, '2023-12-07', 500.50),
(38,308, '2023-12-08', 250.00),
(39,309, '2023-12-09', 100.00),
(40,310, '2023-12-10', 275.75),
(41,311, '2023-12-11', 450.25),
(42,312, '2023-12-12', 350.10),
(43,313, '2023-12-13', 420.60),
(44,314, '2023-12-14', 110.20),
(45,315, '2023-12-15', 220.80),
(46,316, '2023-12-16', 330.50),
(47,317, '2023-12-17', 175.75),
(48,318, '2023-12-18', 280.00),
(49,319, '2023-12-19', 95.00),
(50,320, '2023-12-20', 410.25),
(51,321, '2023-12-21', 150.75),
(52,322, '2023-12-22', 300.50),
(53,323, '2023-12-23', 270.80),
(54,324, '2023-12-24', 510.00),
(55,325, '2023-12-25', 190.99),
(56,326, '2023-12-26', 400.00),
(57,327, '2023-12-27', 250.30),
(58,328, '2023-12-28', 370.45),
(59,329, '2023-12-29', 220.00),
(60,330,'2023-12-30',320.00);

select * from sales;

create table sales_details(
    Sale_Detail_ID int primary key,
    Sale_ID int not null,
    Product_ID int not null,
    Quantity int not null,
    Unit_Price decimal(10, 2) not null,
    Total_Price decimal(15, 2) not null , -- Quantity * UnitPrice
    foreign key (Sale_ID) references Sales(Sale_ID),
    foreign key (Product_ID) references Products(Product_ID)
);

insert into Sales_Details ( Sale_detail_ID ,Sale_ID, Product_ID, Quantity, Unit_Price,Total_price) values
(1001,31, 1, 2, 19.99,150.00),                                      
(1002,32, 2, 1, 49.99,250.00),
(1003,33, 3, 3, 9.99,350.95), 
(1004,34, 4, 1, 29.99,351.99),
(1005,35, 5, 2, 129.99,300.52),
(1006,36, 6, 1, 79.99,299.00),
(1007,37, 7, 1, 99.99,177.00),
(1008,38, 8, 2, 39.99,199.00),
(1009,39, 9, 1, 49.99,210.90), 
(1010,40, 10, 2, 19.99,233.00),
(1011,41, 11, 3, 19.99,490.00), 
(1012,42,12, 2, 49.99,399.90),
(1013,43, 13, 5, 9.99,225.45),  
(1014,44, 14, 1, 29.99,356.22),
(1015,45, 15, 1, 129.99,150.33), 
(1016,46, 16, 2, 79.99,200.45), 
(1017,47, 17, 1, 99.99,430.00), 
(1018,48, 18, 3, 39.99,499.00),
(1019,49, 19, 1, 49.99,500.00), 
(1020,50, 20, 1, 19.99,234.32),
(1021,51, 21, 2, 19.99,456.78), 
(1022,52, 22, 1, 49.99,100.00),
(1023,53, 23, 2, 9.99,200.00), 
(1024,54, 24, 2, 29.99,300.00), 
(1025,55, 25, 1, 129.99,478.98), 
(1026,56, 26, 1, 79.99,400.00), 
(1027,57, 27, 1, 99.99,213.44),
(1028,58, 28, 1, 39.99,500.00),
(1029,59, 29, 2, 49.99,543.00), 
(1030,60, 30, 2,119.00,432.00);

select * from sales_details;

create table Suppliers (
    Supplier_ID int primary key  ,
    Supplier_Name varchar(100) not null,
    Contact_Person varchar(100),
    Phone varchar(15),
    Email varchar(100),
    Address varchar(255)
);

insert into  Suppliers (Supplier_ID,Supplier_Name, Contact_Person, Phone, Email, Address)
values
(2001,'Raj', 'John Doe', '123-456-0001', 'Raj2@example.com', '123 Main St, City A'),
(2002,'Shree', 'Jane Smith', '123-456-0002', 'Shree3@example.com', '456 Elm St, City B'),
(2003,'Mahalaxmi', 'Alice Brown', '123-456-0003', 'Mahalaxmi4@example.com', '789 Oak St, City C'),
(2004,'Balaji', 'Bob Johnson', '123-456-0004', 'Balaji5@example.com', '101 Pine St, City D'),
(2005,'Ganesh', 'Charlie Davis', '123-456-0005', 'ganes6h@example.com', '202 Maple St, City E'),
(2006,'Vishal', 'Eve White', '123-456-0006', 'Vishal7@example.com', '303 Cedar St, City F'),
(2007,'Annapurna', 'Frank Moore', '123-456-0007', 'annapurna8@example.com', '404 Birch St, City G'),
(2008,'Sundaram', 'Grace Hall', '123-456-0008', 'Sundaram9@example.com', '505 Spruce St, City H'),
(2009,'Lakshmi', 'Henry Lee', '123-456-0009', 'Lashmi9@example.com', '606 Walnut St, City I'),
(2010,'Kumar', 'Ivy Clark', '123-456-0010', 'Kumar10@example.com', '707 Cherry St, City J'),
(2011,'Chaitanya', 'Jack Wright', '123-456-0011', 'Chaitanya11@example.com', '808 Sycamore St, City K'),
(2012,'Durga', 'Kara Hill', '123-456-0012', 'Durga12@example.com', '909 Magnolia St, City L'),
(2013,'Devakar', 'Liam Scott', '123-456-0013', 'Devakar13@example.com', '1010 Redwood St, City M'),
(2014,'Aryan', 'Mia Adams', '123-456-0014', 'Aryan14@example.com', '1111 Cypress St, City N'),
(2015,'Bharath', 'Noah Baker', '123-456-0015', 'Bharath15@example.com', '1212 Ash St, City O'),
(2016,'Saravanan', 'Olivia Carter', '123-456-0016', 'Saravanan16@example.com', '1313 Beech St, City P'),
(2017,'Oviya', 'Paul Martin', '123-456-0017', 'Oviya17@example.com', '1414 Hemlock St, City Q'),
(2018,'Ashok', 'Quinn Nelson', '123-456-0018', 'Ashok18@example.com', '1515 Alder St, City R'),
(2019,'Jagannath', 'Ruby Reed', '123-456-0019', 'Jagannath19@example.com', '1616 Willow St, City S'),
(2020,'Manohar', 'Sophia Turner', '123-456-0020', 'Manohar20@example.com', '1717 Fir St, City T'),
(2021,'vaibhav', 'Thomas King', '123-456-0021', 'vaibhav21@example.com', '1818 Poplar St, City U'),
(2022,'Amar', 'Uma Young', '123-456-0022', 'Amar22@example.com', '1919 Hickory St, City V'),
(2023,'Ravi', 'Victor Harris', '123-456-0023', 'Ravi23@example.com', '2020 Linden St, City W'),
(2024,'Harsha', 'Wendy Edwards', '123-456-0024', 'Harsha24@example.com', '2121 Dogwood St, City X'),
(2025,'Sanjay', 'Xavier Bell', '123-456-0025', 'Sanjay25@example.com', '2222 Ironwood St, City Y'),
(2026,'Krishna', 'Yara Fisher', '123-456-0026', 'Krishna26@example.com', '2323 Juniper St, City Z'),
(2027,'Megharaj', 'Zack Ramirez', '123-456-0027', 'Megharaj27@example.com', '2424 Hazel St, City A1'),
(2028,'Neelkanth', 'Anna Hayes', '123-456-0028', 'Neelkanth28@example.com', '2525 Laurel St, City B1'),
(2029,'Shivam', 'Ethan Cox', '123-456-0029', 'Shivam29@example.com', '2626 Holly St, City C1'),
(2030,'Karnesh', 'Isla Diaz', '123-456-0030', 'Karnesh30@example.com', '2727 Pinecone St, City D1');

select * from suppliers;

create table Restock (
    Restock_ID int primary key,
    Product_ID int not null,
    Supplier_ID int not null,
    Restock_Date date not null,
    Quantity int not null,
    foreign key (Product_ID) references products(Product_ID),
    foreign key (Supplier_ID) references Suppliers(Supplier_ID)
);


insert into Restock (Restock_ID,Product_ID, Supplier_ID, Restock_Date, Quantity) values
(201,1, 2001, '2023-12-01', 50),
(202,2, 2002, '2023-12-02', 100),
(203,3, 2003, '2023-12-03', 200),
(204,4, 2004, '2023-12-04', 150),
(205,5, 2005, '2023-12-05', 80),
(206,6, 2006, '2023-12-06', 60),
(207,7, 2007, '2023-12-07', 120),
(208,8, 2008, '2023-12-08', 75),
(209,9, 2009, '2023-12-09', 30),
(210,10, 2010, '2023-12-10', 45),
(211,11, 2011, '2023-12-11', 90),
(212,12, 2012, '2023-12-12', 110),
(213,13, 2013, '2023-12-13', 250),
(214,14, 2014, '2023-12-14', 200),
(215,15, 2015, '2023-12-15', 60),
(216,16,2016, '2023-12-16', 75),
(217,17, 2017, '2023-12-17', 85),
(218,18, 2018, '2023-12-18', 100),
(219,19, 2019, '2023-12-19', 95),
(220,20, 2020, '2023-12-20', 40),
(221,21, 2021, '2023-12-21', 65),
(222,22, 2022, '2023-12-22', 150),
(223,23, 2023, '2023-12-23', 120),
(224,24, 2024, '2023-12-24', 180),
(225,25, 2025, '2023-12-25', 70),
(226,26, 2026, '2023-12-26', 95),
(227,27, 2027, '2023-12-27', 140),
(228,28, 2028, '2023-12-28', 55),
(229,29, 2029, '2023-12-29', 35),
(230,30, 2030, '2023-12-30', 50);

select * from restock;
                                -------------------------------------------

                             ---- 1 .  View All Products with Current Stock Levels ----
SELECT                                 
    Product_ID, 
    Product_Name, 
    Category
    FROM 
    Products;
    
    --------------------------------------------------
             ---------------- 2 . View All Restocking Activities --------

SELECT 
    R.Restock_ID, 
    P.Product_Name, 
    S.Supplier_Name, 
    R.Quantity, 
    R.Restock_Date 
FROM 
    Restock R
JOIN 
    Products P ON R.Product_ID = P.Product_ID
JOIN 
    Suppliers S ON R.Supplier_ID = S.Supplier_ID;s
    
              -----------------------------------------------------------------------------
                                  ------------ 3.Suppliers with Most Restocks ------------------
             
SELECT 
    S.Supplier_Name, 
    COUNT(R.Restock_ID) AS Restock_Count 
FROM 
    Restock R
JOIN 
    Suppliers S ON R.Supplier_ID = S.Supplier_ID
GROUP BY 
    S.Supplier_Name 
ORDER BY 
    Restock_Count DESC;
    
				                 -----------------------------------------------------------------
						------------- 4 . Sales by Each Customer -------------
SELECT 
    C.Full_Name, 
    S.Sale_ID, 
    S.Sale_Date, 
    S.Total_Amount 
FROM 
    Sales S
JOIN 
    Customers C ON S.Customer_ID = C.Customer_ID
ORDER BY 
    C.Full_Name;
                            ---------------------------------------------------------------------------
			        --------------------- 5 .Sales with Product Details ---------------                    
SELECT 
    S.Sale_ID, 
    S.Sale_Date, 
    C.Full_Name AS Customer_Name, 
    P.Product_Name, 
    SD.Quantity, 
    SD.Unit_Price, 
    SD.Total_Price 
FROM 
    Sales S
JOIN 
    Sales_Details SD ON S.Sale_ID = SD.Sale_ID
JOIN 
    Products P ON SD.Product_ID = P.Product_ID
JOIN 
    Customers C ON S.Customer_ID = C.Customer_ID
ORDER BY 
    S.Sale_Date DESC;
    
    
                    
                    