--SQL INIT LAKEHOUSE
-- Deleting schemas (if existing)
--DROP SCHEMA IF EXISTS dev_catalog.gold CASCADE;
-- Creating schemas (if not existing)
CREATE SCHEMA IF NOT EXISTS dev_catalog.gold;

-- Creating gold tables
CREATE TABLE IF NOT EXISTS `dev_catalog`.`gold`.`dim_publisher` (
  SK_ID BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  `Publisher` STRING,
  `Source_file` STRING,
  `Insert_date` TIMESTAMP,
  `Update_date` TIMESTAMP
) USING DELTA;

--  drop TABLE `dev_catalog`.`gold`.`dim_publisher`
CREATE TABLE IF NOT EXISTS `dev_catalog`.`gold`.`dim_game` (
  SK_ID BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  `GameID` STRING,
  `SK_ID_Publisher` BIGINT foreign key references `dev_catalog`.`gold`.`dim_publisher` (SK_ID),
  `Genre` STRING,
  `Game_Length` INT,
  `Rating` STRING,
  `Source_file` STRING,
  `Insert_date` TIMESTAMP,
  `Update_date` TIMESTAMP
) USING DELTA;

--  drop TABLE `dev_catalog`.`gold`.`dim_game`
CREATE TABLE IF NOT EXISTS `dev_catalog`.`gold`.`dim_activity_type` (
  SK_ID BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  `Activity_type` STRING,
  `Source_file` STRING,
  `Insert_date` TIMESTAMP,
  `Update_date` TIMESTAMP
) USING DELTA;

--  drop TABLE `dev_catalog`.`gold`.`dim_activity_type`
CREATE TABLE IF NOT EXISTS `dev_catalog`.`gold`.`dim_play_mode` (
  SK_ID BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  `PlayMode` STRING,
  `Source_file` STRING,
  `Insert_date` TIMESTAMP,
  `Update_date` TIMESTAMP
) USING DELTA;

--  drop TABLE `dev_catalog`.`gold`.`dim_play_mode`
CREATE TABLE IF NOT EXISTS `dev_catalog`.`gold`.`fact_player_activity` (
  SK_ID BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  PlayerID string,
  SessionID string,
  sk_id_game BIGINT foreign key references `dev_catalog`.`gold`.`dim_game` (SK_ID),
  sk_id_activity_type BIGINT foreign key references `dev_catalog`.`gold`.`dim_activity_type` (
        SK_ID
      ),
  sk_id_play_mode BIGINT foreign key references `dev_catalog`.`gold`.`dim_play_mode` (SK_ID),
  Level INT,
  ExperiencePoints FLOAT,
  AchievementUnlocked INT,
  CurrencyEarned FLOAT,
  CurrencySpent FLOAT,
  QuestCompleted INT,
  EnemiesDefeated INT,
  ItemsCollected INT,
  Deaths INT,
  DistanceTravelled FLOAT,
  ChatMessagesSent INT,
  TeamEventsParticipated INT,
  `start_time` TIMESTAMP,
  `end_time` TIMESTAMP,
  `Source_file` STRING,
  `Insert_date` TIMESTAMP,
  `Update_date` TIMESTAMP
) USING DELTA;
--  drop TABLE `dev_catalog`.`gold`.`fact_player_activity`
