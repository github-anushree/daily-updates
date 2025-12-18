create database try4;

use try4;

-- Create the Hotels table
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    HotelName VARCHAR(100),
    Location VARCHAR(50),
    Rating DECIMAL(3, 2),
    NumRooms INT,
    PricePerNight DECIMAL(8, 2),
    Amenities VARCHAR(255),
    CheckInTime TIME,
    CheckOutTime TIME,
    ContactNumber VARCHAR(20)
);

-- Insert 30 rows of sample data
INSERT INTO Hotels (HotelID, HotelName, Location, Rating, NumRooms, PricePerNight, Amenities, CheckInTime, CheckOutTime, ContactNumber)
VALUES
(1, 'Grand Hotel', 'City Center', 4.5, 200, 150.00, 'Free Wi-Fi, Pool, Gym', '14:00:00', '12:00:00', '+1234567890'),
(2, 'Luxury Resort', 'Beachfront', 4.8, 150, 300.00, 'Private Beach, Spa, Restaurants', '15:00:00', '11:00:00', '+1987654321'),
(3, 'Cozy Inn', 'Suburb', 3.5, 100, 80.00, 'Breakfast Included, Parking', '12:00:00', '10:00:00', '+1122334455'),
(4, 'Mountain View Lodge', 'Mountain Area', 4.2, 80, 120.00, 'Scenic Views, Hiking Trails', '13:30:00', '12:30:00', '+1555666777'),
(5, 'Riverside Retreat', 'Riverfront', 4.6, 120, 180.00, 'River Access, Fishing', '14:00:00', '11:30:00', '+1444333222'),
(6, 'Urban Oasis', 'Downtown', 4.4, 180, 200.00, 'City Views, Rooftop Bar', '15:00:00', '12:00:00', '+1999888777'),
-- Continue with additional rows as needed...
(7, 'Seaside Suites', 'Seaside', 4.0, 160, 160.00, 'Ocean View, Spa', '14:30:00', '12:30:00', '+1777666555'),
(8, 'Historic Inn', 'Old Town', 3.8, 90, 100.00, 'Antique Decor, Fireplace', '13:00:00', '11:00:00', '+1888999000'),
(9, 'Country Retreat', 'Countryside', 4.3, 120, 140.00, 'Peaceful Surroundings, Farm-to-Table Dining', '14:00:00', '11:30:00', '+1222111333'),
(10, 'Skyline Tower Hotel', 'Skyline District', 4.7, 220, 250.00, 'Panoramic Views, Fine Dining', '16:00:00', '12:00:00', '+1888777666');
-- Continue inserting rows for the Hotels table
INSERT INTO Hotels (HotelID, HotelName, Location, Rating, NumRooms, PricePerNight, Amenities, CheckInTime, CheckOutTime, ContactNumber)
VALUES
(11, 'Lakeside Lodge', 'Lakeside', 4.1, 100, 120.00, 'Lake View, Canoeing', '13:00:00', '11:30:00', '+1888444555'),
(12, 'Downtown Suites', 'Downtown', 4.5, 180, 200.00, 'City Center Access, Shopping', '15:30:00', '12:00:00', '+1999888777'),
(13, 'Family Inn', 'Suburb', 3.9, 120, 90.00, 'Child-friendly, Playground', '14:00:00', '11:00:00', '+1666777888'),
(14, 'Hilltop Resort', 'Hill Station', 4.6, 150, 180.00, 'Mountain Views, Spa', '16:00:00', '12:30:00', '+1555444666'),
(15, 'Island Paradise Hotel', 'Island', 4.7, 200, 220.00, 'Beachfront, Water Sports', '14:30:00', '12:00:00', '+1222111999'),
(16, 'Garden Retreat', 'Countryside', 4.0, 100, 100.00, 'Botanical Garden, Tranquil Setting', '13:00:00', '10:30:00', '+1333444999'),
(17, 'Modern City Hotel', 'City Center', 4.4, 250, 230.00, 'Modern Decor, Business Center', '15:00:00', '11:30:00', '+1444222111'),
(18, 'Ski Lodge', 'Mountain Area', 4.2, 80, 150.00, 'Ski Access, Fireplace', '14:00:00', '12:30:00', '+1777666000'),
(19, 'Beach Bungalow', 'Beachfront', 4.8, 120, 280.00, 'Private Beach, Cabanas', '16:30:00', '12:00:00', '+1333222111'),
(20, 'Historic Mansion', 'Old Town', 4.3, 15, 400.00, 'Antique Furnishings, Garden', '14:00:00', '11:00:00', '+1888444333'),
(21, 'Alpine Chalet', 'Mountain Resort', 4.5, 50, 180.00, 'Ski-In/Ski-Out, Hot Tub', '15:30:00', '12:00:00', '+1777333000'),
(22, 'Sunset View Hotel', 'Scenic Overlook', 4.2, 80, 130.00, 'Panoramic Sunsets, Lounge', '14:00:00', '11:30:00', '+1999000111'),
(23, 'Rural Lodge', 'Countryside', 3.7, 70, 70.00, 'Quiet Retreat, Farm Views', '14:00:00', '11:00:00', '+1222111000'),
(24, 'Sky High Hotel', 'Skyline District', 4.9, 300, 300.00, 'Skydeck, Fine Dining', '16:00:00', '12:00:00', '+1888111222'),
(25, 'Harborfront Haven', 'Harbor Area', 4.6, 180, 220.00, 'Harbor Views, Maritime Experience', '14:30:00', '12:00:00', '+1444111222'),
(26, 'Tranquil Terrace', 'Suburb', 3.8, 100, 90.00, 'Garden Views, Relaxing Atmosphere', '13:00:00', '10:30:00', '+1333444555'),
(27, 'Cityscape Suites', 'City Center', 4.4, 200, 250.00, 'City Skyline Views, Modern Decor', '15:00:00', '11:30:00', '+1222000333'),
(28, 'Charming Cottage', 'Village', 3.9, 50, 120.00, 'Quaint Setting, Fireplace', '14:00:00', '12:30:00', '+1666777999'),
(29, 'Rooftop Retreat', 'City Center', 4.7, 120, 180.00, 'Rooftop Lounge, City Views', '16:00:00', '12:00:00', '+1999888000'),
(30, 'Eco-friendly Lodge', 'Nature Reserve', 4.3, 80, 160.00, 'Green Practices, Wildlife Viewing', '14:30:00', '11:30:00', '+1222111888');
-- Continue inserting more rows for the Hotels table
INSERT INTO Hotels (HotelID, HotelName, Location, Rating, NumRooms, PricePerNight, Amenities, CheckInTime, CheckOutTime, ContactNumber)
VALUES
(31, 'Mountain Retreat', 'Mountain Area', 4.2, 90, 110.00, 'Scenic Views, Hiking Trails', '13:30:00', '12:30:00', '+1555888999'),
(32, 'Oceanfront Oasis', 'Oceanfront', 4.7, 150, 250.00, 'Ocean Views, Spa, Pool', '14:00:00', '11:30:00', '+1444777666'),
(33, 'Countryside Cabins', 'Countryside', 3.9, 80, 80.00, 'Rustic Cabins, Nature Walks', '14:00:00', '11:00:00', '+1333666777'),
(34, 'Metropolitan Suites', 'City Center', 4.5, 220, 270.00, 'Urban Luxury, Business Amenities', '15:30:00', '12:00:00', '+1999333222'),
(35, 'Island Hideaway', 'Island', 4.8, 180, 300.00, 'Private Island, Waterfront Villas', '14:30:00', '12:00:00', '+1222444888'),
(36, 'Classic Manor', 'Old Town', 3.7, 100, 110.00, 'Historic Charm, Garden', '13:00:00', '10:30:00', '+1222111999'),
(37, 'Skyline Suites', 'Skyline District', 4.4, 200, 240.00, 'Skyline Views, Luxury Accommodations', '15:00:00', '11:30:00', '+1444888999'),
(38, 'Ski Chalet', 'Mountain Resort', 4.6, 70, 140.00, 'Ski-In/Ski-Out, Fireplace', '14:00:00', '12:30:00', '+1222999000'),
(39, 'Sunrise Hotel', 'Scenic Overlook', 4.3, 120, 180.00, 'Panoramic Sunrise Views', '16:00:00', '12:00:00', '+1777888111'),
(40, 'Rural Retreat', 'Countryside', 4.0, 60, 95.00, 'Tranquil Setting, Farm Views', '14:00:00', '11:00:00', '+1888000111'),
(41, 'Seaview Inn', 'Seaside', 4.2, 100, 130.00, 'Seaside Views, Coastal Experience', '14:30:00', '12:30:00', '+1777333222'),
(42, 'City Lights Hotel', 'City Center', 4.6, 180, 220.00, 'City Skyline Views, Nightlife', '15:30:00', '12:00:00', '+1444111000'),
(43, 'Quaint Quarters', 'Village', 3.8, 40, 85.00, 'Charming Atmosphere, Local Shops', '13:00:00', '10:30:00', '+1333222000'),
(44, 'Alpine Retreat', 'Mountain Area', 4.5, 120, 160.00, 'Mountain Views, Cozy Fireplace', '14:00:00', '11:30:00', '+1666777555'),
(45, 'Harbor Lights Hotel', 'Harbor Area', 4.4, 150, 190.00, 'Harbor Views, Maritime Theme', '14:30:00', '12:00:00', '+1888000444'),
(46, 'Garden Grove', 'Countryside', 3.9, 80, 110.00, 'Garden Views, Outdoor Seating', '13:00:00', '11:00:00', '+1222333111'),
(47, 'Downtown Dream', 'Downtown', 4.3, 200, 260.00, 'Central Location, Stylish Interiors', '15:00:00', '11:30:00', '+1444333444'),
(48, 'Lighthouse Lodge', 'Coastal Area', 4.7, 120, 180.00, 'Lighthouse Views, Coastal Decor', '16:00:00', '12:00:00', '+1999888333'),
(49, 'Pineview Cabins', 'Forest Retreat', 4.0, 60, 100.00, 'Wooded Setting, Nature Trails', '14:30:00', '11:30:00', '+1333111222'),
(50, 'Urban Escape', 'City Center', 4.5, 180, 230.00, 'City Retreat, Relaxing Atmosphere', '14:00:00', '12:00:00', '+1222444555'),
-- Add more rows...
(51, 'Majestic Manor', 'Old Town', 4.4, 25, 350.00, 'Grand Architecture, Historic Charm', '15:30:00', '12:30:00', '+1777666999'),
(52, 'Hillside Haven', 'Mountain Area', 4.1, 80, 120.00, 'Hillside Views, Cozy Atmosphere', '13:30:00', '11:30:00', '+1555888111'),
(53, 'Tropical Retreat', 'Tropical Paradise', 4.8, 150, 270.00, 'Tropical Gardens, Beach Access', '14:00:00', '11:00:00', '+1444777111'),
(54, 'Rustic Lodge', 'Nature Retreat', 3.7, 100, 90.00, 'Rustic Decor, Nature Trails', '14:00:00', '10:30:00', '+1333666888'),
(55, 'Countryside Cabanas', 'Countryside', 4.2, 120, 140.00, 'Rural Charm, Private Cabanas', '15:30:00', '12:00:00', '+1999333111'),
(56, 'Skyline Suites II', 'Skyline District', 4.5, 220, 260.00, 'City Views, Luxury Amenities', '14:30:00', '12:30:00', '+1222444333'),
(57, 'Lakeside Lodge II', 'Lakeside', 4.6, 100, 130.00, 'Lakefront Views, Water Activities', '16:00:00', '12:00:00', '+1444888222'),
(58, 'Mountain Vista', 'Mountain Resort', 4.3, 90, 150.00, 'Mountain Scenery, Hiking Trails', '14:30:00', '11:30:00', '+1222999888'),
(59, 'Seaside Serenity', 'Seaside', 4.7, 180, 210.00, 'Seaside Tranquility, Beachfront', '15:00:00', '11:00:00', '+1777888222'),
(60, 'Historic Hotel', 'Old Town', 4.0, 40, 110.00, 'Historic Building, Antique Furnishings', '14:00:00', '10:30:00', '+1222333888');
-- Continue inserting more rows for the Hotels table
INSERT INTO Hotels (HotelID, HotelName, Location, Rating, NumRooms, PricePerNight, Amenities, CheckInTime, CheckOutTime, ContactNumber)
VALUES
(61, 'Urban Oasis', 'City Center', 4.6, 200, 230.00, 'City Views, Relaxing Atmosphere', '15:30:00', '12:30:00', '+1555888333'),
(62, 'Sunset Suites', 'Coastal Area', 4.5, 150, 200.00, 'Sunset Views, Coastal Retreat', '14:30:00', '12:00:00', '+1444777222'),
(63, 'Meadowview Inn', 'Countryside', 3.8, 70, 95.00, 'Meadow Views, Outdoor Relaxation', '13:00:00', '10:30:00', '+1333666999'),
(64, 'Grand Central Hotel', 'City Center', 4.7, 180, 250.00, 'Central Location, Grand Interiors', '15:00:00', '11:30:00', '+1999333444'),
(65, 'Island Paradise', 'Island', 4.9, 120, 320.00, 'Private Island Getaway, Luxury Villas', '14:30:00', '12:00:00', '+1222444111'),
(66, 'Charming Chalets', 'Mountain Resort', 4.4, 90, 140.00, 'Charming Chalet Accommodations', '14:00:00', '11:30:00', '+1222111000'),
(67, 'Cityscape Hotel', 'City Center', 4.5, 220, 240.00, 'City Views, Modern Comfort', '15:30:00', '12:00:00', '+1444888333'),
(68, 'Ski Lodge', 'Mountain Area', 4.2, 60, 120.00, 'Ski Resort Accommodations', '14:00:00', '12:30:00', '+1222999111'),
(69, 'Morning Dew Inn', 'Nature Retreat', 3.9, 80, 110.00, 'Nature Surroundings, Tranquil Stay', '13:00:00', '11:00:00', '+1888000999'),
(70, 'Harmony Haven', 'Countryside', 4.3, 100, 150.00, 'Harmonious Setting, Garden Views', '16:00:00', '12:00:00', '+1777888333'),
-- Add more rows...
(71, 'Seaside Splendor', 'Seaside', 4.1, 120, 170.00, 'Seaside Luxury, Coastal Experience', '14:30:00', '12:30:00', '+1777333111'),
(72, 'Central Plaza Hotel', 'City Center', 4.6, 180, 220.00, 'Central Location, Stylish Interiors', '15:30:00', '12:00:00', '+1444111000'),
(73, 'Rustic Retreat', 'Village', 3.7, 40, 85.00, 'Rustic Charm, Village Atmosphere', '13:00:00', '10:30:00', '+1333222000'),
(74, 'Alpine Lodge', 'Mountain Area', 4.5, 120, 160.00, 'Mountain Lodge, Cozy Fireplace', '14:00:00', '11:30:00', '+1666777555'),
(75, 'Harbor Haven', 'Harbor Area', 4.4, 150, 190.00, 'Harbor Views, Nautical Decor', '14:30:00', '12:00:00', '+1888000444'),
(76, 'Garden Getaway', 'Countryside', 3.9, 80, 110.00, 'Garden Views, Outdoor Relaxation', '13:00:00', '11:00:00', '+1222333111'),
(77, 'Downtown Deluxe', 'Downtown', 4.3, 200, 260.00, 'Central Location, Deluxe Interiors', '15:00:00', '11:30:00', '+1444333444'),
(78, 'Lighthouse Retreat', 'Coastal Area', 4.7, 120, 180.00, 'Lighthouse Views, Coastal Charm', '16:00:00', '12:00:00', '+1999888333'),
(79, 'Pinecrest Cabins', 'Forest Retreat', 4.0, 60, 100.00, 'Wooded Setting, Cabin Comfort', '14:30:00', '11:30:00', '+1333111222'),
(80, 'City Haven', 'City Center', 4.5, 180, 230.00, 'City Retreat, Urban Relaxation', '14:00:00', '12:00:00', '+1222444555');
-- Add more rows...
-- Continue inserting more rows for the Hotels table
INSERT INTO Hotels (HotelID, HotelName, Location, Rating, NumRooms, PricePerNight, Amenities, CheckInTime, CheckOutTime, ContactNumber)
VALUES
(81, 'Sunny Shores Inn', 'Seaside', 4.2, 100, 150.00, 'Seaside Views, Comfortable Rooms', '15:30:00', '12:30:00', '+1555888333'),
(82, 'Sky High Suites', 'Downtown', 4.6, 220, 280.00, 'City Views, Luxury Accommodations', '14:30:00', '12:00:00', '+1444777222'),
(83, 'Rural Retreat', 'Countryside', 4.1, 80, 120.00, 'Peaceful Surroundings, Countryside Charm', '13:00:00', '10:30:00', '+1333666999'),
(84, 'Central Tower Hotel', 'City Center', 4.8, 180, 260.00, 'Central Location, Modern Amenities', '15:00:00', '11:30:00', '+1999333444'),
(85, 'Island Getaway Resort', 'Island', 4.9, 120, 320.00, 'Private Island Retreat, Beachfront Villas', '14:30:00', '12:00:00', '+1222444111'),
(86, 'Woodland Cabins', 'Forest Retreat', 3.9, 70, 100.00, 'Wooded Setting, Cozy Cabins', '13:00:00', '10:30:00', '+1333666888'),
(87, 'Metro Suites', 'City Center', 4.5, 220, 240.00, 'Metropolitan Lifestyle, Stylish Decor', '15:30:00', '12:00:00', '+1444888333'),
(88, 'Ski Chalet', 'Mountain Resort', 4.2, 60, 120.00, 'Ski Lodge Accommodations', '14:00:00', '12:30:00', '+1222999111'),
(89, 'Meadowside Retreat', 'Nature Retreat', 3.8, 90, 110.00, 'Meadow Views, Serene Atmosphere', '13:00:00', '11:00:00', '+1888000999'),
(90, 'Tranquil Gardens Inn', 'Countryside', 4.3, 100, 140.00, 'Tranquil Gardens, Outdoor Relaxation', '16:00:00', '12:00:00', '+1777888333'),
-- Add more rows...
(91, 'Oceanfront Oasis', 'Seaside', 4.1, 120, 170.00, 'Ocean Views, Luxury Experience', '14:30:00', '12:30:00', '+1777333111'),
(92, 'Metropolitan Suites II', 'City Center', 4.6, 180, 220.00, 'Metropolitan Lifestyle, Elegant Interiors', '15:30:00', '12:00:00', '+1444111000'),
(93, 'Village Inn', 'Village', 3.7, 40, 85.00, 'Quaint Village Setting, Charming Atmosphere', '13:00:00', '10:30:00', '+1333222000'),
(94, 'Alpine Retreat', 'Mountain Area', 4.5, 120, 160.00, 'Mountain Retreat, Fireplace Comfort', '14:00:00', '11:30:00', '+1666777555'),
(95, 'Bayview Lodge', 'Harbor Area', 4.4, 150, 190.00, 'Bay Views, Coastal Decor', '14:30:00', '12:00:00', '+1888000444'),
(96, 'Garden Oasis', 'Countryside', 3.9, 80, 110.00, 'Garden Views, Outdoor Serenity', '13:00:00', '11:00:00', '+1222333111'),
(97, 'Downtown Elegance', 'Downtown', 4.3, 200, 260.00, 'Central Location, Elegant Interiors', '15:00:00', '11:30:00', '+1444333444'),
(98, 'Lighthouse Views Inn', 'Coastal Area', 4.7, 120, 180.00, 'Lighthouse Views, Coastal Retreat', '16:00:00', '12:00:00', '+1999888333'),
(99, 'Pinecone Cottages', 'Forest Retreat', 4.0, 60, 100.00, 'Nature Setting, Cozy Cottages', '14:30:00', '11:30:00', '+1333111222'),
(100, 'City Escape Hotel', 'City Center', 4.5, 180, 230.00, 'City Escape, Modern Comfort', '14:00:00', '12:00:00', '+1222444555');
-- Add more rows...

select * from hotels;

-- Create the HotelReviews table
CREATE TABLE HotelReviews (
    ReviewID INT PRIMARY KEY,
    HotelID INT,
    ReviewerName VARCHAR(50),
    Rating DECIMAL(3, 2),
    ReviewText TEXT,
    ReviewDate DATE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);
-- Insert 10 rows of sample data into the HotelReviews table
INSERT INTO HotelReviews (ReviewID, HotelID, ReviewerName, Rating, ReviewText, ReviewDate)
VALUES
(1, 61, 'John Doe', 4.5, 'Great experience! Wonderful views and comfortable rooms.', '2023-01-10'),
(2, 62, 'Jane Smith', 4.0, 'The sunset view from the hotel was breathtaking.', '2023-02-05'),
(3, 63, 'Alice Johnson', 3.5, 'Peaceful surroundings, but room service could be improved.', '2023-03-20'),
(4, 64, 'Bob Williams', 4.8, 'Excellent service and luxurious interiors.', '2023-04-15'),
(5, 65, 'Eva Davis', 5.0, 'A truly magical experience on the private island.', '2023-05-01'),
(6, 66, 'Mike Brown', 4.2, 'Cozy chalet accommodations, perfect for a mountain retreat.', '2023-06-10'),
(7, 67, 'Emily Miller', 4.5, 'Modern and comfortable with a great view of the city.', '2023-07-15'),
(8, 68, 'Chris Wilson', 3.8, 'Enjoyed the ski lodge atmosphere, but rooms were a bit small.', '2023-08-01'),
(9, 69, 'Sophie Taylor', 4.0, 'Beautiful gardens and a relaxing stay in the countryside.', '2023-09-10'),
(10, 70, 'David Clark', 4.3, 'Harmony Haven lives up to its name. Peaceful and serene.', '2023-10-05');
-- Add 10 more rows...
-- Insert 20 more rows into the HotelReviews table
INSERT INTO HotelReviews (ReviewID, HotelID, ReviewerName, Rating, ReviewText, ReviewDate)
VALUES
(11, 71, 'Linda Garcia', 4.1, 'Wonderful stay in a coastal paradise. Highly recommended!', '2023-11-20'),
(12, 72, 'Steven Martinez', 4.7, 'Impressive architecture and top-notch service.', '2023-12-10'),
(13, 73, 'Ava Rodriguez', 3.9, 'Mixed feelings about the forest retreat. Beautiful but a bit remote.', '2024-01-05'),
(14, 74, 'Noah Hernandez', 4.5, 'City vibes in the heart of downtown. Loved every moment.', '2024-02-15'),
(15, 75, 'Olivia Smith', 4.2, 'Mountain views and cozy cabins, perfect for a winter getaway.', '2024-03-01'),
(16, 76, 'Lucas Johnson', 4.0, 'Serene meadow views and a peaceful atmosphere.', '2024-04-10'),
(17, 77, 'Emma Williams', 4.6, 'Metropolitan Suites II exceeded expectations. Great value for money.', '2024-05-15'),
(18, 78, 'Aiden Brown', 3.5, 'Village Inn was charming, but amenities were limited.', '2024-06-01'),
(19, 79, 'Mia Wilson', 4.3, 'Alpine Retreat provided a relaxing mountain escape.', '2024-07-10'),
(20, 80, 'Jackson Taylor', 4.8, 'Bayview Lodge offered a perfect coastal retreat. Will visit again.', '2024-08-05'),
-- Add 10 more rows...
(21, 81, 'Sophia Clark', 3.8, 'Woodland Cabins was nice, but cleanliness could be improved.', '2024-09-20'),
(22, 82, 'David Baker', 4.2, 'Sky High Suites delivered a luxurious experience with stunning views.', '2024-10-15'),
(23, 83, 'Lily Hall', 4.4, 'Tranquil Gardens Inn provided a peaceful and refreshing stay.', '2024-11-01'),
(24, 84, 'James Turner', 4.5, 'Central Tower Hotel was exceptional in terms of service and amenities.', '2024-12-10'),
(25, 85, 'Grace White', 4.1, 'Island Getaway Resort exceeded expectations. Truly a paradise.', '2025-01-05'),
(26, 86, 'Benjamin Scott', 3.7, 'Rural Retreat offered a quiet escape, but could use more facilities.', '2025-02-15'),
(27, 87, 'Zoe King', 4.6, 'Ski Chalet provided a cozy and charming atmosphere.', '2025-03-01'),
(28, 88, 'Leo Turner', 4.0, 'Metro Suites offered a convenient city stay with modern comforts.', '2025-04-10'),
(29, 89, 'Chloe Adams', 4.3, 'Meadowside Retreat was a delightful nature retreat.', '2025-05-15'),
(30, 90, 'Ethan Foster', 4.5, 'City Escape Hotel provided a perfect urban getaway.', '2025-06-01');
-- Add 10 more rows...

select * from HotelReviews;

-- Question 1: Retrieve a list of hotels along with their average rating from reviews.
select h.hotelname, h.hotelid,   avg(r.Rating) as avg_rating
from hotels as h
join hotelreviews as r
group by h.hotelname, h.hotelid;

-- Question 1: Pairs of hotels in the same location
select h1.hotelid, h1.hotelname, h1.location, h2.hotelid, h2.hotelname
from hotels as h1
join hotels as h2
on h1.location = h2.location and h1.hotelid < h2.hotelid;

-- Question 2: Hotels with the same contact number
select h1.hotelid, h1.hotelname, h1.contactnumber, h2.hotelid, h2.hotelname
from hotels as h1
join hotels as h2
on h1.contactnumber = h2.contactnumber and h1.hotelid < h2.hotelid;

-- Question 3: Hotels with similar price per night
select h1.hotelid, h1.hotelname, h1.PricePerNight, h2.hotelid, h2.PricePerNight
from hotels as h1
join hotels as h2
on h1.PricePerNight = h2.PricePerNight and h1.hotelid < h2.hotelid;

-- Question 4: Hotels with the same amenities and check-in time
select h1.hotelid, h1.hotelname,h1.CheckInTime, h1.Amenities, h2.Amenities, h2.CheckInTime
from hotels as h1
join hotels as h2
on h1.CheckInTime = h2.CheckInTime and h1.amenities = h2.amenities and h1.hotelid < h2.hotelid;

-- Question 5: Retrieve pairs of hotels with the same rating.
select h1.hotelid, h1.hotelname, h1.Rating, h2.hotelid, h2.Rating
from hotels as h1
join hotels as h2
on h1.rating = h2.Rating and h1.hotelid < h2.hotelid;

-- Question 6: Find hotels with similar numbers of rooms.
select h1.hotelid, h1.hotelname, h1.NumRooms, h2.hotelid, h2.NumRooms
from hotels as h1
join hotels as h2
on h1.NumRooms = h2.NumRooms and h1.hotelid < h2.hotelid;

-- Question 7: Identify hotels with the same check-out time.
select h1.hotelid, h1.hotelname, h1.CheckOutTime, h2.hotelid, h2.CheckOutTime
from hotels as h1
join hotels as h2
on h1.CheckOutTime = h2.CheckOutTime and h1.hotelid < h2.hotelid;

-- Question 8: Retrieve pairs of hotels with the same contact number.
-- both are same question
-- -- Question 2: Hotels with the same contact number
SELECT 
    h1.hotelname AS Hotel1, 
    h2.hotelname AS Hotel2, 
    h1.contactnumber AS SharedContactNumber
FROM hotels AS h1
JOIN hotels AS h2
    ON h1.contactnumber = h2.contactnumber
   AND h1.hotelid < h2.hotelid;

-- Question 9: Find hotels with similar amenities.
select h1.hotelid, h1.hotelname, h1.Amenities, h2.Amenities
from hotels as h1
join hotels as h2
on  h1.amenities = h2.amenities and h1.hotelid < h2.hotelid;

-- or 
SELECT 
    h1.hotelname AS Hotel1, 
    h2.hotelname AS Hotel2, 
    h1.Amenities AS SimilarAmenities
FROM hotels AS h1
JOIN hotels AS h2
    ON h1.Amenities = h2.Amenities
   AND h1.hotelid < h2.hotelid;





