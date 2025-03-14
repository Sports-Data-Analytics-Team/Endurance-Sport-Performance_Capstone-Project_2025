## What factors increase injury risk? 
(coding by Katharina Kreß)

In this part of our project, we analyse Trainingdata of a Dutch runnersteam, collected over the period of 7 years.

The Datasets are published by University of Groningen accompanying
"Injury Prediction in Competitive Runners with Machine Learning" by Lövdal, Sofie; den Hartigh, Ruud; Azzopardi, George.

After gaining our own insights, we compare these with the individual training data from Nono, trying to answer the question: what factors increase injury risk?

### structure
In this folder you find five notebooks
  - 01_cleaning and preparing the Open-Source Data : giving an explanation of this quite complexe datasets (>70 columns)
  - 02_analysing the Open-Source Data : answering the two Hypothesis
    
        - H3a: "We believe there are significant differences in training before an injury"
        - H3b: "We believe that these differences correlate with injury"
    
  - 03_analysing Nono's data : to see if the same patterns occure here for H3a
  - 04_training Machine Learning Models : to create a prediction model
  - 05_subsets in SQL: preparing visualisation in tableau


### results
i.  H3a: We could reject the Null-Hypothesis

ii.  H3b: We failed to reject the Null-Hypothesis. No correlation could be found

iii.  Prediction Model: we were unable to design a satisfactory model during the project period

iv.  for further approach the individuality of each athlete should be taken in account (due to a lack of time, we were unable to pursue this any further)

 

________________________________

paper & datasource : https://pure.rug.nl/ws/portalfiles/portal/183763727/_15550273_International_Journal_of_Sports_Physiology_and_Performance_Injury_Prediction_in_Competitive_Runners_With_Machine_Learning.pdf

