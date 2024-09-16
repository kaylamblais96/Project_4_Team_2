Should I stay or should I hit?

To understand the statistical outcomes from the dataset, we used SQL to create custom queries. We first needed to create the table in SQL, and add additional fields needed to understand the data better.

![SQL_Create Table](https://github.com/user-attachments/assets/1b63600c-ffe1-442b-bd90-21d12b6c4f9a)

The image above shows the creation of our “blkjack’ table, which we then imported the file from Kaggle. 
Many of our statistical questions had to do with the first two cards that were delt to the player, so it was necessary to create a column that summed these two fields. The image below shows the creation of that column, which we called the “Starting_Hand”. We updated the table with this new field. 

![SQL_Create Starting Hand](https://github.com/user-attachments/assets/71a70790-256e-487e-a0fa-86cdc5f122cc)


Utilizing our “Starting_Hand” field, we were able to find out various statistics about the likelihood of winning based on your starting hand, and other outcomes. This is the first of a series of queries that can be used to look at specific starting hand values. In the final query in the image below, we were curious about the starting hand of “16”, and its likelihood of winning. The second image shows those statistical outcomes from that starting hand.

![SQL_Starting Hand Stats](https://github.com/user-attachments/assets/eeab7af7-8202-4c49-b726-bb831bfadb00)

![SQL_Likelyhood_Wining_16](https://github.com/user-attachments/assets/463a2ebf-4391-4cc9-80a6-0c3899e1ead0)


We are ultimately curious about whether we should hit on our starting hand, so we built some queries to test the outcomes given our starting hand and our next move (card3). The image below shows three queries that allow the user to input their starting hand and their next move, and output the statistics of their possible outcomes (like busting or winning). Those outcomes can be seen in the second image.

![SQL_Hit or Stay](https://github.com/user-attachments/assets/0ffa957e-3911-4878-b461-25bb9b2314df)

![SQL_15_Hit](https://github.com/user-attachments/assets/af3f179d-64a7-4313-b515-6d9c1187a3e5)

This information can be incredibly useful to determine what the next best moves are based on statistical outcomes of previous hands. 

