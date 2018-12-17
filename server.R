server <- function(input, output) {
  
  output$mapplot <- renderPlot({
    ggplot(MSR_df, aes_string(input$x, input$y)) + geom_point()
  })
  
  output$mPlot <- renderPlot({
    if(input$z=="Pwrindx"){
      mapCountryData(mapped_data, nameColumnToPlot=input$z, mapTitle='Global Firepower Factors',colourPalette = rev(colourPalette))
    }else{
      mapCountryData(mapped_data, nameColumnToPlot=input$z, mapTitle='Global Firepower Factors',colourPalette = colourPalette)
    }
  })
  
  #Africa
  output$manpowerAfrica <- renderPlot({
    ggplot(AfricaTop, aes_string(x='Country',y=input$a)) + geom_bar(stat = "identity", fill='orchid1')
  })
  
  output$airpowerAfrica <- renderPlot({
    ggplot(AfricaTop, aes_string(x='Country',y=input$b)) + geom_bar(stat = "identity", fill='skyblue1')
  })
  
  output$landAfrica <- renderPlot({
    ggplot(AfricaTop, aes_string(x='Country',y=input$c)) + geom_bar(stat = "identity", fill='darkseagreen2')
  })
  
  output$navalAfrica <- renderPlot({
    ggplot(AfricaTop, aes_string(x='Country',y=input$d)) + geom_bar(stat = "identity", fill='royalblue1')
  })
  
  #Asia
  output$manpowerAsia <- renderPlot({
    ggplot(AsiaTop, aes_string(x='Country',y=input$e)) + geom_bar(stat = "identity", fill='orchid1')
  })
  
  output$airpowerAsia <- renderPlot({
    ggplot(AsiaTop, aes_string(x='Country',y=input$f)) + geom_bar(stat = "identity", fill='skyblue1')
  })
  
  output$landAsia <- renderPlot({
    ggplot(AsiaTop, aes_string(x='Country',y=input$g)) + geom_bar(stat = "identity", fill='darkseagreen2')
  })
  
  output$navalAsia<- renderPlot({
    ggplot(AsiaTop, aes_string(x='Country',y=input$h)) + geom_bar(stat = "identity", fill='royalblue1')
  })
  
  #Europe
  output$manpowerEurope <- renderPlot({
    ggplot(EuropeTop, aes_string(x='Country',y=input$i)) + geom_bar(stat = "identity", fill='orchid1')
  })
  
  output$airpowerEurope <- renderPlot({
    ggplot(EuropeTop, aes_string(x='Country',y=input$j)) + geom_bar(stat = "identity", fill='skyblue1')
  })
  
  output$landEurope <- renderPlot({
    ggplot(EuropeTop, aes_string(x='Country',y=input$k)) + geom_bar(stat = "identity", fill='darkseagreen2')
  })
  
  output$navalEurope<- renderPlot({
    ggplot(EuropeTop, aes_string(x='Country',y=input$l)) + geom_bar(stat = "identity", fill='royalblue1')
  })
  
  #America
  output$manpowerAmerica <- renderPlot({
    ggplot(AmericaTop, aes_string(x='Country',y=input$m)) + geom_bar(stat = "identity", fill='orchid1')
  })
  
  output$airpowerAmerica <- renderPlot({
    ggplot(AmericaTop, aes_string(x='Country',y=input$n)) + geom_bar(stat = "identity", fill='skyblue1')
  })
  
  output$landAmerica <- renderPlot({
    ggplot(AmericaTop, aes_string(x='Country',y=input$o)) + geom_bar(stat = "identity", fill='darkseagreen2')
  })
  
  output$navalAmerica <- renderPlot({
    ggplot(AmericaTop, aes_string(x='Country',y=input$p)) + geom_bar(stat = "identity", fill='royalblue1')
  })
  
  
}


shinyApp(ui=ui, server=server)


