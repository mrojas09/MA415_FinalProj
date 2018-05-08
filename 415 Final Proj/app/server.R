
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(grid)
library(shinythemes)

tweets.df <- read.csv("tweets.df.csv")
tweets.df$X <- NULL
map.data <- read.csv("map.data.csv")
map.data$X <- NULL

shinyServer(function(input, output) {

  output$Plottttt <- renderPlot({

    # generate time based on input$time from ui.R
    poi <- data.frame(x=as.numeric(tweets.df$place_lon),
                      y=as.numeric(tweets.df$place_lat),
                      t=as.numeric(tweets.df$time_mark))
    input.time <- input$time
    poii <- poi[poi$t==input.time,]

    
    # draw the histogram with the specified number of time
    par(bg = "black")
    plot(map.data$long[map.data$group==1],map.data$lat[map.data$group==1], type="l", xlim = c(-125,-66), ylim = c(25,50), col = "white", xlab = "Longitude", ylab = "Latitude")
    for (i in c(2:63)) {
      points(map.data$long[map.data$group==i],map.data$lat[map.data$group==i], type="l", col = "white")
    }
    points(poii$x, poii$y, col = 'purple')

  })

})

