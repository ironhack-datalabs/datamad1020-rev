![portada](https://github.com/ironhack-datalabs/datamad1020-rev/blob/master/projects/W3-pipelines-project/portadaw3.jpg)

# Project: Data Pipeline

## Overview

The goal of this project is for you to practice what you have learned so far on this program. For this project, you will start with a data set of your choice. You will need to import it, use your newly-acquired skills to build a data pipeline that processes the data and produces a result. You should demonstrate your proficiency with the tools we covered (functions, classes, list comprehensions, string operations, pandas, and error handling, etc.) in your pipeline.

**You will be working individually for this project**, but we'll be guiding you along the process and helping you as you go. Show us what you've got!

### What is a pipeline?
A data pipeline is a series of data processes in which the output of each one is the input of the next, forming a chain. 

---

## Technical Requirements

The technical requirements for this project are as follows:

* You must construct a data pipeline with the majority of your code wrapped in functions.
* The following data pipeline stages should be covered: acquisition, wrangling, analysis, and reporting.
* You must demonstrate all the topics we covered in the chapter (functions, list comprehensions, string operations, and error handling) in your processing of the data.
* There should be some data set that gets imported and some result that gets exported.
* Your code should be saved in a Python executable file (.py), your data should be saved in a folder named data, and your results should be saved in a folder named output.
* You should also include a README.md file that describes the steps you took and your thought process as you built your data pipeline.

## TO DO's

- A) Find a dataset to start you work! A great place to start looking would be [Awesome Public Data Sets](https://github.com/awesomedata/awesome-public-datasets) and [Kaggle Data Sets](https://www.kaggle.com/datasets).
  
- B) Clean and wrangle your dataset, prepare the data for your needs and intentions.

- C) Enrich the dataset with external data, you have to choose at least one of the following:
  - Get data from an API.
    - _Note:_ The API you use may require authentication via token or oAuth.
  - Do web scraping with python `beautifulsoup` module.
  
- D) The data you bring in to enrich the dataset must be related to it and complement it! Figure out how it fits together and how you prepare the data of both sources for your report.
  
- E) Create some reports containing valuable data from the dataset + enrichment. Some of the things you may do are:
  - Simply sumarize the data and do some basic statistics \(`mean`, `max`, `min`, `std`, etc.).
  - Do domain based statistics or data aggregations using `groupby()` .
  - **LOTS AND LOTS** of plots, of all types and colors.
  - Go nuts with the investigation. 

- F) The finished report must be a **very pretty** jupyter notebook, with text, clean code, meaningful outputs, plots and charts. Try telling a story with your data, that is, conduct us (the readers) through your findings and lead us into your conclusions.
  - _Note:_ The report jupyter **must** be separate from the code for cleaning, acquiring, processing data, etc. These may be in other jupyters or in `.py` modules. _Be not afraid to modulate 🎶_



## Super Ultra Mega Blaster Tips

* **Examine the data**.

* **Break the project down into different steps** - A hundred simple tasks are better than a single complicated one

* **Use the tools in your tool kit** - your knowledge of intermediate Python as well as some of the things you've learned in the bootcamp. This is a great way to start tying everything you've learned together!

* **Work through the lessons in class** & ask questions when you need to! 

* Think about adding relevant code to your project each day, instead of, you know... _procrastinating_.

* **Commit early, commit often**, don’t be afraid of doing something incorrectly because you can always roll back to a previous version. Name your commits well.

* **Consult documentation and resources provided** to better understand the tools you are using and how to accomplish what you want. GIYF.

* **Have fun! Never give up! Be proud of your work!**

## Useful Resources

* [Python Functional Programming How To Documentation](https://docs.python.org/3.7/howto/functional.html)
* [Python List Comprehensions Documentation](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions)
* [Python Errors and Exceptions Documentation](https://docs.python.org/3/tutorial/errors.html)
* [StackOverflow String Operation Questions](https://stackoverflow.com/questions/tagged/string+python)

# Data set description 

pgaTourData.csv contains 1674 rows and 18 columns. Each row indicates a golfer's performance for that year.

- Player Name: Name of the golfer
- Rounds: The number of games that a player played
- Fairway Percentage: The percentage of time a tee shot lands on the fairway
- Year: The year in which the statistic was collected
- Avg Distance: The average distance of the tee-shot
- gir: (Green in Regulation) is met if any part of the ball is touching the putting surface while the number of strokes taken is at least two fewer than par
- Average Putts: The average number of strokes taken on the green
- Average Scrambling: Scrambling is when a player misses the green in regulation, but still makes par or better on a hole
- Average Score: Average Score is the average of all the scores a player has played in that year
- Points: The number of FedExCup points a player earned in that year. These points can be earned by competing in tournaments.
- Wins: The number of competition a player has won in that year
- Top 10: The number of competitions where a player has placed in the Top 10
- Average SG Putts: Strokes gained: putting measures how many strokes a   player gains (or loses) on the greens.
- Average SG Total: The Off-the-tee + approach-the-green + around-the-green + putting statistics combined
- SG:OTT: Strokes gained: off-the-tee measures player performance off the tee on all par-4s and par-5s.
- SG:APR: Strokes gained: approach-the-green measures player performance on approach shots. Approach shots include all shots that are not from the tee on par-4 and par-5 holes and are not included in strokes gained: around-the-green and strokes gained: putting. Approach shots include tee shots on par-3s.
- SG:ARG: Strokes gained: around-the-green measures player performance on any shot within 30 yards of the edge of the green. This statistic does not include any shots taken on the putting green.
- Money: The amount of prize money a player has earned from tournaments

# Purpose of project

In golf, people talk about the efficiency of golf club sets, and geeks always want to buy the latest golf set from one bbrand because they are convinced that they will be able to improve their game by doing so. So, I want to come up with a good aproximation of what the real perfect golf set might look like. I will make an análisis of driving range accuracy along with all SG (Strokes gained) of all pga pro´s and I will take a look at what golf clubs they are using in order to come up for the best brand of club for each type of shot in the golf course. I will only look at the top 50 players in each SG: Drive, Long Irons, Short Irons, Pitch and Wedge and Putter.