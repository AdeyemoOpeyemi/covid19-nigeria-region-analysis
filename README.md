🦠 COVID-19 Death Analysis by Region in Nigeria (SAIL Class Task)

This project uses **R** to analyze and visualize COVID-19 death data across Nigerian states. The goal was to test if average COVID-19 deaths differ significantly by geopolitical region using **statistical inference (ANOVA)** and to present the findings as a data scientist.

This was a class task assigned under the **SAIL Data Science Program** to assess our ability to work with real-world datasets, perform statistical tests, and derive insights using R.

---

📁 Files Included

- `covid19_nigeria_states.csv` – COVID-19 dataset by Nigerian states  
- `covid_analysis.R` – Main R script that maps states to regions, summarizes data, runs ANOVA, and plots results  
---

🔧 Tools Used

- R  
- tidyverse  
- ggplot2  
- dplyr  
- base R (for ANOVA and summary stats)

---

🔍 Key Insights

📍 Each of Nigeria's 36 states and FCT were grouped into 6 geopolitical regions  
📊 The average COVID-19 deaths were calculated per region  
📈 A one-way ANOVA was performed to test if the average death numbers differ significantly between regions  
📉 South West recorded the highest average deaths; South East had the lowest  

---

🧪 How to Use

1. Download or clone the repository  
2. Open `nigeria_inference_project.Rproj` in RStudio  
3. Install required R packages:

```r
install.packages(c("tidyverse", "ggplot2", "dplyr"))
```
📌 Purpose

This project was done by Adeyemo Opeyemi as part of a class assignment under the SAIL Data Science Program. It serves as a practical demonstration of statistical reasoning, hypothesis testing, and regional analysis using geolocated state-level data. The exercise combined real-world health data with statistical inference to uncover patterns across Nigeria’s geopolitical zones



📊 Conclusion (As Output from Script)

The average number of COVID-19 deaths differs significantly across the regions of Nigeria.
This was confirmed by a one-way ANOVA (p-value << 0.05), suggesting that at least one region has a significantly different average death rate.
Regions like South West had the highest average deaths, while South East had the lowest.
Further investigation could explore contributing factors such as population size, healthcare access, and reporting accuracy
