Should I stay or should I hit?

To understand the statistical outcomes from the dataset, we used SQL to create custom queries. We first needed to create the table in SQL, and add additional fields needed to understand the data better.

![image](https://github.com/user-attachments/assets/bb9b1de0-7802-4cbc-b6af-ea4e3edf0f43)


SQL_Create Table

The image above shows the creation of our “blkjack’ table, which we then imported the file from Kaggle. Many of our statistical questions had to do with the first two cards that were delt to the player, so it was necessary to create a column that summed these two fields. The image below shows the creation of that column, which we called the “Starting_Hand”. We updated the table with this new field.
![image](https://github.com/user-attachments/assets/1a25ff66-572e-4786-84d3-410de7f3cfca)


SQL_Create Starting Hand

Utilizing our “Starting_Hand” field, we were able to find out various statistics about the likelihood of winning based on your starting hand, and other outcomes. This is the first of a series of queries that can be used to look at specific starting hand values. In the final query in the image below, we were curious about the starting hand of “16”, and its likelihood of winning. The second image shows those statistical outcomes from that starting hand.

![image](https://github.com/user-attachments/assets/7ff5f43b-8b8a-4e18-bad7-0a773ba662b2)

![image](https://github.com/user-attachments/assets/5ac44403-29e4-4175-90cf-6c7f2d4f88fb)



SQL_Starting Hand Stats

SQL_Likelyhood_Wining_16

We are ultimately curious about whether we should hit on our starting hand, so we built some queries to test the outcomes given our starting hand and our next move (card3). The image below shows three queries that allow the user to input their starting hand and their next move, and output the statistics of their possible outcomes (like busting or winning). Those outcomes can be seen in the second image.
![image](https://github.com/user-attachments/assets/e4b43c5b-b1cc-44cd-a41f-ba1f9fd722a6)

![image](https://github.com/user-attachments/assets/73e03ba3-1f76-4234-bc67-b1d95e8540df)



SQL_Hit or Stay

SQL_15_Hit

This information can be incredibly useful to determine what the next best moves are based on statistical outcomes of previous hands.
