# Install the necessary packages;
suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

# Now create a web client!
shinyUI(navbarPage("2018 - Data Science Capstone Project", theme = shinytheme("spacelab"),
                   
# First tab --> Prediction
tabPanel("Next Word Prediction",

         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Please enter your text below:"),
                                  value = ),
                        tags$span(style="color:grey",("Only words in English language are supported.")),
                        br(),
                        tags$hr(),
                        h4("The predicted next word is:"),
                        tags$span(style="color:#025814",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("You entered:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

# Second tab --> Release Notes:
tabPanel("Release Notes",
         fluidRow(
                 column(2,
                        p("")),
                 column(8,
                        includeMarkdown("./notes/notes.md")),
                 column(2,
                        p(""))
         )
),

## Footer Tags:
tags$hr(),
tags$br(),
tags$span(style="color:grey", tags$footer( tags$br(), align = "center"), tags$br()
)
)
)
