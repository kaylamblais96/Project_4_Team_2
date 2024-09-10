--blkjackhands file
-- Drop table if exists
DROP TABLE blkjack;
-- Create new table
CREATE TABLE blkjack (
	index INT NOT NULL,
	PlayerNo VARCHAR NOT NULL,
	card1 INT NOT NULL,
	card2 INT NOT NULL,
	card3 INT NOT NULL,
	card4 INT NOT NULL,
	card5 INT NOT NULL,
	sumofcards INT NOT NULL,
	dealcard1 INT NOT NULL,
	dealcard2 INT NOT NULL,
	dealcard3 INT NOT NULL,
	dealcard4 INT NOT NULL,
	dealcard5 INT NOT NULL, 
	sumofdeal INT NOT NULL,
	blkjck VARCHAR NOT NULL,
	winloss VARCHAR NOT NULL,
	plybustbeat VARCHAR NOT NULL,
	dlbustbeat VARCHAR NOT NULL,
	plwinamt INT NOT NULL,
	dlwinamt INT NOT NULL,
	ply2cardsum INT NOT NULL
	
);
-- View table columns and datatypes
SELECT * FROM blkjack;

--Create a "Starting Hand" column
ALTER TABLE blkjack
ADD starting_hand int;

--Populate that column with info
UPDATE blkjack
SET starting_hand = card1 + card2



--Count of win/loss by your starting hand
SELECT winloss, COUNT(winloss)
FROM blkjack
WHERE starting_hand = 16
GROUP BY winloss;


--Likelyhood of winning by your starting hand
SELECT winloss, (CAST(COUNT(winloss) AS FLOAT) * 100 / CAST((SELECT COUNT(*) FROM blkjack WHERE starting_hand = 16) AS FLOAT)) AS percentage_of_total
FROM blkjack
WHERE starting_hand = 16
GROUP BY winloss;

--Ask the likelyhood of winning by your starting hand and your next move
--Useful
SELECT winloss, (CAST(COUNT(winloss) AS FLOAT) * 100 / CAST((SELECT COUNT(*) FROM blkjack WHERE starting_hand = 15 AND card3 = 0 AND card4 = 0) AS FLOAT)) AS percentage_of_total
FROM blkjack
WHERE starting_hand = 15 AND card3 = 0 AND card4 = 0
GROUP BY winloss;

--Ask the likelyhood of busting by your starting hand and your next move when you stay
--Useful
SELECT plybustbeat, (CAST(COUNT(plybustbeat) AS FLOAT) * 100 / CAST((SELECT COUNT(*) FROM blkjack WHERE starting_hand = 17 AND card3 = 0 AND card4 = 0) AS FLOAT)) AS percentage_of_total
FROM blkjack
WHERE starting_hand = 17 AND card3 = 0 AND card4 = 0
GROUP BY plybustbeat, winloss;


--Ask the likelyhood of busting by your starting hand and your next move when you hit
--Useful
SELECT plybustbeat, (CAST(COUNT(plybustbeat) AS FLOAT) * 100 / CAST((SELECT COUNT(*) FROM blkjack WHERE starting_hand = 15 AND card3 != 0) AS FLOAT)) AS percentage_of_total
FROM blkjack
WHERE starting_hand = 15 AND card3 != 0
GROUP BY plybustbeat;

--Split test
SELECT *
	FROM blkjack
	WHERE starting_hand = 2;

--Busts
SELECT *
	FROM blkjack
	WHERE plybustbeat = 'Bust';

--Proof that no one busts on card3
SELECT *
	FROM blkjack
	WHERE plybustbeat = 'Bust' AND card3 != 0 AND card4 = 0;


--Starting Hand Likelyhood
SELECT starting_hand, COUNT(starting_hand)
FROM blkjack
GROUP BY starting_hand;

--Starting Hand Percentage
SELECT starting_hand, (CAST(COUNT(starting_hand) AS FLOAT) * 100.0 / CAST((SELECT COUNT(*) FROM blkjack) AS FLOAT)) AS percentage_of_total
FROM blkjack
GROUP BY starting_hand;


--Starting Hand Likelyhood of Winning
SELECT starting_hand, winloss, COUNT(*)
FROM blkjack
GROUP BY starting_hand, winloss;

--Starting Hand Percentage of Winning
--Need assistance figuring out how to get percentage of specific stating hand
SELECT starting_hand, winloss, (CAST(COUNT(winloss) AS FLOAT) * 100.0 / CAST((SELECT COUNT(starting_hand) FROM blkjack) AS FLOAT)) AS percentage_of_total
FROM blkjack
GROUP BY starting_hand, winloss;


--Starting Hand Percentage of Winning 
SELECT (starting_hand), COUNT(*) AS count_column2,
	(COUNT(*) * 100.0 / total_count) AS percentage
FROM
	blkjack,
	(SELECT starting_hand, COUNT(*) AS total_count
	FROM blkjack
	GROUP BY starting_hand) AS subquery
WHERE
	blkjack.starting_hand = subquery.starting_hand
GROUP BY
	blkjack.starting_hand, blkjack.winloss, subquery.total_count;

--Starting Hand Likelyhood of Winning testing
SELECT starting_hand, winloss, COUNT(*)
FROM blkjack
		(SELECT starting_hand, COUNT (*) AS total_count
		FROM blkjack
		GROUP BY starting_hand) AS subquery
GROUP BY starting_hand, winloss;
