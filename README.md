## DVD-Rental-SQL
# In this project I worked on a DVD rental business dataset to unfold Key Performance Indicators.
# Following is the Data Warehouse I built using 8 different tables.
![dwh main](https://github.com/user-attachments/assets/615f42bc-54ae-4a5f-83c6-24bf1da219c2)

Here is the SQL query:<br>
https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Data%20ware%20house.sql

With this data warehouse, we will focus on analyzing film categories across different domains. Key insights will include identifying top-performing categories in terms of revenue and turnover rate, allowing for targeted marketing and inventory decisions. We will analyze seasonality, understanding how sales of categories like Animation, Sci-Fi, and Drama fluctuate during different seasons (e.g., Summer vs. Winter). Additionally, we will explore rental durations to identify which categories tend to have longer rentals, providing insights into customer preferences. Comparing category performance across stores will help determine the best-performing locations for specific categories, guiding strategic decisions for each store.

# Now we will answer some critical insights in the shape of KPIs

## 1)	QUESTION: What are the top film categories by sales for each store?
   
<img width="270" alt="image" src="https://github.com/user-attachments/assets/f4ef0a12-ee65-44ff-9198-33ceb193a7b5" />

Here is the SQL query:<br>
https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Top%205%20cat%20per%20store.sql




# INTERPRETATION: 
The table provides insights into category-wise sales performance across two stores. A clear trend emerges where Sports, Animation, and Drama categories generate high revenue in both stores, suggesting strong customer demand for these genres. However, Store 2 consistently records higher sales across top categories, indicating a larger customer base, higher rental frequency, or a more effective marketing strategy compared to Store 1.
Additionally, Store 2 includes Documentary as a significant revenue-generating category, whereas Store 1 does not, suggesting a differentiated inventory strategy or customer preference variations between the two locations. This insight could guide inventory adjustments for Store 1 to explore demand for documentaries.
From a business perspective, these findings highlight potential actions such as boosting inventory for high-performing categories, conducting customer preference analysis to understand Store 2’s advantage, and testing the Documentary category in Store 1 to expand its offering. Understanding these patterns can help optimize revenue and improve store-specific strategies.


## 2)	 QUESTION: What are the top 5 actors within the top 5 categories in terms of sales for each store?
   <img width="241" alt="image" src="https://github.com/user-attachments/assets/e0e31d0a-c632-4be4-8c6c-d702df9cbc3e" />
   <img width="235" alt="image" src="https://github.com/user-attachments/assets/1d51982f-a44e-44c2-a290-ec7e0853920e" />
   <img width="254" alt="image" src="https://github.com/user-attachments/assets/46a908be-5e47-465a-bef6-13587a65cea3" />
   
  Here is the SQL query:<br>
   https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Actors%20within%20cat%20per%20store.sql

# INTERPRETATION:
The actor sales data reveals key trends in customer preferences across different film categories in both stores. Drama and Sports emerge as dominant genres, with actors like Cameron Zellweger (417 sales in Drama) and Ben Willis (479 sales in Sports) leading in Store 1, while Store 2 also sees strong sales in Sports with Ben Willis (421 sales) and Morgan Williams (339 sales). Store 1 shows high demand for Animation and New releases, where Jayne Nolte (377 sales in Animation) and Ed Mansfield (327 sales in New) perform well, whereas Store 2 has a notable presence of Sci-Fi and Documentary films, with Gina Degeneres (298 sales in Sci-Fi) and Julia Barrymore (326 sales in Documentary) among the top performers. These differences suggest that customer preferences vary between stores, with Store 1 favoring new releases and animated content, while Store 2 attracts more Sci-Fi and Documentary viewers. To optimize sales, management could prioritize stocking films featuring high-performing actors, adjust inventory based on store-specific preferences, and test cross-marketing strategies, such as introducing successful Documentary films from Store 2 into Store 1 to explore untapped demand.

## 3)	Question: What is film rental turnover rate by category?
   <img width="245" alt="image" src="https://github.com/user-attachments/assets/0285a96b-9f33-4a42-96da-aeb30d8656eb" />

  Here is the SQL query:<br>
   https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Rental%20count%20for%20films.sql

# INTERPRETATION:
Turnover rate is a key measure of how efficiently movies are rented compared to how many films are available in each category for renting. A high turnover rate means that movies are rented frequently and has strong demand. A low turnover rate suggests that films are not rented as often, which could mean an oversupply or lack of customer interest.
The Film Rental Turnover Rate by Category highlights that certain genres have higher demand than others. Sci-Fi, Action, and Animation show the highest turnover rates, suggesting strong rental frequency relative to the number of available films. To maximize the revenue and optimize inventory, the company should increase stock for high-turnover categories to make sure enough movies are available. For low-turnover categories like: Horror, Travel, and Foreign, companies should consider special promotions and seasonal discounts.

## 4)	Question: What is the average revenue per categories?
   <img width="188" alt="image" src="https://github.com/user-attachments/assets/805c1bdb-538a-49a4-93b7-f92ea3a2b416" />

   Here is the SQL query:<br>
   https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Avg%20rev%20per%20cat.sql
   
# INTERPRETATION:
The table presents the average revenue generated per film across different categories, offering valuable insights into which genres are the most profitable. Sports (443.91), Drama (431.44), and Sci-Fi (421.82) lead as the top revenue-generating categories per film, indicating strong demand and high rental activity for films in these genres.
Animation (421.03) and New releases (402.49) also show strong profitability, suggesting that customers are willing to spend more on newly released and animated films. On the other hand, categories like Games (344.98) and Family (315.09) generate the lowest average revenue per film, indicating either lower demand or lower pricing strategies for these genres.
This data can guide inventory and pricing strategies, where management can increase stock and marketing efforts for high-performing categories, while also exploring ways to boost engagement with lower-revenue categories through promotions, bundling, or pricing adjustments.

## 5)	Question: Rental Count by movie title
   <img width="225" alt="image" src="https://github.com/user-attachments/assets/b9f7bdf7-8e4e-48e0-a9b8-09333cfbefb7" />

   Here is the SQL query:<br>
   https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Rental%20count%20for%20films.sql

# INTERPRETATION:
The table showcases the most rented films in Store 1, highlighting customer preferences and demand for specific movies. "MASK PEACH" (187 rentals) and "LONELY ELEPHANT" (180 rentals) are the top-performing films, indicating strong customer interest in these titles. Other highly rented films, such as "RINGS HEARTBREAKERS" (165) and "JUGGLER HARDLY" (162), also demonstrate significant popularity.Several films, including "MOVIE SHAKESPEARE," "FANTASY TROOPERS," and "WEST LION" (each with 144 rentals), show consistent rental activity, suggesting a preference for a diverse range of genres. The presence of multiple films with rentals above 140 indicates a stable demand across different movie types, which can help in optimizing inventory management.
From a business perspective, these insights suggest that Store 1 should prioritize stocking and promoting high-demand films to maintain revenue growth. Additionally, management could analyze genre trends within these films to curate similar movie recommendations or bundle promotions to maximize rental activity.

## 6)	Impact of Movie Length on Rental Demand

   <img width="238" alt="image" src="https://github.com/user-attachments/assets/f7364c94-cbdc-4f65-940e-c848fcf98985" />

   Here is the SQL query:<br>
   https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/Length%20of%20film%20count.sql

  # INTERPRETATION:
The data categorizes movies based on their length and shows the total number of rentals for each category. Long movies (over 120 minutes) have the highest rental count (40,073), followed closely by medium-length movies (60-120 minutes) with 39,282 rentals. This suggests that customers prefer longer movies, possibly due to their immersive storytelling or perceived value.
In contrast, short movies (under 60 minutes) have significantly fewer rentals (8,625), indicating lower demand. This may suggest that customers see short films as less appealing for rentals, possibly because they offer less entertainment value compared to feature-length films.
From a business perspective, these insights suggest that stores should prioritize stocking and promoting longer films, as they generate the highest rental activity. Additionally, short films may benefit from promotional bundling or pricing adjustments to increase customer interest and rental frequency.

## 7)	Top 2 categories in each season

<img width="346" alt="image" src="https://github.com/user-attachments/assets/6777cad1-aab5-4c29-aca5-8b1750c34c70" />

Here is the SQL query:<br>
https://github.com/ZohaibJamil24/DVD-Rental-SQL-Tableau/blob/main/cat%20seasonal%20sales%20per%20store.sql

# INTERPRETATION:

The results show total sales by category and season across different years. In Winter 2006, Animation leads with 395.59 in sales, followed by Action with 361.71. In Spring 2005, Drama performs well at 2071.24, while Action also contributes significantly with 2031.01. In Summer 2005, Sports leads with a substantial 29915.66, followed by Animation at 24899.41. These insights highlight seasonal trends, with Sports performing strongly in summer and Animation and Action being consistent performers in both winter and spring.


## Following is the Tableau Dashboard of the 5 KPIs;

1) Top 5 Categories by Sale
2) Top 5 Categories by Turnover Rate
3) Top 5 Categories by Avg. Rental Distribution
4) Top 5 Categories Revenue Split by Stores
5) MoM Sales of Top 5 Categories

<img width="1199" alt="Screenshot 2025-07-03 at 1 17 54 PM" src="https://github.com/user-attachments/assets/6f768e05-9c83-4355-8d3a-0d8f05518bc5" />








 








   







