library(tidyverse)

car_plot <- mtcars  |>  
  select(mpg, wt)  |> 
  ggplot(aes(x=wt, y=mpg)) + 
  geom_point() +
  geom_smooth(method="lm", formula=y~x ,se=FALSE) + 
  labs(title="Fuel efficiency and weight",
       subtitle="Heavier cars are less fuel efficient",
       y="Miles per gallon",
       x="Weight (1000s of lbs)",
       caption="Henderson and Vellerma")

write_rds(x=car_plot, "file=carplot.rds")

ggsave("car-plot.png", plot=car_plot)
