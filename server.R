library(shiny)
stockReturns <- read.csv("StockReturns.csv")
stockPrice <- read.csv("StockPrice.csv")
#Initialize regression variable
reg<-lm(stockReturns$Goldman.Sachs..GS ~ stockReturns$S.P)


shinyServer(function(input, output, session) {
  output$plot <- renderPlot({
    
    #plot(cars, type=input$plotType)
    
    if ( input$plotType == "A")
    {
      
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Goldman.Sachs..GS, type="p", ylab = NA, 
           xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Goldman.Sachs..GS,type="l", col = 84)
      mtext(side = 2, line = 3, "Goldman Sachs GS, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S.P, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S.P,type="l", col = "red")
      mtext(side = 4, line = 3, "S&P500 Index", col="red")
      
    }
    else if ( input$plotType == "B")
    {
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Goldman.Sachs..GS, type="p", ylab = NA, xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Goldman.Sachs..GS,type="l", col = 84)
      mtext(side = 2, line = 3, "Goldman Sachs GS, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S5INBK.Index, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S5INBK.Index,type="l", col = "red")
      mtext(side = 4, line = 3, "S5INBK Index", col="red")
    }
    else if ( input$plotType == "C")
    {
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Lockheed.Martin..LMT, type="p", ylab = NA, xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Lockheed.Martin..LMT,type="l", col = 84)
      mtext(side = 2, line = 3, "Lockheed Martin LMT, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S.P, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S.P,type="l", col = "red")
      mtext(side = 4, line = 3, "S&P500 Index", col="red")
    }
    else if ( input$plotType == "D")
    {
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Lockheed.Martin..LMT, type="p", ylab = NA, xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Lockheed.Martin..LMT,type="l", col = 84)
      mtext(side = 2, line = 3, "Lockheed Martin LMT, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S5AERO.Index, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S5AERO.Index,type="l", col = "red")
      mtext(side = 4, line = 3, "S5AERO Index", col="red")
    }
    else if ( input$plotType == "E")
    {
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Chevron..CVR, type="p", ylab = NA, xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Chevron..CVR,type="l", col = 84)
      mtext(side = 2, line = 3, "Chevron CVR, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S.P, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S.P,type="l", col = "red")
      mtext(side = 4, line = 3, "S&P500 Index", col="red")
    }
    else if ( input$plotType == "F")
    {
      par(mar = c(5,5,2,5))
      plot(stockPrice$Date, stockPrice$Chevron..CVR, type="p", ylab = NA, xlab = NA, xaxt="n")
      x <- c(1,10,20,30,40,50);
      dates<- c("09-08","09-19","10-03","10-17","10-31","11-14")
      axis(1, at=x, label=dates, col.axis="brown", las=2)
      mtext(side = 1, line = 3, "Dates, 2014", col="brown")
      lines(stockPrice$Date, stockPrice$Chevron..CVR,type="l", col = 84)
      mtext(side = 2, line = 3, "Chevron CVR, ($)", col="blue")
      par(new = T)
      plot(stockPrice$Date, stockPrice$S5OILG.Index, col = "red", axes = F, xlab = NA, ylab = NA)
      axis(side = 4)
      lines(stockPrice$Date, stockPrice$S5OILG.Index,type="l", col = "red")
      mtext(side = 4, line = 3, "S5OILG Index", col="red")
    }
  })
  
      output$SecurityLine <- renderPlot({
        
        if ( input$var1 == "Goldman Sachs" )
          {
            stock<-"Goldman Sachs, GS"
            yData<-stockReturns$Goldman.Sachs..GS
            
            if (input$var2 == "S&P500" )
            {
              
              benchmark<-"S&P500"
              xData<-stockReturns$S.P
              mainTitle<-"SML From Daily Returns GS vs S&P500"
              
            }
            else{ 
              
              benchmark<-"S5INBK"
              xData<-stockReturns$S5INBK.Index
              mainTitle<-"SML From Daily Returns GS vs S5INBK Index"
              
            }
          }
        else if (input$var1 == "Lockheed Martin")
          {
            stock<-"Lockheed Martin, LMT"
            yData<-stockReturns$Lockheed.Martin..LMT
            
            if (input$var2 == "S&P500" )
            {
              benchmark<-"S&P500"
              xData<-stockReturns$S.P
              mainTitle<-"SML From Daily Returns LMT vs S&P500"
              
            }
            else{ 
              
              benchmark<-"S5AERO"
              xData<-stockReturns$S5AERO.Index
              mainTitle<-"SML From Daily Returns LMT vs S5AERO Index"
            }
          
        }
        else
          {
            stock<-"Chevron, CVR"
            yData<-stockReturns$Chevron..CVR
            
            if (input$var2 == "S&P500" )
            {
              benchmark<-"S&P500"
              xData<-stockReturns$S.P
              mainTitle<-"SML From Daily Returns CVR vs S&P500"
              
            }
            else{ 
              
              benchmark<-"S5OILG"
              xData<-stockReturns$S5OILG.Index
              mainTitle<-"SML From Daily Returns CVR vs S5OILG Index"
            }
          }
       
        xSML<-"Alpha: "
        reg<-lm(yData ~ xData)
        beta<-as.character(reg$coefficients[2])
        alpha<-as.character(reg$coefficients[1])
        xSML<-paste(xSML, alpha, sep="")
        xSML<-paste(xSML, ", Beta: ", sep="")
        xSML<-paste(xSML, beta, sep="")
        p <- plot(xData, yData, main=mainTitle, col.main="red",
                  sub=xSML, col.sub="blue",
                  xlab=benchmark, ylab=stock, col.lab="orange",
                  pch=16)
            
        p <- p + abline(reg, col="blue") + grid()
        
              
      })
  
  
  output$summary1 <- renderPrint({ 
    
          
            if ( input$DataSummary == "1")
            {
              summary(stockPrice$Goldman.Sachs..GS)
            }
            else if ( input$DataSummary == "2")
            {
              summary(stockPrice$Lockheed.Martin..LMT)
            }
            else if ( input$DataSummary == "3")
            {
              summary(stockPrice$Chevron..CVR)
            }
            else if ( input$DataSummary == "4")
            {
              summary(lm(stockReturns$Goldman.Sachs..GS ~ stockReturns$S.P))
            }
            else if ( input$DataSummary == "5")
            {
              summary(lm(stockReturns$Lockheed.Martin..LMT ~ stockReturns$S.P))
            }
            else 
            {
              summary(lm(stockReturns$Chevron..CVR ~ stockReturns$S.P))
              
            }
          
    
          })
  
        
  output$stock_intro <- renderImage({
                                      outfile <- "stock_intro.jpg" 
                                      list(src = outfile,
                                           contentType = 'image/png',
                                           width = 300,
                                           height = 200
                                           )
                                      
                                    }, deleteFile = FALSE)
  output$GS <- renderImage({
                                        outfile <- "GS.jpg"
                                        list(src = outfile,
                                             contentType = 'image/png',
                                             width = 300,
                                             height = 200
                                        )
                                      }, deleteFile = FALSE)
  output$LMT <- renderImage({
                                        outfile <- "LMT.jpg"
                                        list(src = outfile,
                                             width = 300,
                                             height = 200
                                        )
                                      }, deleteFile = FALSE)
  output$CVR <- renderImage({
                                        outfile <- "CVR.jpg"
                                        list(src = outfile,
                                             width = 300,
                                             height = 200
                                        )
                                      }, deleteFile = FALSE)
  output$DevelopingDataProducts <- renderImage({
                                      outfile <- "DevelopingDataProducts.jpg"
                                      list(src = outfile,
                                           width = 400,
                                           height = 300
                                      )
                                    }, deleteFile = FALSE)
                                    
  output$JH <- renderImage({
                              outfile <- "JH.jpg"
                              list(src = outfile,
                                   width = 400,
                                   height = 300
                              )
                            }, deleteFile = FALSE)

})


