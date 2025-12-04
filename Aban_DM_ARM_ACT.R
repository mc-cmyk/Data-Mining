installed.packages("arules")
installed.packages("arulesViz")

library(arules)
library(arulesViz)

data("Groceries")

summary(Groceries)

inspect(Groceries[1:5])

itemFrequencyPlot(Groceries,
                    topN = 20, type = "absolute")

rules <- apriori(Groceries, 
                 parameter = list(supp = 0.002, conf = 0.5))

rules

inspect(head(rules))

rules_sorted <- sort(rules,
                     by = "lift", decreasing = TRUE)
inspect(head(rules_sorted))

# windows()
plot(rules, method = "scatterplot")
plot(rules, method = "graph", engine = "htmlwidget")
plot(rules, method = "grouped")