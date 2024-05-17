# NYC Restaurant Inspection

This project is about building and visualizing Data Warehouse for NYC restaurants' inspections, violations and Yelp star and comments. To see our PowerPoints for this project, please go [here](/Data%20Warehousing%20Term%20Project.pdf).

## Reports

### 1. Business Problem
As a **non-profit governmental organization**, we are deeply concerned about public health and understand the importance of food safety. Therefore, our team has conducted research to explore the correlation between restaurant inspection scores and Yelp ratings. Furthermore, our research explores if the general public considers a restaurant's inspection ratings when deciding where to eat.

The purpose of this study is to **investigate whether government involvement is required to increase knowledge of food and environmental safety in restaurants for the public**. We aim to expose any correlations between variables through detailed data analysis and visualization, and ultimately suggest any improvements.

### 2. Business Impact
Our system is designed for both **the general public, restaurants and government organizations**, and it provides a user-friendly platform for accessing Yelp ratings as well as restaurant inspection scores. The project's expected benefits include offering an easier search platform for the public, raising the awareness of food safety, and motivating restaurants to improve their inspection scores.

### 3. Business Persona
The public will have access to the system to check any restaurants’ inspection score, and our team are the actors of the system. 

### 4. Data (Dictionary)
Our project aims to address business requirements related to restaurant inspections and Yelp ratings in New York City (NYC) by integrating data from two primary data sources: the New York City Restaurant Inspection Results from NYC Open Data and Yelp Data.

**Strengths**
First Data Source (NYC Open Data - New York City Restaurant Inspection Results):
There is a large number of records available for analysis.
Each restaurant entry includes latitude and longitude information.
Detailed violation descriptions are provided.

Second Data Source (Yelp Data):
Each restaurant entry includes latitude and longitude information, which facilitates comparison with the first data source.

**Weaknesses**
First Data Source (NYC Open Data - New York City Restaurant Inspection Results):
Inconsistencies exist between restaurant names in this dataset and those on Yelp.
There is inconsistent mapping of violation codes to violation descriptions.
There is variability in cuisine descriptions for the same restaurant entries.

Second Data Source (Yelp Data):
There is a limitation of 300 records per day per token account, which restricts the analysis scope to a subset of NYC restaurants.

The first dataset comprises 226,000 records documenting restaurants across the five administrative districts of NYC. It includes details such as restaurant names, locations, violation descriptions, inspection scores, and more, encompassing a total of 27 fields.

Our goal is to combine this dataset with Yelp rating information to analyze the relationship between inspection scores and Yelp ratings. By integrating and refining these datasets, we aim to select relevant fields for further analysis.
In this project, we select the Bronx as the primary administrative district for analysis. We conduct data integration and select relevant fields for analysis, resulting in a final dataset size of 11,660 records with 12 fields. This dataset encompasses restaurant information in the Bronx, including names, locations, violation descriptions, inspection scores, grading dates, Yelp star ratings, Yelp review counts, and more.

### 5. Methods
(information architecture picture)

### 6. Interface
The final interface will be a web-based application where the Persona can visualize the results.  People should be able to connect to your  data using Tableau/PowerBI and do their own analysis.

Online Tableau Link: 
https://public.tableau.com/app/profile/shanlinna/viz/NYCRestaurant_17143574410070/Dashboard

(screenshot of tableau)

The dashboard is filtered based on Date, Restaurant Name, and Cuisine. Additionally, filtering can be done by clicking on the points on the map and selecting cuisines, allowing users to explore the Yelp Star and Inspection Score across different dimensions. The Date filter spans from May 25, 2016, to April 13, 2024.  It covers data from 1351 restaurants, 50 cuisines and 11,660 inspection records.

Within this dashboard, we can explore the correlation between two metrics, track performance over the years, identify cuisines with the highest Yelp star ratings or inspection scores. Discover the most common violations, review historical inspection types, or examine specific restaurant violations. Also, gain insights into inspection and Yelp rating trends across various geographical locations.

The main sections included in the dashboard are as follows:
1. Correlation - Average of Yelp Star vs Average of Inspection Score: This section displays the correlation between Yelp Star and inspection score, showing the relationship between the two. The X-axis represents Yelp ratings, and the Y-axis represents Inspection ratings.
2. Avg Inspection Score and Qty (By Year): This chart illustrates the quantity of inspections (bar chart) and inspection scores (line chart) from May 2016 to April 2024.
3. Avg Yelp Star and Avg Inspection Score (By Year): This chart presents the Yelp ratings (bar chart) and inspection scores (line chart) from May 2016 to April 2024.
4. Location: This section displays a map based on Longitude and Latitude. The color represents the average Yelp Star, where darker colors indicate higher Yelp ratings. The size represents the average Inspection Score, with larger circles indicating higher Inspection Scores, implying poorer conditions of the restaurant. This map provides insights into the Inspection and Yelp rating trends across different geographical locations.
5. Avg Inspection Score VS Yelp Star (By Cuisine): This section presents the average Yelp ratings (bar chart) and inspection scores (line chart) for different cuisines, sorted by Yelp ratings from high to low.
6. Avg Inspection Score (By Inspection By Year) and Avg Inspection Score (By Violation By Year): These sections respectively showcase the quantity and scores of different inspection types, as well as the quantity and scores of different violations.
7. Violation: This section displays the main violation trends.

### 7. Conclusion
According to the analysis of our data, the chart below shows the relationship between Yelp stars and inspection scores. As we can see, there doesn't appear to be a clear trend. It means that there may have some restaurants may have awesome ratings on Yelp but also actually have lots of violation records in the NYC open dataset.

(screenshot of relationship)

Besides, when we calculate the P-value, we find that the count of violation actions can't impact Yelp stars. P-value 0.99 is greater than 0.05, which means it is not considered to be statistically significant. Other words, there may have some restaurants are having awesome  ratings on Yelp but also actually have lots of violation records in the NYC open dataset.

The other charts below show the average inspection score group by year, the green line shows the average inspection score and we can observe that the average score has become higher and higher since 2021. Although we're only in May 2024, the current data on violations already indicates that the average inspection scores for restaurants are not looking good. Even at this early stage of the year, it's clear that there's space for improvement.

(screenshot of average score)

According to the analysis above, we understand that Yelp ratings can not reflect a restaurant's safety standards. What is the reason why we want to build the platform for everyone. Public can visit our dashboard and look through the restaurants which are interested in, using the heatmap to check whether the violation code it violated before are serious or not.

Through this project and what we do, we hope to raise awareness: when looking for restaurants, don't just focus on the online ratings. Instead, pay attention to the violations that they did before, hope we can make an effort to improve the NYC restaurant dining environment and food quality.