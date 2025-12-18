CREATE TABLE website_traffic (
id INT AUTO_INCREMENT PRIMARY KEY,
Date DATE,
PageURL VARCHAR(100),
Sessions INT,
Users INT,
AvgSessionDuration TIME,
BounceRate VARCHAR(10),
Conversions INT,
Source VARCHAR(100)

);
DROP TABLE IF EXISTS conversion_data;
DROP TABLE IF EXISTS website_traffic;

SELECT * FROM website_traffic
LIMIT 10;

INSERT INTO website_traffic
(Date, PageURL, Sessions, Users, AvgSessionDuration, BounceRate, Conversions, Source)
VALUES
('2024-01-01', '/home', 120, 100, '00:02:30', '55%', 3, 'google'),
('2024-01-02', '/contact', 85, 60, '00:01:50', '62%', 1, 'direct'),
('2024-01-03', '/pricing', 90, 70, '00:02:00', '49%', 2, 'referral'),
('2024-01-04', '/home', 130, 105, '00:02:20', '51%', 4, 'google'),
('2024-01-05', '/blog', 80, 65, '00:03:00', '58%', 2, 'social');

SELECT * FROM website_traffic_raw
LIMIT 10;



