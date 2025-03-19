## 📊Does High or Low Intensity Training Improve Your Fitness? ##

(coding by Aisling Horan)

⚡ **Overview of Analysis**

This project examines how different training intensities impact cardiovascular fitness, specifically resting heart rate (RHR). A lower RHR indicates better endurance and heart efficiency. The study compares high-intensity interval training vs. low-intensity continuous training over six weeks to determine which is more effective for improving cardiovascular fitness.

**Source:** Kramer, Mark. 2020. *Cardiovascular and Metabolic Profiles of Moderately Trained Individuals Following a 6-Week HIIT vs. MICT Intervention*. Dataverse.  
**Link:** [Cardiovascular and metabolic profiles of moderately trained individuals following a 6-week HIIT vs. MICT intervention](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/DDUDB6)

🔍 Data & Methodology
Dataset Source: Cardiovascular and Metabolic Profiles of Moderately Trained Individuals Following a 6-Week HIIT vs. MICT Intervention
Participants: 20 moderately active individuals (ages 20-30)
Analysis:
Cleaned and standardized dataset using Python
Compared pre- and post-training RHR for HIIT & MICT groups
Used Cohen’s d test for effect size due to small sample size
Conducted Pearson’s correlation test to assess the relationship between pre-training RHR and improvement
📈 Key Findings

🔥 High-Intensity Training (HIIT)
Average RHR decrease: 6 bpm
Greater improvement in individuals with a higher starting RHR
Stronger correlation between pre-training RHR and reduction
🏃 Low-Intensity Training (MICT)
Average RHR decrease: 3.4 bpm
No clear correlation between pre-training RHR and reduction
⚖️ Comparison & Conclusion
HIIT reduced RHR by 9.1%, while MICT only reduced it by 4.6%
HIIT is more effective for cardiovascular improvement, especially for less fit individuals

📊 **Internal Intensity Training Data (Personal Analysis)**

This dataset consists of Nono’s seven-year triathlon training data. We analyzed changes in RHR during high- and low-intensity training periods.

1️⃣ High-Intensity Training Period

Measured RHR 4 weeks before & after high-intensity training
Used Mann-Whitney U-Test for statistical significance
Found a 1.9 bpm decrease in RHR
Correlation detected between pre-training RHR and percentage decrease

2️⃣ Low-Intensity Training Period

Measured RHR 4 weeks before & after low-intensity training
Used Mann-Whitney U-Test
Found a 0.6 bpm increase in RHR
No statistically significant difference

🔎 **Conclusion & Insights**
Any form of training can lower RHR, but HIIT is more effective
Both the trial dataset and Nono’s data confirm that high-intensity training has a stronger impact
Endurance training should include high-intensity sessions for optimal cardiovascular benefits
Future analysis could explore long-term effects, individual variability, and the role of age & gender
