# Documentation
## The goal of this exercise was to create a Tableau Visualization to answer the question "Should I Hit or Should I Stay?"

### Original Data Source: 
* [Kaggle BlackJack Viz + Machine Learning](https://www.kaggle.com/code/anthodata/blackjack-viz-machine-learning)
* Includes 900k hands of BlackJack Results includes
  - PlayNo, card1, card2, card3, card4, card5, sumof cards, dealcard1, dealcard2, dealcard3, dealcard4, dealcard5, sumofdeal, blkjck, winloss, plybustbeat, dlbustbeat, plwinamt, dlwinamt & ply2cardsum.
  - Link to [blkjckhands_reduced.csv](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/blkjckhands_reduced.csv)
* Limitation:
- Due to size of 61.77MB  the team opted to use a third of the size to 300K records to allow upload to git hub at 20.6 MB.
- This reduced fille of 300K hands was saved as blkjckhands_reduced.csv

### Method: Reference Google Collab Ipython Notebook : [blackjack_dataset_tableau_probability.ipynb](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/blackjack_dataset_tableau_probability.ipynb) for full code and text narrative.
* Import dependencies and file path to blkjckhands_reduced.csv
* import pandas as pd
* import tensorflow as tf
* from matplotlib import pyplot as plt
* import seaborn as sns

### Card Strategy Logic
* In order to answer the question Should I Hit or Should I Stay a logic statement had to be created.
  -  The data set includes the sum of the player cards across 5 players for 300k hands.
  -  Each player has an option to get up to 5 cards and each sum of the card is represented by card1-card5. If the card was not requested it will show 0.
  -  A card strategy logic was calculated based on if the player selected 2, 3, 4, or 5 card in the form of an else statement.
  -  Here is an example of a ![2 card strategy code](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/2card_strategy_code.png) ![2 card strategy chart](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/2card_stragegy_chart.png)
  -  Once the logic was finalized any unnecessary columns was dropped and a copy of the dataframe was created to export and saved to a new csv file that was used for the tableau visualization.
  -  New CSV file created from ipynb [blackjack_dataset_tableau_probability.csv](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/blackjack_dataset_tableau_probability.csv)
  -  Link to Tableau Public Dashboard for [Should I Hit or Should I Stay?](https://public.tableau.com/app/profile/savi.rahiman4181/viz/Project4_Team2_Blackjack_Probability/ShouldIHitorShouldIStay#1)
  -  Link to packaged Tableau Workbook [Should I Hit or Should I Stay?](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/Project4_Team2_Blackjack_Probability.twbx)
  -  [blackjack_dataset_tableau_probability.csv](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/blackjack_dataset_tableau_probability.csv)
  -  Image of Tableau Dashboard ![Should I Hit or Should I Stay?](https://github.com/kaylamblais96/Project_4_Team_2/blob/savi/Tableau_DB.png)
  -  
