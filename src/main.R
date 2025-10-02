library(ggplot2)
library(dplyr)

source("src/performance_metrics.R") # Carrega as funções de métricas

# Main function
main <- function() {
    cat("🚀 R-Performance-Metrics Dashboard\n")
    cat("👨‍💻 Created by Gabriel Demetrios Lafis\n\n")
    
    # Sample data
    set.seed(123) # Para reprodutibilidade
    data <- data.frame(
        id = 1:100,
        value1 = rnorm(100, mean = 50, sd = 10),
        value2 = rnorm(100, mean = 55, sd = 12)
    )
    
    # Calculate performance metrics
    mean_value1 <- calculate_mean(data$value1)
    sd_value2 <- calculate_sd(data$value2)
    correlation_values <- calculate_correlation(data$value1, data$value2)
    
    cat(paste0("Média de Value1: ", round(mean_value1, 2), "\n"))
    cat(paste0("Desvio Padrão de Value2: ", round(sd_value2, 2), "\n"))
    cat(paste0("Correlação entre Value1 e Value2: ", round(correlation_values, 2), "\n"))
    
    # Create plot
    plot <- ggplot(data, aes(x = value1, y = value2)) +
        geom_point() +
        geom_smooth(method = "lm", se = FALSE, color = "blue") +
        labs(title = "R-Performance-Metrics: Value1 vs Value2", 
             subtitle = "Análise de Correlação por Gabriel Demetrios Lafis",
             x = "Value 1", y = "Value 2") +
        theme_minimal()
    
    print(plot)
    cat("✅ Análise de desempenho completa!\n")
}

# Run main function
main()

