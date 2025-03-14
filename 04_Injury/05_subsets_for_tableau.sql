------
-- first some code snippets before the real PREP work on the one individual training data from Nono
------




DROP TABLE IF EXISTS public.df_inj_days_prep;






--------------------------------
-- 1. build subset of both injury datasets for visualy testing regression in Python
--------------------------------

DROP TABLE IF EXISTS public.df_inj_prep;
CREATE TABLE public.df_inj_prep("DayNumber" INTEGER,
 "AthletesID" INTEGER,
 "Injury" INTEGER,
"w1_Sessions" FLOAT,
 "w1_RestDays" FLOAT,
 "w1_TotalKm" FLOAT,
 "w1_MaxKmDay" FLOAT,
 "w1_TotalKm_z5" FLOAT,
 "w2_Sessions"FLOAT,
 "w2_RestDays" FLOAT,
 "w2_TotalKm" FLOAT,
 "w2_MaxKmDay" FLOAT,
 "w2_TotalKm_z5" FLOAT,
 "w3_Sessions"FLOAT,
 "w3_RestDays"FLOAT,
 "w3_TotalKm"FLOAT,
 "w3_MaxKmDay"FLOAT,
 "w3_TotalKm_z5"FLOAT,
 "VolumeChange_w2w1"FLOAT,
 "VolumeChange_w3w1"FLOAT,
 "VolumeChange_w3w2"FLOAT
 "d7_Sessions"FLOAT,
 "d7_RestDay"FLOAT,
 "d7_TotalKm"FLOAT,
 "d7_KmZ5"FLOAT,
 "d6_Sessions"FLOAT,
 "d6_RestDay"FLOAT,
 "d6_TotalKm"FLOAT,
 "d6_KmZ5"FLOAT,
  "d5_Sessions"FLOAT,
 "d5_RestDay"FLOAT,
 "d5_TotalKm"FLOAT,
 "d5_KmZ5"FLOAT,
  "d4_Sessions"FLOAT,
 "d4_RestDay"FLOAT,
 "d4_TotalKm"FLOAT,
 "d4_KmZ5"FLOAT,
  "d3_Sessions"FLOAT,
 "d3_RestDay"FLOAT,
 "d3_TotalKm"FLOAT,
 "d3_KmZ5"FLOAT,
  "d2_Sessions"FLOAT,
 "d2_RestDay"FLOAT,
 "d2_TotalKm"FLOAT,
 "d2_KmZ5"FLOAT,
  "d1_Sessions"FLOAT,
 "d1_RestDay"FLOAT,
 "d1_TotalKm"FLOAT,
 "d1_KmZ5"FLOAT
 );

 
-- enter the data from df_inj_weeks_clean
INSERT INTO public.df_inj_prep 
("DayNumber",
 "AthletesID",
 "Injury",
"w1_Sessions",
 "w1_RestDays",
 "w1_TotalKm",
 "w1_MaxKmDay",
 "w1_TotalKm_z5",
 "w2_Sessions",
 "w2_RestDays",
 "w2_TotalKm",
 "w2_MaxKmDay",
 "w2_TotalKm_z5",
 "w3_Sessions",
 "w3_RestDays",
 "w3_TotalKm",
 "w3_MaxKmDay",
 "w3_TotalKm_z5",
 "VolumeChange_w2w1",
 "VolumeChange_w3w1",
 "VolumeChange_w3w2")
SELECT 
"DayNumber",
 "AthletesID",
 "Injury",
"w1_Sessions",
 "w1_RestDays",
 "w1_TotalKm",
 "w1_MaxKmDay",
 "w1_TotalKm_z5",
 "w2_Sessions",
 "w2_RestDays",
 "w2_TotalKm",
 "w2_MaxKmDay",
 "w2_TotalKm_z5",
 "w3_Sessions",
 "w3_RestDays",
 "w3_TotalKm",
 "w3_MaxKmDay",
 "w3_TotalKm_z5",
 "VolumeChange_w2w1",
 "VolumeChange_w3w1",
 "VolumeChange_w3w2"
FROM df_inj_weeks_clean;

-- Update the rest from df_inj_days_clean
UPDATE public.df_inj_prep AS target
SET 
    "d7_Sessions" = source."d7_Sessions",
    "d7_RestDay" = source."d7_RestDay",
    "d7_TotalKm" = source."d7_TotalKm",
    "d7_KmZ5" = source."d7_KmZ5",
    "d6_Sessions" = source."d6_Sessions",
    "d6_RestDay" = source."d6_RestDay",
    "d6_TotalKm" = source."d6_TotalKm",
    "d6_KmZ5" = source."d6_KmZ5",
    "d5_Sessions" = source."d5_Sessions",
    "d5_RestDay" = source."d5_RestDay",
    "d5_TotalKm" = source."d5_TotalKm",
    "d5_KmZ5" = source."d5_KmZ5",
    "d4_Sessions" = source."d4_Sessions",
    "d4_RestDay" = source."d4_RestDay",
    "d4_TotalKm" = source."d4_TotalKm",
    "d4_KmZ5" = source."d4_KmZ5",
    "d3_Sessions" = source."d3_Sessions",
    "d3_RestDay" = source."d3_RestDay",
    "d3_TotalKm" = source."d3_TotalKm",
    "d3_KmZ5" = source."d3_KmZ5",
    "d2_Sessions" = source."d2_Sessions",
    "d2_RestDay" = source."d2_RestDay",
    "d2_TotalKm" = source."d2_TotalKm",
    "d2_KmZ5" = source."d2_KmZ5",
    "d1_Sessions" = source."d1_Sessions",
    "d1_RestDay" = source."d1_RestDay",
    "d1_TotalKm" = source."d1_TotalKm",
    "d1_KmZ5" = source."d1_KmZ5"
FROM public.df_inj_days_clean AS source
WHERE target."DayNumber" = source."DayNumber"
AND target."AthletesID" = source."AthletesID"
RETURNING target.*;


-- check if all are filled
SELECT COUNT(*) AS total_rows,
       COUNT("d7_Sessions") AS d7_Sessions_filled,
       COUNT("d7_RestDay") AS d7_RestDay_filled,
       COUNT("d7_TotalKm") AS d7_TotalKm_filled,
       COUNT("d7_KmZ5") AS d7_KmZ5_filled,
       COUNT("d6_Sessions") AS d6_Sessions_filled,
       COUNT("d6_RestDay") AS d6_RestDay_filled,
       COUNT("d6_TotalKm") AS d6_TotalKm_filled,
       COUNT("d6_KmZ5") AS d6_KmZ5_filled,
       COUNT("d5_Sessions") AS d5_Sessions_filled,
       COUNT("d5_RestDay") AS d5_RestDay_filled,
       COUNT("d5_TotalKm") AS d5_TotalKm_filled,
       COUNT("d5_KmZ5") AS d5_KmZ5_filled,
       COUNT("d4_Sessions") AS d4_Sessions_filled,
       COUNT("d4_RestDay") AS d4_RestDay_filled,
       COUNT("d4_TotalKm") AS d4_TotalKm_filled,
       COUNT("d4_KmZ5") AS d4_KmZ5_filled,
       COUNT("d3_Sessions") AS d3_Sessions_filled,
       COUNT("d3_RestDay") AS d3_RestDay_filled,
       COUNT("d3_TotalKm") AS d3_TotalKm_filled,
       COUNT("d3_KmZ5") AS d3_KmZ5_filled,
       COUNT("d2_Sessions") AS d2_Sessions_filled,
       COUNT("d2_RestDay") AS d2_RestDay_filled,
       COUNT("d2_TotalKm") AS d2_TotalKm_filled,
       COUNT("d2_KmZ5") AS d2_KmZ5_filled,
       COUNT("d1_Sessions") AS d1_Sessions_filled,
       COUNT("d1_RestDay") AS d1_RestDay_filled,
       COUNT("d1_TotalKm") AS d1_TotalKm_filled,
       COUNT("d1_KmZ5") AS d1_KmZ5_filled
FROM public.df_inj_prep;


---------------------------------
-- 2. building smaller MART table of df_inj_weeks for easier visualisation in tableau
--------------------------------

DROP TABLE IF EXISTS public.df_injury_mart;
DROP TABLE IF EXISTS public.df_mart_Injury;
CREATE TABLE public.df_mart_Injury("DayNumber" INTEGER,
 "AthletesID" INTEGER,
 "Injury" INTEGER,
"w1_Sessions" FLOAT,
 "w1_RestDays" FLOAT,
 "w1_TotalKm" FLOAT,
 "w1_MaxKmDay" FLOAT,
 "w1_TotalKm_z5" FLOAT,
 "w2_Sessions"FLOAT,
 "w2_RestDays" FLOAT,
 "w2_TotalKm" FLOAT,
 "w2_MaxKmDay" FLOAT,
 "w2_TotalKm_z5" FLOAT,
 "w3_Sessions"FLOAT,
 "w3_RestDays"FLOAT,
 "w3_TotalKm"FLOAT,
 "w3_MaxKmDay"FLOAT,
 "w3_TotalKm_z5"FLOAT,
 "VolumeChange_w2w1"FLOAT,
 "VolumeChange_w3w1"FLOAT,
 "VolumeChange_w3w2"FLOAT,
 "DifVolume_w2w1"FLOAT,
 "DifVolume_w3w2"FLOAT,
 "DifVolume_w3w1"FLOAT
);

-- enter the data from df_inj_weeks
INSERT INTO public.df_mart_Injury 
("DayNumber",
 "AthletesID",
 "Injury",
"w1_Sessions",
 "w1_RestDays",
 "w1_TotalKm",
 "w1_MaxKmDay",
 "w1_TotalKm_z5",
 "w2_Sessions",
 "w2_RestDays",
 "w2_TotalKm",
 "w2_MaxKmDay",
 "w2_TotalKm_z5",
 "w3_Sessions",
 "w3_RestDays",
 "w3_TotalKm",
 "w3_MaxKmDay",
 "w3_TotalKm_z5",
 "VolumeChange_w2w1",
 "VolumeChange_w3w1",
 "VolumeChange_w3w2")
SELECT 
"DayNumber",
 "AthletesID",
 "Injury",
"w1_Sessions",
 "w1_RestDays",
 "w1_TotalKm",
 "w1_MaxKmDay",
 "w1_TotalKm_z5",
 "w2_Sessions",
 "w2_RestDays",
 "w2_TotalKm",
 "w2_MaxKmDay",
 "w2_TotalKm_z5",
 "w3_Sessions",
 "w3_RestDays",
 "w3_TotalKm",
 "w3_MaxKmDay",
 "w3_TotalKm_z5",
 "VolumeChange_w2w1",
 "VolumeChange_w3w1",
 "VolumeChange_w3w2"
FROM df_inj_weeks_prep;

