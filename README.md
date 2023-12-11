## Project Group 40
We are distributed equally, including all the coding, addition, and deletion.

## UNIs: [dl3661, yl5432]
People: Dongyang Li, Yueying Lu

## Description of our Final project
## Functions:

### 1. download_nyc_csv_data(data_url:str, access_token:str, start_dt:str, end_dt:str, storage_year=None:int, filename='NYC_311_Service_Requests', overwrite=False) -> None

Download NYC 311 data from NYC Open Data.

### 2.

# project4501




## Functions:

### 2. 'load_and_clean_zipcodes(zipcode_datafile:str) -> GeoDataFrame'

Load zipcode data from a csv file and clean it, and then return a GeoDataFrame.

### 3. 'clean_311_data_2015_2017() -> DataFrame'

Clean NYC 311 data with data between 2015 and 2017, and return a DataFrame.

### 4. 'clean_311_data_2018_2020() -> DataFrame'

Clean NYC 311 data with data between 2018 and 2020, and then return a DataFrame.

### 5. 'clean_311_data_2021_2023() -> DataFrame'

Clean NYC 311 data with data between 2021 and 2023, and then return a DataFrame.

### 6. 'download_nyc_tree_data() -> None'

Download 2015 NYC Tree data from NYC Open Data.

### 7. 'clean_tree_data() -> DataFrame'

Clean 2015 NYC Tree data and then return a DataFrame.

### 8. 'load_and_clean_zillow_data() -> DataFrame'

Load zillow data from a csv file and clean it, and then return a DataFrame.

### 9. 'write_query_to_file(query: str, outfile: str) -> None'

Define a function to write the query into a file.

### 10. 'get_data_for_visual(query: str) -> pd.DataFrame'

Execute an SQL query and return the result as a pandas DataFrame.

### 11. 'plot_visual_1(query: str) -> None'

Plot a time series for different complaint types based on an SQL query.

### 12. 'plot_visual_1_ani(query: str) -> HTML'

Plot an animation for top 3 complaint types in NYC.

### 13. 'plot_visual_2(query: str) -> None'

Plot a bar chart for the top 10 complaint types.

### 14. 'plot_visual_3(query1: str, query2: str, query3: str) -> None'

Plot scatter plots comparing rent with number of trees and number of complaints.

### 15. 'plot_visual_4(query1: str, query2: str) -> None'

Plot a boxplot comparing the number of 311 complaints with different average rent bins.

### 16. 'plot_visual_5(query: str) -> None'

Plot a map with points representing reported 311 incidents and a center point.

### 17. 'plot_visual_6(query1: str, query2: str) -> None'

Plot a map showing existing trees and new tree requests.


## Query: 

Query 1: Complaints per Zip Code
Filename: complaints_num_per_zipcode.sql
Objective: Identify the number of complaints per zip code between October 1st, 2022 and September 30th, 2023. This helps in determining quieter, less complaint-prone areas for potential relocation.

Query 2: Top 10 Zip Codes by Trees
Filename: top_10_zipcodes_by_trees.sql
Objective: Find the top 10 zip codes with the highest number of trees. This is crucial for those who prioritize greenery and natural environments in their living areas.

Query 3: Average Rent in Tree-Rich Zip Codes
Filename: avg_rent_top_10_zipcodes_by_trees.sql
Objective: Calculate the average rent for the zip codes with the most trees, as of August 31st, 2023. This information is valuable for budget planning in areas with abundant greenery.

Query 4: Rent, Trees, and Complaints Correlation
Filename: rent_trees_complaints_correlation.sql
Objective: Examine the correlation between rent, the number of trees, and complaint counts in various zip codes. This comprehensive analysis offers a holistic view of living conditions across different neighborhoods.

Query 5: Rewriting Top 10 Zip Codes by Trees
Filename: rewrite_top_10_zipcodes_by_trees.sql
Objective: Reassess the top 10 zip codes with the most trees using a different approach, considering geographical data for a more accurate representation.

Query 6: Trees in Immediate Area
Filename: immediate_area.sql
Objective: Identify the species, health, and status of trees within a specified radius from a given point. This query is particularly useful for environmental studies and urban forestry management.



## Visualizations:

Visualization 1 objective: top 3 complaint types for October 1st, 2022, to September 30th, 2023
Details: Create a visualization displaying daily complaints for the top 3 complaint types in the required timeframe.

Visualization 2 objectives: most common complaints in the immediate area
Details: Explore the top 10 complaints in zip code 10027 in the required time range.

Visualization 3 objectives: find any correlation between rent, trees, and complaints
Details: Need to create two different subplots with the same x-axis. The first subplot displays rent to tree count by zip code, and the other shows rent to the number of complaints by zip code.

Visualization 4 objectives:  Analyze the relationship between rent ranges and the number of 311 complaints in the required time range
Details: Use the boxplot displaying the number of 311 complaints for different rent ranges in September 2023 ($0.0-1000.0 etc.).

Visualization 5 objectives:  Map the coordinates of 311 incidents around a specific location from the required time range within a 1-kilometer radius.
Details: Make a geospatial plot stating the coordinates of reported 311 incidents near the required location.

Visualization 6 objectives:  Map tree coordinates and "New Tree Request" 311 incidents from October 1st, 2018, to September 30th, 2023.
Details: Make a geospatial plot showing the coordinates of trees in NYC alongside the coordinates of "New Tree Request" 311 complaints.





