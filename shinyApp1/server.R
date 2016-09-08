library(UsingR)
data(mtcars)
shinyServer( function(input, output) {

  inputList <- reactive({req(input$id1)
                        paste(input$id1,collapse="+")})
    fml = reactive({as.formula(sprintf('%s ~ %s', "mpg", inputList()))})
    fit = reactive({lm(fml(), data=mtcars)})
    plotOut <- reactive({ggplot(fit()$model, aes_string(x = inputList(), y = names(fit()$model)[1])) + 
                        geom_point() +
                        stat_smooth(method = "lm", col = "red") +
                        labs(title = paste("Intercept =",signif(fit()$coef[[1]],5 ),
                                           " Slope =",signif(fit()$coef[[2]], 5),
                                           " Pvalue =",signif(summary(fit())$coef[2,4], 5)))})
   output$oid1 <- renderPlot(plotOut())
   output$oid2 <- renderText(sprintf('%s ~ %s', "mpg", inputList()))
} )