library(markdown)

shinyUI(navbarPage("Stock Analysis",
                   tabPanel("Plot Stock and Index",
                            sidebarLayout(
                              sidebarPanel(
                                radioButtons("plotType", "Select a Plot",
                                             c("Goldman Sachs and S&P500"="A", "Goldman Sachs and S5INBK"="B",
                                               "Lockheed Martin and S&P500"="C", "Lockheed Martin and S5AERO"="D",
                                               "Chevron and S&P500"="E", "Chevron and S5OILG"="F")
                                )
                              ),
                              mainPanel(
                                plotOutput("plot")
                              )
                            )
                   ),
                   tabPanel("Security Market Line",
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Create Security Market Line (SML)
                                          from daily stock returns and benchmark index."),
                                
                                selectInput("var1", 
                                            label = "Choose Stock to display",
                                            choices = c("Goldman Sachs", "Lockheed Martin", "Chevron"),
                                            selected = "Goldman Sachs"),
                                
                                selectInput("var2", 
                                            label = "Choose Benchmark Index",
                                            choices = c("S&P500", "Industry Index"),
                                            selected = "S&P500")
                              ),
                            
                            mainPanel(
                              plotOutput("SecurityLine")
                            )
                        )
                    ),

                                     
                   tabPanel("Data Summary",
                            
                            radioButtons("DataSummary", label = h3("Select Data"), 
                                      choices = list("Stock GS" = 1, "Stock LMT" = 2, "Stock CVR" = 3,
                                                     "Regression GS - S&P500" = 4, "Regression LMT - S&P500" = 5, "Regression CVR - S&P500" = 6),
                                      selected = 1),
                            verbatimTextOutput("summary1")
                            
                   ),
                   
                   navbarMenu("Documentation",

                              tabPanel("App. Description",
                                       fluidRow(
                                         column(6,
                                                includeMarkdown("about.md")
                                         ),
                                         column(3,
                                                imageOutput("stock_intro", height = 300),
                                                imageOutput("GS"),
                                                imageOutput("LMT"),
                                                imageOutput("CVR")
                                                
                                         )
                                       )
                              ),
                              
                              tabPanel("Addional Information",
                                       fluidRow(
                                         column(6,
                                                includeMarkdown("references.md")
                                         ),
                                         column(3,
                                                imageOutput("DevelopingDataProducts"),
                                                imageOutput("JH")                                                
                                                
                                         )
                                         
                                       )
                              )
                   )
))