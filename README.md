# Analysis-of-Yelp-Rating-and-Restaurant-Inspection-Score

## Overview
This project focuses on the correlation between restaurant inspection scores from NYC Open Data and Yelp ratings to investigate if public awareness about food safety can be improved. By analyzing data from multiple sources, the goal is to expose patterns and correlations between Yelp ratings and restaurant violations. Our platform will offer easy access to these insights, helping both the general public and government organizations to make informed decisions regarding food safety.

## Objectives
- Explore the relationship between Yelp ratings and NYC restaurant inspection scores: The key objective is to assess how inspection scores correlate with Yelp ratings and whether the general public considers inspection scores when evaluating restaurants.
- Raise awareness of food safety: Investigate how Yelp ratings and inspection scores may impact public understanding of food safety practices, and how government agencies can improve transparency.
- Provide a comprehensive user-friendly platform: Build a dashboard where the public can easily view and compare Yelp ratings, restaurant inspection results, and violations, enabling more informed decisions regarding dining choices.

## Business Impact
Our system is designed for both **the general public, restaurants and government organizations**, and it provides a user-friendly platform for accessing Yelp ratings as well as restaurant inspection scores. The project's expected benefits include offering an easier search platform for the public, raising the awareness of food safety, and motivating restaurants to improve their inspection scores.

## Data (Dictionary)
Our project aims to address business requirements related to restaurant inspections and Yelp ratings in New York City (NYC) by integrating data from two primary data sources: the New York City Restaurant Inspection Results from NYC Open Data and Yelp Data.

## Methods & Data Tools
### Information Archetecture
![Information Archetecture](/pictures/Information%20Architecture.png)

### Data Storage
- We use ***Azure blob storage*** for the staing storage after extracting data from data sources.
- And use ***PostgrSQL*** for data warehouse.

### Data Processing/Infesting
The data is extracted via both url and API. Unnecessary coulumns are dropped when do data cleaning. Data is reformated to suitable format. For data transformation, we built dimension and fact table, and generate sequantial id as primary keys when necessary. Data mappping is done to link the tables. After that, data is consolidated and loaded into data warehouse for analysing. </br>

For data processing, we use ***Python*** and choose ***VScode***, ***Google Colab***, ***Jupyter Notebook***, and ***Data Grip*** as code editer and computing platform.

### Data Orchestration
- We use ***Python*** to build scripts,
- and use ***DBschema*** to generate the **Star Schema** and sql script for building data warehouse.

![Star Schema](/model/DBschema_pic.png)

## Data Visualization
The final interface will be a web-based application where the Persona can visualize the results.  People should be able to connect to your  data using Tableau/PowerBI and do their own analysis.

[Online Tableau Dashboard](https://public.tableau.com/app/profile/shanlinna/viz/NYCRestaurant_17143574410070/Dashboard)

![Tablean Dashboard](/pictures/Dashboard.jpg)

The dashboard is filtered based on Date, Restaurant Name, and Cuisine. Additionally, filtering can be done by clicking on the points on the map and selecting cuisines, allowing users to explore the Yelp Star and Inspection Score across different dimensions. The Date filter spans from May 25, 2016, to April 13, 2024.  It covers data from 1351 restaurants, 50 cuisines and 11,660 inspection records.

Within this dashboard, we can explore the correlation between two metrics, track performance over the years, identify cuisines with the highest Yelp star ratings or inspection scores. Discover the most common violations, review historical inspection types, or examine specific restaurant violations. Also, gain insights into inspection and Yelp rating trends across various geographical locations.

The main sections included in the dashboard are as follows:

1. **Correlation - Average of Yelp Star vs Average of Inspection Score:**
   This section displays the correlation between Yelp Star and inspection score, showing the relationship between the two. The X-axis represents Yelp ratings, and the Y-axis represents Inspection ratings.
2. **Avg Inspection Score and Qty (By Year):**
   This chart illustrates the quantity of inspections (bar chart) and inspection scores (line chart) from May 2016 to April 2024.
3. **Avg Yelp Star and Avg Inspection Score (By Year):**
   This chart presents the Yelp ratings (bar chart) and inspection scores (line chart) from May 2016 to April 2024.
4. **Location:**
   This section displays a map based on Longitude and Latitude. The color represents the average Yelp Star, where darker colors indicate higher Yelp ratings. The size represents the average Inspection Score, with larger circles indicating higher Inspection Scores, implying poorer conditions of the restaurant. This map provides insights into the Inspection and Yelp rating trends across different geographical locations.
5. **Avg Inspection Score VS Yelp Star (By Cuisine):**
   This section presents the average Yelp ratings (bar chart) and inspection scores (line chart) for different cuisines, sorted by Yelp ratings from high to low.
6. **Avg Inspection Score (By Inspection By Year) and Avg Inspection Score (By Violation By Year):**
   These sections respectively showcase the quantity and scores of different inspection types, as well as the quantity and scores of different violations.
7. **Violation:**
    This section displays the main violation trends.

## Conclusion
According to the analysis of our data, the chart below shows the relationship between Yelp stars and inspection scores. As we can see, there doesn't appear to be a clear trend. It means that there may have some restaurants may have awesome ratings on Yelp but also actually have lots of violation records in the NYC open dataset.

![relationship](/pictures/Relationship%20Between%20Yelp%20Stars%20and%20Inspection%20Score.png)

Besides, when we calculate the P-value, we find that the count of violation actions can't impact Yelp stars. P-value 0.99 is greater than 0.05, which means it is not considered to be statistically significant. Other words, there may have some restaurants are having awesome  ratings on Yelp but also actually have lots of violation records in the NYC open dataset.

The other charts below show the average inspection score group by year, the green line shows the average inspection score and we can observe that the average score has become higher and higher since 2021. Although we're only in May 2024, the current data on violations already indicates that the average inspection scores for restaurants are not looking good. Even at this early stage of the year, it's clear that there's space for improvement.

![Average Score](/pictures/Average%20Inspection%20Score.png)

According to the analysis above, we understand that Yelp ratings can not reflect a restaurant's safety standards. What is the reason why we want to build the platform for everyone. Public can visit our dashboard and look through the restaurants which are interested in, using the heatmap to check whether the violation code it violated before are serious or not.

Through this project and what we do, we hope to raise awareness: when looking for restaurants, don't just focus on the online ratings. Instead, pay attention to the violations that they did before, hope we can make an effort to improve the NYC restaurant dining environment and food quality.

## Future Work
To enhance the accuracy and effectiveness of this platform, we could:
1. Integrate Real-Time Data: Continuously update Yelp ratings and inspection scores to reflect the most current information, ensuring the platform provides up-to-date insights for users.
2. Improve Data Quality: Address inconsistencies between restaurant names and violation codes to enhance data matching and the reliability of results.
3. Broader Data Coverage: Expand the dataset to include more restaurants from different areas of NYC and additional metrics such as health department comments or other public reviews to improve analysis.
4. Enhanced Visualization: Introduce more interactive features like filtering by specific violation types, restaurant grades, and more detailed historical data for better user insights.
5. User Feedback Mechanism: Implement a feedback system where users can report discrepancies or share their experiences, contributing to a more comprehensive and accurate database.

