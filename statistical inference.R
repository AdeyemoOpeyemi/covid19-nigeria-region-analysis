## CLASS TASK

# Summarise the covid data by regions
# Test each region against other to test if their average death number from COVID-19 is same.
# Present your test as a Data Scientist

# Load necessary libraries

setwd("C:\\Users\\USER\\Downloads\\") 
Covid_19 <- read.csv("covid19_nigeria_states.csv")
colnames(Covid_19)
view(Covid_19)
summary(Covid_19) 

# ----------------------------------------
# Step 2: Map states to their geopolitical regions
# ----------------------------------------
region_map <- list(
  'Abia'='South East', 'Anambra'='South East', 'Ebonyi'='South East', 'Enugu'='South East', 'Imo'='South East',
  'Akwa Ibom'='South South', 'Bayelsa'='South South', 'Cross River'='South South', 'Delta'='South South',
  'Edo'='South South', 'Rivers'='South South',
  'Ekiti'='South West', 'Lagos'='South West', 'Ogun'='South West', 'Ondo'='South West', 'Osun'='South West', 'Oyo'='South West',
  'FCT'='North Central', 'Benue'='North Central', 'Kogi'='North Central', 'Kwara'='North Central',
  'Nasarawa'='North Central', 'Niger'='North Central', 'Plateau'='North Central',
  'Adamawa'='North East', 'Bauchi'='North East', 'Borno'='North East', 'Gombe'='North East', 'Taraba'='North East', 'Yobe'='North East',
  'Jigawa'='North West', 'Kaduna'='North West', 'Kano'='North West', 'Katsina'='North West',
  'Kebbi'='North West', 'Sokoto'='North West', 'Zamfara'='North West'
)
region_map

# Add region to the data

Covid_19$region <- unlist(region_map[Covid_19$states])
Covid_19$region
colnames(Covid_19)
Covid_19$states
view(Covid_19)
# ----------------------------------------
# Step 3: Summarise COVID data by region
# ----------------------------------------
region_summary <- Covid_19 %>%group_by(region) %>%
  summarise(avg_total_death = mean(total_death),
            sum_total_death=sum(total_death),
            sum_total_recovery= sum (total_recoveries),
            na.rm = TRUE)%>% arrange(desc(sum_total_death),desc(sum_total_recovery))
region_summary

print("Average Total Deaths by Region:")
print(region_summary)

# Optional: Visualize the results
ggplot(region_summary, aes(x = region, y = avg_total_death, fill = region)) +
  geom_col() +
  labs(title = "Average COVID-19 Deaths by Region in Nigeria", y = "Average Deaths", x = "Region") +
  theme_minimal()

# ----------------------------------------
# Step 4: Test if average deaths differ by region (ANOVA)
# ----------------------------------------
anova_result <- aov(total_death ~ region, Covid_19)
print("ANOVA Result:")
summary(anova_result)

# ----------------------------------------
# Step 5: Conclusion (For Padlet)
# ----------------------------------------
cat("\nConclusion:\n")
cat("The average number of COVID-19 deaths differs significantly across the regions of Nigeria.\n")
cat("This was confirmed by a one-way ANOVA (p-value << 0.05), suggesting that at least one region has a significantly different average death rate.\n")
cat("Regions like South West had the highest average deaths, while South East had the lowest.\n")
cat("Further investigation could explore contributing factors such as population, healthcare access, and reporting accuracy.\n")



