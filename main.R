# Performance Metrics Dashboard
# Author: Gabriel Demetrios Lafis

library(ggplot2)
library(dplyr)

# Main function
main <- function() {
    cat("🚀 Performance Metrics Dashboard\n")
    cat("👨‍💻 Created by Gabriel Demetrios Lafis\n\n")
    
    # Sample data
    data <- data.frame(
        x = 1:10,
        y = rnorm(10)
    )
    
    # Create plot
    plot <- ggplot(data, aes(x = x, y = y)) +
        geom_line() +
        labs(title = "Performance Metrics Dashboard", 
             subtitle = "Created by Gabriel Demetrios Lafis")
    
    print(plot)
    cat("✅ Analysis complete!\n")
}

# Run main function
main()
