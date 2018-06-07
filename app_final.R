library(shiny)
library(ggplot2)
library(dplyr)

fish-len <- read.csv("WB_ExpandedLengths.csv", stringsAsFactors = FALSE)

ui <- fluidPage(
  titlePanel("Total Length Frequency"),
  sidebarLayout(
    sidebarPanel(
      #inputs
      #length slider
      sliderInput("lengthInput", "Length", 0, 1500, c(5, 800)),
      #species buttons
      radioButtons("speciesInput", "Species",
                   choices = c("Alewife", "Gizzard Shad", "Walleye", "Quillback"),
                   selected = "Walleye"),
      #year menu
      uiOutput("seasonOutput")
    ),
    mainPanel(
      plotOutput("coolplot"),
      br(), br(),
      tableOutput("results")
    )
  )
)

server <- function(input, output) {
  output$seasonOutput <- renderUI({
    selectInput("seasonInput", "Season collected",
                sort(unique(fish-len$season)),
                selected = "Spring")
  })  
  
  filtered <- reactive({
    if (is.null(input$seasonInput)) {
      return(NULL)
    }    
    
    fish-len %>%
      filter(#max and min length
             tl.mm >= input$lengthInput[1],
             tl.mm <= input$lengthInput[2],
             #species
             species == input$speciesInput,
             #season
             season == input$seasonInput
             #year
             #year == input$yearInput
      )
  })
  
  output$coolplot <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
    ggplot(filtered(), aes(tl.mm)) +
      geom_histogram()
  })
  
  output$results <- renderTable({
    filtered()
  })
}

shinyApp(ui = ui, server = server)