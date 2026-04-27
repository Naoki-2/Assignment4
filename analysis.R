df <- read.csv("raw-data/cohort.csv")

head(df)
summary(df)

model <- glm(smoke ~ female + age + cardiac + cost,
             data = df,
             family = binomial)

summary(model)

hist(df$age,
     main = "Age Distribution",
     xlab = "Age")