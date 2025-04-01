
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

A SQL script is included in this project to initialize and populate the tables with sample data. [init_database.sql]https://github.com/pmbemmo/Databricks_DEV/blob/1851950709212c0f2c0fce1c0f5b65e40625583e/Games-Activity-Analysis/requirements/init_database.sql

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
