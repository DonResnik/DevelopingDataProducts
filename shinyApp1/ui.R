library(shiny)
library(rCharts)

shinyUI(
  navbarPage("mtcars Data Explorer",
    tabPanel("Dynamic Plot",
      sidebarPanel(
            h3('Plot of mtcars data to predict mpg'),
            checkboxGroupInput("id1","Select Coefficients",
                               c("Weight (1000 lbs)" = "wt",
                                 "Transmission (0 = automatic, 1 = manual)" = "am",
                                 "1/4 mile time" = "qsec",
                                 "Gross horsepower" = "hp",
                                 "Displacement (cu.in.)" = "disp",
                                 "Rear axle ratio" = "drat",
                                 "Number of forward gears" = "gear",
                                 "Number of carburetors" = "carb",
                                 "V/S" = "vs",
                                 "Number of cylinders" = "cyl"),
                               selected=c("wt","am","qsec","hp","disp","drat","gear","carb","vs","cyl")
                               )
            ),
      mainPanel(
       h1('Plot with combined coefficients'),
       plotOutput("oid1"),
       h1('Linear model fit'),
       verbatimTextOutput("oid2")
      )
    ),
    tabPanel("Docs",
       mainPanel(
        includeMarkdown("include.Rmd")
       )
    )
))