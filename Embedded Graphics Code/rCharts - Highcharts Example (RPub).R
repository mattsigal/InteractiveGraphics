## Leveraging JavaScript libraries via rCharts

```{r echo=FALSE, cache=FALSE}
library(rCharts)
df <- as.data.frame(matrix(c(18, 3, 1, 1, 84, 4, 7, 3, 87, 12, 9, 7),ncol=4,nrow=3,byrow=TRUE)) 
colnames(df) <-c("Non-Smoker", "Occasional Smoker", "Regular Smoker", "Heavy Smoker")
rownames(df) <-  c("None", "Some", "Freq")

a <- Highcharts$new()
a$chart(type = "column")
a$title(text = "Smoking and Exercise")
a$plotOptions(column = list(stacking = "normal"))
a$xAxis(title ="Category", categories = c("No Exercising", "Some Exercising", "Frequent Exercising"))
a$data(df)
a$print('hchart1')
```

library(rCharts)
df <- as.data.frame(matrix(c(18, 3, 1, 1, 84, 4, 7, 3, 87, 12, 9, 7),ncol=4,nrow=3,byrow=TRUE)) 
colnames(df) <-c("Non-Smoker", "Occasional Smoker", "Regular Smoker", "Heavy Smoker")
rownames(df) <-  c("None", "Some", "Freq")

a <- rCharts:::Highcharts$new()
a$params$width <- 950
a$params$height <- 500
a$chart(type = "column")
a$title(text = "Smoking and Exercise")
a$yAxis(title = "Count")
a$plotOptions(column = list(stacking = "normal"))
a$xAxis(title ="Category", categories = c("No Exercising", "Some Exercising", "Frequent Exercising"))
a$data(df);
a$print('hchart1', include_assets = TRUE, cdn = FALSE)

a$publish('Highcharts', host = 'rpubs')
