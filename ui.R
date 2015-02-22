library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('mtcars k-means clustering'),
  sidebarPanel(
    selectInput("xcol", "X Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear",
                     "Miles per Gallon" = "mpg",
                     "Displacement" = "disp",
                     "Horsepower" = "hp",
                     "Rear Axle Ratio" = "drat",
                     "Weight" = "wt",
                     "1/4 Mile Time" = "qsec",
                     "Carburetors" = "carb")),
    
    
    selectInput('ycol', 'Y Variable',
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear",
                     "Miles per Gallon" = "mpg",
                     "Displacement" = "disp",
                     "Horsepower" = "hp",
                     "Rear Axle Ratio" = "drat",
                     "Weight" = "wt",
                     "1/4 Mile Time" = "qsec",
                     "Carburetors" = "carb")),
                selected=names(mtcars)[[2]],
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
