DROP TABLE IF EXISTS restaurant;

CREATE TABLE IF NOT EXISTS restaurant(
id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) DEFAULT NULL,
distance FLOAT(10, 2) DEFAULT NULL,
stars INT(5) NOT NULL,
category VARCHAR(255) DEFAULT NULL,
favorite_dish VARCHAR(255) DEFAULT NULL,
takeout TINYINT(1) DEFAULT 1,
last_time_eating_there VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO restaurant VALUES(DEFAULT, 'Lovies BBQ', '0.03', 5, 'BBQ', 'pulled pork platter', 1, 'Sept. 15th, 2016'),
	(DEFAULT, 'Two Urban Licks', '10.4', 4, 'american', 'smoked salmon chips', 0, 'July 30th, 2016'),
	(DEFAULT, 'Buttermilk Kitchen', '1.7', 4, 'southern/breakfast', 'Fried chicken sandwich', 1, 'August 28th, 2016'),
	(DEFAULT, 'Bar Taco', '1.2', 2, 'tacos/mexican', 'fish taco', 0, 'June 7th, 2016'),
	(DEFAULT, 'The Ivy', '1.1', 1, 'american/bar', 'the water', 1, 'february 6th, 2016'),
	(DEFAULT, 'True Food', '0.9', 4, 'modern american', 'The salad', 1, 'July 24th, 2016'),
	(DEFAULT, "Jason's Deli", 0.2, 4, "Deli, Sandwich", "Turkey Sandwich", 1, 'Oct 12, 2015'),
	(DEFAULT, 'Chick-fil-A', 0.4, 4, "Sandwich", "Chicken Sandwich", 1, 'Sept 12, 2016'),
	(DEFAULT, 'Southern Art and Bourbon Bar', 0.4, 4, "Bar Food, Southern", "Country Chicken", 0, NULL),
	(DEFAULT, "Maggiano's Little Italy", 0.4, 4, "Italian", "Parmesian Chicken", 1, 'Mar 4, 2014')