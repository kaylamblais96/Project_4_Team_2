# Project 4: Team 2
## Kayla Blais, Mae Bouazzaoui, Daniel Pulliam, Savi Rahiman, Madeline Rondino

### Original Data Source:
- Kaggle BlackJack Viz + Machine Learning
- Includes 900k hands of BlackJack Results includes PlayNo, card1, card2, card3, card4, card5, sumof cards, dealcard1, dealcard2, dealcard3, dealcard4, dealcard5, sumofdeal, blkjck, winloss, plybustbeat, dlbustbeat, plwinamt, dlwinamt & ply2cardsum.
- Link to [blkjckhands_reduced.csv]

### Limitation:
Due to size of 61.77MB the team opted to use a third of the size to 300K records to allow upload to git hub at 20.6 MB.
This reduced fille of 300K hands was saved as blkjckhands_reduced.csv



## SQL ANALYSIS:

To understand the statistical outcomes from the dataset, we used SQL to create custom queries. We first needed to create the table in SQL, and add additional fields needed to understand the data better.

![image](https://github.com/user-attachments/assets/bb9b1de0-7802-4cbc-b6af-ea4e3edf0f43)


  ### SQL_Create Table

The image above shows the creation of our “blkjack’ table, which we then imported the file from Kaggle. Many of our statistical questions had to do with the first two cards that were delt to the player, so it was necessary to create a column that summed these two fields. The image below shows the creation of that column, which we called the “Starting_Hand”. We updated the table with this new field.
![image](https://github.com/user-attachments/assets/1a25ff66-572e-4786-84d3-410de7f3cfca)


  ### SQL_Create Starting Hand

Utilizing our “Starting_Hand” field, we were able to find out various statistics about the likelihood of winning based on your starting hand, and other outcomes. This is the first of a series of queries that can be used to look at specific starting hand values. In the final query in the image below, we were curious about the starting hand of “16”, and its likelihood of winning. The second image shows those statistical outcomes from that starting hand.

![image](https://github.com/user-attachments/assets/7ff5f43b-8b8a-4e18-bad7-0a773ba662b2)

![image](https://github.com/user-attachments/assets/5ac44403-29e4-4175-90cf-6c7f2d4f88fb)



  ### SQL_Starting Hand Stats

  #### SQL_Likelyhood_Wining_16

We are ultimately curious about whether we should hit on our starting hand, so we built some queries to test the outcomes given our starting hand and our next move (card3). The image below shows three queries that allow the user to input their starting hand and their next move, and output the statistics of their possible outcomes (like busting or winning). Those outcomes can be seen in the second image.
![image](https://github.com/user-attachments/assets/e4b43c5b-b1cc-44cd-a41f-ba1f9fd722a6)

![image](https://github.com/user-attachments/assets/73e03ba3-1f76-4234-bc67-b1d95e8540df)



  ### SQL_Hit or Stay

  #### SQL_15_Hit

This information can be incredibly useful to determine what the next best moves are based on statistical outcomes of previous hands.

## PYTHON ANALYSIS:


__How common is each first hand?__

We used pandas and matplotlib in Jupyter Notebook to perform statistical analysis on the distribution of different first hands. We found IQR and the mean, and observed an outlier in the data.
![image](https://github.com/user-attachments/assets/1b13d278-85cd-4d73-bea8-fe7e4042865a)

__BoxandWhiskerPlotofFirstHandCards__

After looking at the distribution of the various first hands, we wanted to know what first hand is most likely to win with. With a 21 being the obvious choice, we noticed that a 20 is the next most likely to win with followed by a 19. It was interesting that after 19 the next combination to win on the first hand with is an 11. It was interesting to see how a first hand of 16 is one of the worst first hands to be dealt.

![image](https://github.com/user-attachments/assets/4afb21d8-5e40-445f-a965-40a9c11b054f)


__WinPercentagebySumofFirstTwoCards__

We looked further into the data, and looked at the distribution number of hands played. We found that the likelyhood of playing all the way through 4 hands was very small, and it is far more common to play through 2 hands than it is to play 3 or 4.
![image](https://github.com/user-attachments/assets/e747b372-750e-4b4e-9287-c92a636074d2)

__percentage_of_hands__

We also looked into the likelyhood of winning in terms of the number of hands played. We found that the first hand is the most common winning hand, and the likelyhood of winning decreases with the number of hands played

![image](https://github.com/user-attachments/assets/197d7440-ecba-48a8-ba51-dd417d22a69a)


__WinPercentagebyNumberofHandsPlayed__

We wanted to how the different hands were correlated with wins. It was found that the third hand had the most significant correlation, although negative, with the likelihood of winning. This could help explain the large drop off in the number of wins after the second hand.
![image](https://github.com/user-attachments/assets/a7e1be3a-4fea-4e01-9b34-7663e4721edc)


__CorrelationBetweenHandsandWins__

We looked further into the data to see if the individual cards between the player and dealer were correlated in any way. An interesting finding was that player cards and dealer cards were negatively correlated.

player_vs_dealer_correl

![image](https://github.com/user-attachments/assets/797ff65c-24d7-476a-8c2c-02e57fbed0ef)


## Tableau

The goal of this exercise was to create a Tableau Visualization to answer the question "Should I Hit or Should I Stay?"

### Method: Reference Google Collab Ipython Notebook : blackjack_dataset_tableau_probability.ipynb for full code and text narrative.
Import dependencies and file path to blkjckhands_reduced.csv
import pandas as pd
import tensorflow as tf
from matplotlib import pyplot as plt
import seaborn as sns

### Card Strategy Logic
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



## MACHINE LEARNING:

__The goal of the machine learning model was to accurately predict a player’s outcome, be it “Win”, “Loss” or “Push (Draw)” in a game of Blackjack. There were three attempts made in the creation of the machine learning model. For each attempt, the predicted variable (y variable) stayed consistent. This variable was the “winloss” column, in the dataset.__

### Attempt 1: 
The first attempt utilized the logistic regression model, with the x variables (features) being “card1” and “card2”. The original intent of the model was to accurately predict the player’s outcome by looking at their starting hand. The “card1” and “card2” columns represent the players starting hand. This first attempt yielded an accuracy score of 55%. When looking at the confusion matrix, something important to note, is the complete lack of “predicted losses”. Meaning this model was unable to predict any player loss. Another attempt needed to be made. 

### Attempt 2: 
The second attempt also utilized the logistic regression model, however, this attempt added a few features to the model in an attempt to refine it, and increase the accuracy score. Not only did the model contain the features “card1” and card2” (the player’s starting hand), but also “dealcard1”, “dealcard2”, and “ply2cardsum”. “Dealcard1” and “dealcard2” represent the dealer’s starting hand. “Ply2cardsum” is another column used to represent the player’s starting hand. After adding these three features, the model’s accuracy score increased to 58%. However, looking again at the confusion matrix, this model was also not able to predict loss whatsoever. Another attempt need to be made. 

### Attempt 3: 
The final attempt, no longer utilized the logistic regression model, instead switched to random forest, to coincide with the random nature of data collected from playing cards. This model kept the features to same as attempt 2, in an attempt to build upon the accuracy of previous models. This attempt performed with 70% accuracy, and also was able to predict loss, unlike the attempts before it. Although we as a team were aiming for an accuracy score of at least 75%, after doing independent research, we discovered that with most games a chance, an accuracy score between 50%-60% was most common, therefore we were pleased with this model and its accuracy.
















