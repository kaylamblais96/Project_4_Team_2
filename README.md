How common is each first hand?

We used pandas and matplotlib in Jupyter Notebook to perform statistical analysis on the distribution of different first hands. We found IQR and the mean, and observed an outlier in the data.
![BoxandWhiskerPlotofFirstHandCards](https://github.com/user-attachments/assets/05685c3e-1278-4a81-bb73-964a8cdc6276)

After looking at the distribution of the various first hands, we wanted to know what first hand is most likely to win with.
With a 21 being the obvious choice, we noticed that a 20 is the next most likely to win with followed by a 19. It was interesting that after 19 the next combination to win on the first hand with is an 11. It was interesting to see how a first hand of 16 is one of the worst first hands to be dealt.

![WinPercentagebySumofFirstTwoCards](https://github.com/user-attachments/assets/8304e609-2333-45e3-9901-db4b08d2ff31)

We looked further into the data, and looked at the distribution number of hands played.
We found that the likelyhood of playing all the way through 4 hands was very small, and it is far more common to play through 2 hands than it is to play 3 or 4.
![percentage_of_hands](https://github.com/user-attachments/assets/ef0e3ff1-bd88-4318-a333-bdd709834409)

We also looked into the likelyhood of winning in terms of the number of hands played.
We found that the first hand is the most common winning hand, and the likelyhood of winning decreases with the number of hands played 

![WinPercentagebyNumberofHandsPlayed](https://github.com/user-attachments/assets/15832c47-a787-4e84-a0bd-917983957b85)

We wanted to how the different hands were correlated with wins.
It was found that the third hand had the most significant correlation, although negative, with the likelihood of winning. This could help explain the large drop off in the number of wins after the second hand.

![CorrelationBetweenHandsandWins](https://github.com/user-attachments/assets/b556005a-4953-4bd7-99e3-11921008412b)

We looked further into the data to see if the individual cards between the player and dealer were correlated in any way.
An interesting finding was that player cards and dealer cards were negatively correlated.

![player_vs_dealer_correl](https://github.com/user-attachments/assets/1cccd4d6-1055-456a-8025-88dcadd7ef4b)
