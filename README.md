Should I stay or should I hit?

The goal of this exercise was to create a Tableau Visualization to answer the question "Should I Hit or Should I Stay?"


Original Data Source:
Kaggle BlackJack Viz + Machine Learning
Includes 900k hands of BlackJack Results includes
PlayNo, card1, card2, card3, card4, card5, sumof cards, dealcard1, dealcard2, dealcard3, dealcard4, dealcard5, sumofdeal, blkjck, winloss, plybustbeat, dlbustbeat, plwinamt, dlwinamt & ply2cardsum.
Link to blkjckhands_reduced.csv
Limitation:
Due to size of 61.77MB the team opted to use a third of the size to 300K records to allow upload to git hub at 20.6 MB.
This reduced fille of 300K hands was saved as blkjckhands_reduced.csv
Method: Reference Google Collab Ipython Notebook : blackjack_dataset_tableau_probability.ipynb for full code and text narrative.
Import dependencies and file path to blkjckhands_reduced.csv
import pandas as pd
import tensorflow as tf
from matplotlib import pyplot as plt
import seaborn as sns
Card Strategy Logic
In order to answer the question Should I Hit or Should I Stay a logic statement had to be created.
The data set includes the sum of the player cards across 5 players for 300k hands.
Each player has an option to get up to 5 cards and each sum of the card is represented by card1-card5. If the card was not requested it will show 0.
A card strategy logic was calculated based on if the player selected 2, 3, 4, or 5 card in the form of an else statement.
Here is an example of a 2 card strategy code 2 card strategy chart

![image](https://github.com/user-attachments/assets/9f66ec92-484d-4463-99cd-3bfdb37a4bcf)
![image](https://github.com/user-attachments/assets/3cfb01e8-6fb7-4650-85e8-d2711bd06af4)


Once the logic was finalized any unnecessary columns was dropped and a copy of the dataframe was created to export and saved to a new csv file that was used for the tableau visualization.
New CSV file created from ipynb blackjack_dataset_tableau_probability.csv
Link to Tableau Public Dashboard for Should I Hit or Should I Stay?
Link to packaged Tableau Workbook Should I Hit or Should I Stay?
blackjack_dataset_tableau_probability.csv
Image of Tableau Dashboard Should I Hit or Should I Stay?
![image](https://github.com/user-attachments/assets/964a91b3-2384-4674-83db-ab3c70f344ad)








SQL ANALYSIS:

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




