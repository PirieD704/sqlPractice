-- # Restaurant DB V2

-- ## Table

-- For version 2 of the restaurant database, you will have the following tables:

-- * restaurant
-- * user
-- * review

-- The user could write any number of reviews for any number of restaurants. The restaurant table has these columns:

-- * id
-- * name
-- * address
-- * category

-- The user table would have these columns:

-- * id
-- * name
-- * email
-- * total_posts - between 0 to 7 (please use a constraint)

-- The review table would have these columns:

-- * id
-- * author user id (please use a constraint)
-- * stars - 1 to 5 stars (please use a constraint)
-- * title
-- * review - the text of the review
-- * restaurant id (please use a constraint)

-- 1. get the average stars by restaurant (restaurant name, average star rating)
select name, avg(stars) as avg from restaurant
left join review on restaurant.id = review.restaurant_id
group by restaurant.id;


-- 2. get the average stars by user (user name, average star rating)
select name, avg(stars) as avg from user
left join review on user.id = review.author_user_id
group by user.id;


-- 3. get the lowest star rating for each user (user name, lowest star rating)
select name, min(stars) as lowest_rating from user
left join review on user.id = review.author_user_id
group by user.id;


-- 4. get the number of reviews by restaurant (restaurant name, review count)
select name, count(restaurant_id) as count from restaurant
left join review on restaurant.id = review.restaurant_id
group by name;


-- 5. get the number of restaurants in each category (category name, restaurant count)
select catgory, count(name) as count from restaurant
group by catgory;


-- 6. get number of 5 star reviews by restaurant (restaurant name, 5-star count)
select name, count(*) as 5_star from restaurant
left join review on restaurant.id = review.author_user_id
where stars = 5
group by name;

-- 7. average star rating for a food category (category name, average star rating)
select catgory, avg(stars) as stars from restaurant
left join review on restaurant.id = review.author_user_id
group by catgory;

-- 1. How many comments are left on the highest rated restaurant?
select name, count(*) as count from restaurant
	left join review on restaurant.id = review.restaurant_id
	left join comments on review.id = comments.review_id
	group by name
	order by avg(stars) desc
	limit 1; 
	
	
-- 2. What user has the most comments and reviews combined?
select name, count(*) as count from user
	left join review on user.id = review.author_user_id
	left join comments on user.id = comments.author_id
	group by name;
/* 	order by  */



-- 3. What user has the most comments left for them? 



-- BONUS:
-- 4. What user/user combo has the most interaction?





-- Come up with 5 more queries, solve them, and share with the class