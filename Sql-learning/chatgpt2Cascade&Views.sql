-- Create database
CREATE DATABASE HotelManagement;
USE HotelManagement;

-- Create tables
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    HotelName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Guests (
    GuestID INT PRIMARY KEY,
    GuestName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    HotelID INT,
    GuestID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- Insert hotels
INSERT INTO Hotels VALUES
(1, 'Urban Oasis', 'Paris'),
(2, 'Ocean Breeze', 'London'),
(3, 'Mountain Retreat', 'Zurich');

-- Insert guests
INSERT INTO Guests VALUES
(101, 'Alice', 'alice@example.com'),
(102, 'Bob', 'bob@example.com'),
(103, 'Charlie', 'charlie@example.com');

-- Insert bookings
INSERT INTO Bookings VALUES
(1001, 1, 101, '2025-09-10', '2025-09-15'),
(1002, 2, 101, '2025-09-20', '2025-09-25'),
(1003, 3, 102, '2025-09-18', '2025-09-22');

-- Step 3: Practice Questions
-- CASCADE Questions

-- 1. Test ON DELETE CASCADE: Delete Urban Oasis from Hotels and check if its bookings are automatically deleted from Bookings.
delete from Hotels
where HotelName = 'Urban Oasis';
-- . Verify Cascade in Child Table (Bookings)
SELECT * FROM Bookings;

-- 2. Delete GuestID = 102 and check if their bookings are automatically removed.
delete from guests
where GuestID= 102;
-- verify
select * from guests;
-- 3. Update HotelID = 2 to HotelID = 20 and check if Bookings table updates automatically.
delete from hotels
where HotelID = 2;
-- verify
select * from hotels;
-- 4. Update GuestID = 101 to GuestID = 201 and check if Bookings table updates automatically.
update guests
set GuestID = 201
where GuestID = 101;
-- verify
select * from guests;
select * from bookings;
select * from hotels;
-- 5. Reinsert deleted rows and try deleting a hotel that has no bookings — confirm that cascade only works when related records exist.
insert into hotels (HotelID, HotelName, City) 
values (1, 'Urban Oasis', 'Paris'),
('2', 'Ocean Breeze', 'London'
);
-- Restore Guests
INSERT INTO Guests (GuestID, GuestName, Email)
VALUES
(101, 'bob', 'bob@example.com')
ON DUPLICATE KEY UPDATE GuestName = VALUES(GuestName), Email = VALUES(Email);
-- Since BookingID=1001 (Urban Oasis booking) was also deleted due to CASCADE, you may also want to reinsert it:
insert into bookings (BookingID, HotelID, GuestID, CheckInDate, CheckOutDate) values
('1001', '1', '101', '2025-09-10', '2025-09-15'),
('1002', '2', '103', '2025-09-20', '2025-09-25'),
('1003', '3', '201', '2025-09-11', '2025-09-15');
-- VIEW Questions

-- 6. Create a view GuestBookings showing guest name, hotel name, and check-in date for all bookings.
create view guestbooking as
select g.GuestName, h.HotelName, b.CheckInDate
from bookings as b
join hotels as h
on b.HotelID = h.HotelID
join guests as g
on b.GuestID = g.GuestID;
-- list of questions that can be asked from this query
select * from guestbooking;

-- Q1: Show all bookings made by Alice.
select * from guestbooking
where GuestName = 'Alice';
-- Q2: List all guests who booked “Ocean Breeze.”
select * from guestbooking
where HotelName = 'Ocean Breeze';
-- Q3: Find the earliest check-in date from the view.
select min(CheckInDate) as earliestcheckin
from guestbooking;
-- Q4: Count how many bookings each guest has made.
select GuestName, count(*) as BookingByGuest
from guestbooking
group by GuestName;
-- Q5: Find which hotel has the most bookings.
select hotelname, count(*) as total_booking
from guestbooking
group by hotelname
order by total_booking desc
limit 1; 

-- 7. Query the view to see all bookings where City = 'Paris'.
create view AllBookings as 
select b.BookingID, b.HotelID, b.GuestID, b.CheckInDate, b.CheckOutDate, h.city
from bookings as b
join hotels as h
on b.HotelID = h.HotelID;
-- 
select * from AllBookings
where City = 'Paris';
-- list allbookings where guestid = 103
select * from AllBookings
where guestid = 103;
-- another way but with guests table
CREATE OR REPLACE VIEW GuestWithBookings AS
SELECT 
    g.GuestID,
    g.GuestName,
    b.BookingID,
    h.HotelName,
    b.CheckInDate,
    b.CheckOutDate
FROM Guests g
LEFT JOIN Bookings b ON g.GuestID = b.GuestID
LEFT JOIN Hotels h ON b.HotelID = h.HotelID;

-- show list where guestname = 'Charlie';
select * from GuestWithBookings
where guestname = 'Charlie';

-- 8 Create a view BookingCountPerHotel showing hotel name and number of bookings per hotel (use GROUP BY).
create view BookingCountPerHotel as
select h.HotelName, count(*) as numofbooking
from bookings as b
join hotels as h
on b.HotelID = h.HotelID
group by HotelName
order by numofbooking desc;
-- 
select * from BookingCountPerHotel;

-- 9. Create a view ActiveGuests that lists guests who have at least one booking.
create view ActiveGuests as 
select g.GuestName, count(*) as guestlist
from bookings as b
join guests as g
on b.GuestID = g.GuestID 
group by GuestName;

select * from ActiveGuests;

-- 10. Create a view HotelsWithNoBookings that shows hotels without any booking (use LEFT JOIN and IS NULL).
create view HotelsWithNoBookingss as
select h.HotelID, h.HotelName, h.City, b.BookingID
from hotels as h
left join bookings as b
on h.HotelID = b.HotelID
where b.BookingID is null;
--
select * from HotelsWithNoBookingss;

-- 11. Insert a new booking and confirm that all views automatically show updated results.
insert into bookings (BookingID, HotelID, GuestID, CheckInDate, CheckOutDate) values
(1004, 1, 103, '2025-09-25', '2025-09-28');
-- check and verify
select * from bookings;
select * from guests;
select * from hotels;
-- Hotels with no bookings will also refresh
SELECT * FROM HotelsWithNoBookings;
-- Booking count per hotel will update automatically
SELECT * FROM BookingCountPerHotel;
-- Active guests will update automatically
SELECT * FROM ActiveGuests;

-- 12. Drop the GuestBookings view and recreate it to include check-out date.
drop view if exists guestbooking;

-- recreate
create view guestbooking as
select h.hotelname, h.city, g.GuestName, b.CheckInDate, b.CheckOutDate
from hotels as h
join bookings as b
on h.hotelid = b.hotelid
join guests as g
on g.guestid = b.guestid;

-- verify
select * from guestbooking;

-- 13. Create a view UpcomingBookings showing only bookings where CheckInDate > CURDATE().
create view UpcomingBookings as
select BookingID, CheckInDate
from bookings
where CheckInDate > CURDATE();

-- verify
SELECT * FROM UpcomingBookings;

-- 14. Try inserting a new row through a simple view (if allowed) and check if it updates the base table.
-- Nice one — this is about updatable views in SQL ✅
-- Not all views allow INSERT. A view is updatable if:
-- It is based on a single table (not multiple joins).
-- It does not contain aggregate functions (SUM, COUNT, etc.).
-- It does not use DISTINCT, GROUP BY, UNION, etc.
-- It directly maps columns to the base table.

create view simpleguest as
select GuestID, GuestName, Email
from guests;

-- Now try inserting through the view:
insert into simpleguest (GuestID, GuestName, Email) values
(104, 'David', 'david@example.com');

-- verify
select * from simpleguest;

-- But if you try the same on a join-based view (like GuestBookings), MySQL will throw an error — because it doesn’t 
-- know how to split the inserted data across multiple tables.

-- 15. Create a view joining Hotels and Guests that shows which guests stayed in which city.
create view joininghotelsguests as
select g.GuestID, g.GuestName, g.Email, h.HotelID, h.HotelName, h.City,  b.CheckInDate, b.CheckOutDate
from guests as g
join bookings as b
on b.guestid = g.guestid
join hotels as h
on b.hotelid = h.hotelid;

-- verify
select * from joininghotelsguests;
-- Practice Queries on JoiningHotelsGuests
-- A) List all guests who stayed in Paris.
select GuestName, hotelname, city
from joininghotelsguests
where city = 'Paris';

-- B) Find all unique cities visited by each guest.
select guestname, group_concat(distinct city) as unique_city
from joininghotelsguests
group by guestname;

-- C) Count how many bookings each guest has made.
select guestid, guestname, count(*) as total_bookings
from joininghotelsguests
group by guestid, guestname;

-- D) Find the total number of different guests per city.
select  city, count(distinct guestid) as total_guest
from joininghotelsguests
group by city;

-- E) Show guests who stayed in more than one city.
select guestname, count(distinct city) as city_count
from joininghotelsguests
group by guestname
having city_count > 1;

-- F) Find the most popular hotel (with the highest number of bookings).
select hotelname, city, count(*) as highest_booking
from joininghotelsguests
group by hotelname, city
order by highest_booking desc
limit 1;

-- G) List guests along with their latest check-out date.
select guestname, max(CheckOutDate) as latest_checkout_date
from joininghotelsguests
group by guestname;

-- H) Find which guest stayed the longest in a single booking.
SELECT GuestName, HotelName, City,
       DATEDIFF(CheckOutDate, CheckInDate) AS StayLength
FROM JoiningHotelsGuests
ORDER BY StayLength DESC
LIMIT 1;

-- Advanced Queries on JoiningHotelsGuests
-- 1. Find repeat guests (those who booked more than once). (Shows guests who stayed in multiple bookings.)
select guestname, count(*) as total_booking
from JoiningHotelsGuests
group by guestname
having total_booking > 1;

-- 2. Find the busiest city (most total bookings).(Shows which city attracts the most bookings.)
select city, count(*) as most_booking_city
from JoiningHotelsGuests
group by city
order by most_booking_city desc
limit 1;

-- 3. Find guests who stayed in multiple hotels within the same city.(Shows if a guest “hopped” between hotels in the same city.)
select guestname, city, hotelname, count(DISTINCT hotelid) as hotel_count
from JoiningHotelsGuests
group by guestname, city, hotelname
having hotel_count >1;


select * from joininghotelsguests;

-- 4. Find overlapping bookings for the same guest (double-booked stays).(Detects if a guest booked two hotels with overlapping dates.)
SELECT 
    a.GuestID, 
    a.GuestName, 
    a.HotelName AS Hotel1, 
    a.CheckInDate, 
    a.CheckOutDate, 
    b.HotelName AS Hotel2,
    b.CheckInDate AS StartOverlap, 
    b.CheckOutDate AS EndOverlap
FROM JoiningHotelsGuests a
JOIN JoiningHotelsGuests b
  ON a.GuestID = b.GuestID
  AND a.HotelName <> b.HotelName -- to avoid matching the same hotel stay
  AND a.CheckInDate < b.CheckOutDate
  AND a.CheckOutDate > b.CheckInDate;

-- 5. Find the longest-staying guest overall (sum of all stays).(Identifies your “VIP guest” who spent the most nights across all bookings.)
select guestid, guestname,hotelname, sum(datediff(CheckOutDate, CheckInDate)) as longest_stay_duration
from joininghotelsguests
group by guestid, guestname,hotelname
order by longest_stay_duration desc
limit 1;


