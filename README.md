
#  Advanced Game Player Activity Analysis 🎮

## **Game Activity Data Analyst Project**  

## 🔍 Project Overview
This project aims to perform an advanced and detailed analysis of player behavior using a dataset containing game activity data.

The data comes from a relational model built in a previous project, available on my GitHub. This model includes a fact table and several dimension tables.

## 🗂 Data Structure
The following tables are used in this analysis:
- **Fact_player_activity** (stores player interactions)
- **Dim_publisher** (game publisher details)
- **Dim_game** (game characteristics)
- **Dim_activity_type** (types of activities in the game)
- **Dim_play_mode** (available game modes)

  ![data-model](https://github.com/pmbemmo/Advanced-Analysis-Phyton/blob/b5fbfb5c4004523630a1cdc298acb43f7276f2fe/Games-Activity-Analysis/requirements/data-model.png)

A SQL script is included in this project to initialize and populate the tables with sample data. ![init_database.sql](https://github.com/pmbemmo/Advanced-Analysis-Phyton/blob/4353ccc25a6b9b4cebc869075d6473e5c8cde225/Games-Activity-Analysis/requirements/init_database.sql)

---

## 1️⃣ Advanced Player Behavior Analysis 🎯
**📌 Goal:** Identify gaming trends, player preferences, and the most profitable interactions.

### 🔹 Analytical Approaches
- Player segmentation using clustering (K-Means) based on playtime, quests completed, and purchases.
- RFM analysis (Recency, Frequency, Monetary) to classify players based on engagement and spending.
- Churn prediction (player dropout rate) using machine learning models (Random Forest, XGBoost).

### 📊 Key KPIs
✅ **Player retention rate after 1, 7, and 30 days**  
✅ **Player retention trends over time**  
✅ **Average sessions per player and per game**  

![Distribution of Session Duration](https://github.com/pmbemmo/Advanced-Analysis-Phyton/blob/b5fbfb5c4004523630a1cdc298acb43f7276f2fe/Games-Activity-Analysis/requirements/Distribution%20of%20Session%20Duration.png)

---

## 2️⃣ Revenue and In-Game Purchase Optimization 💰
**📌 Goal:** Understand how players spend and maximize game monetization.

### 🔹 Analytical Approaches
- Correlation between activity and spending (e.g., do players who unlock more achievements spend more?).
- Analysis of in-game purchases (e.g., which types of players buy premium content?).
- Offer segmentation based on player spending behavior (low spenders vs. whales).

### 📊 Key KPIs
✅ **Spending distribution by player level**  
✅ **Impact of quests and events on revenue**  
✅ **Revenue forecast

![Feature Correlation Heatmap](https://github.com/pmbemmo/Advanced-Analysis-Phyton/blob/4353ccc25a6b9b4cebc869075d6473e5c8cde225/Games-Activity-Analysis/requirements/Feature%20Correlation%20Heatmap.png)

![Distribution of Excessive Playtime Sessions](https://github.com/pmbemmo/Advanced-Analysis-Phyton/blob/4353ccc25a6b9b4cebc869075d6473e5c8cde225/Games-Activity-Analysis/requirements/Distribution%20of%20Excessive%20Playtime%20Sessions.png)

