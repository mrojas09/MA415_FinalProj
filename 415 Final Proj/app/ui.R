
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("slate"),

  # App title
  titlePanel("Distribution of Twitter Usage"),

  # Sidebar with a slider input for number of time
  sidebarLayout(
    sidebarPanel(
      sliderInput("time",
                  "Choose which hour within a day (EST):",
                  min = 0,
                  max = 24,
                  value = 1),
      br(),
      
      # Twitter Summary
      h3("Leading countries based on number of Twitter users as of April 2018"),
      h3("_._._._._._._.(in millions)._._._._._._._._"),
      br(),
      h5("This statistic shows a prognosis of the number of active Twitter users in leading markets as of April 2018. During this period of time, the microblogging service had 10.1 million monthly active users in India. The United States were ranked first with 72.3 million monthly active users. As of the fourth quarter of 2017, Twitter had 330 million global MAU. The most-followed Twitter accounts include celebrities such as Katy Perry, Justin Bieber and former U.S. president Barack Obama."),
      img(src="tw.jpeg",height = 300, width = 415), 
      br(),
      
      h3("Analysis"),
      h5("In this Twitter data analysis project, (how to get the data and clean the data). I analyze the number of tweets and the density of tweets that are posted in different states and cities, making some plots to compare in different situations. I also use t test and permutation test to check the whether MA and FL have the same density mean in one day. Next, I find the relations among followers count, liseted count and friends count which could represent the popularity in Twitter. Finally, I plot the most frequent words with their wordcloud and conduct clustering analysis on the text data."),
      br(),
      
      # Twitter Density Analysis Vid
      h3("Twitter Statistics"),
      HTML('<iframe width="415" height="300" src="https://www.youtube.com/embed/qs6S1QEbQlY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
      br(),
      
      #Logos
      h4("Powered by: "),
      tags$img(src= "RStudio-Ball.png",height = 60, width = 70, hspace = "10"),
      tags$img(src= "git-desktop-logo.png",height = 60, width = 60, hspace = "20"),
      tags$img(src= "Youtube-logo-black.png",height = 60, width = 70)
      
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("Plottttt", height = 500),
      
      br(),
      
      h2("Twitter Statistics"),
      h4("Total Monthly Active Twitter Users:"),
      h5("330 million"),
      h4("Total Tweets sent per Day:"),
      h5("500 million"),
      h4("Percentage of Twitter users on Mobile:"),
      h5("80%"),
      h4("Number of Twitter Daily Active Users:"),
      h5("100 million"),
      br(),
      
      h2("Twitter Demographics"),
      tags$ul(
        tags$li("24% of All Internet male users use Twitter, whereas 21% of All Internet Female users use Twitter."), 
        tags$li("There are over 67 million Twitter users in US."), 
        tags$li("The top three countries by user count outside the U.S. are Brazil (27.7 million users), Japan (25.9 million), and Mexico (23.5 million)."),
        tags$li("79% of Twitter accounts are based outside the United States"),
        tags$li("Total number of Twitter users in UK is 13 million."),
        tags$li("37% of Twitter users are between ages of 18 and 29, 25% users are 30-49 years old."),
        tags$li("56% of Twitter users $50,000 and more in year.")
      ),
        
      br(),
      h2("Twitter Financials"),
      tags$ul(
        tags$li("Twitter’s Q3 2016 revenue were $616 million compared to Q3 revenue of 2015 is $569 million, up 61% year-over-year, and above the previously forecast range of $470 million to $485 million."), 
        tags$li("Advertising revenue totaled $545 million (US:$374 million, International:$242 million), an increase of 6% year-over-year."), 
        tags$li("Mobile advertising revenue was 88% of total advertising revenue."),
        tags$li("Total ad engagements were up 91% year-over-year."),
        tags$li("Twitter is currently valued at $16 billion.")
        ),
     
      br(),
      h2("Fun Facts"),
      tags$ul(
        tags$li("Twitter can handle 18 quintillion user accounts."), 
        tags$li("More than 100 million tweets contained GIFs in 2015."), 
        tags$li("Saudi Arabia has the highest percent of internet users who are active on Twitter."),
        tags$li("Number of Twitter timeline views in 2014 is 200 billion."),
        tags$li("83% of 193 UN member countries have Twitter presence."),
        tags$li("Twitter’s revenue per employee is $488,913.")
      )
      
    )
  )
))
