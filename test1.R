# Define a function to perform a simple input transformation
transform_data <- function(data) {
  # Check if the input data is a data frame
  if (!is.data.frame(data)) {
    stop("Input data must be a data frame.")
  }
  
  # Create a new column "inverted_mpg" by calculating the inverse of "mpg"
  data$inverted_mpg <- 1 / data$mpg
  
  # Return the transformed data
  return(data)
}

# Example usage:
# Load the mtcars dataset
data(mtcars)

# Call the transform_data function with the mtcars dataset
transformed_data <- transform_data(mtcars)

# View the transformed dataset
print(transformed_data)
