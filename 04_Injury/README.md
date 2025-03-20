## What factors increase injury risk? 
(coding by Katharina Kreß)

### 👩‍💻 overview
In this part of our project, we analyse Trainingdata of a Dutch runnersteam, collected over the period of 7 years.  
The Datasets are published by University of Groningen with "Injury Prediction in Competitive Runners with Machine Learning" by Lövdal, Sofie; den Hartigh, Ruud; Azzopardi, George.

After gaining our own insights, we compare these with the individual training data from Nono, trying to answer the question:  
What factors increase injury risk?  

We build two Hypothesis:
- 🚨 **"We believe there are significant differences in training before an injury"** (H3a)
- 🚑 **"We believe that these differences correlate with injury"** (H3b)

After checking for any distribution (normal, exponential, Gumble, logistic) with **Anderson-Darling-Test**  
we tested on siginifcance with **Mann-Whitney-U-Test** (due to no normal distribution) for the first Hypothesis.  
The second Hypothesis aims for the correlation that we tested **heatmaps** and the **Spearman-r-value**

By using Machine Learning we tried to build a
- ⛑️ **prediction model**

### 🗂️ structure
In this folder you find five notebooks
  - 01_cleaning and preparing the Open-Source Data : giving an explanation of this quite complexe datasets (>70 columns)
  - 02_analysing the Open-Source Data : answering the two Hypothesis
  - 03_analysing Nono's data : to see if the same patterns occure here for H3a
  - 04_training Machine Learning Models : to create a prediction model
  - 05_subsets in SQL: preparing visualisation in tableau


### 💡 results
i.  🚨 ✅ H3a: We could reject the Null-Hypothesis

ii.  🚑 ❌ H3b: We failed to reject the Null-Hypothesis. No correlation could be found

iii.  ⛑️ ❌ Prediction Model: we were unable to design a satisfactory model during the project period

### 👓 to be continued 

For further approach the individuality of each athlete should be taken in account (due to a lack of time, we were unable to pursue this any further)

 

________________________________

### 🔎 sources: 
Lövdal, S., den Hartigh, R., & Azzopardi, G. (2021). Injury Prediction in Competitive Runners with Machine
Learning. International journal of sports physiology and performance, 16(10), 1522–1531.

https://pure.rug.nl/ws/portalfiles/portal/183763727/_15550273_International_Journal_of_Sports_Physiology_and_Performance_Injury_Prediction_in_Competitive_Runners_With_Machine_Learning.pdf


