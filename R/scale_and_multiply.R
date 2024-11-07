#' Scale and Multiply
#' 
#' This function scales a numeric vector to the range `[0, 1]` and then multiplies each element by a specified multiplier.
#' It can be called by: scale_and_multiply(x, multiplier)
#'
#' @param x A numeric vector to be scaled and multiplied, we name it x, representing input values like f(x) = y
#' @param multiplier A numeric value by which to multiply the scaled vector, we name it directly as multiplier
#' @return A numeric vector with scaled and multiplied values.
#' @examples
#' scale_and_multiply(c(1, 2, 3, 4), 10)
#' scale_and_multiply(c(10, 20, 30), 0.5)
#' 
#' @export
scale_and_multiply <- function(x, multiplier) {
  # Ensure both inputs are numeric
  stopifnot(is.numeric(x), is.numeric(multiplier))
  
  # Scale the vector to a 0-1 range
  scaled_x <- (x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))
  
  # Multiply the scaled vector by the multiplier
  result <- scaled_x * multiplier
  return(result)
}


