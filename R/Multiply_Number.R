#' Multiply by a number.
#'
#' Node to take the incoming number, multiply by a specified number and return the product
#'
#' @param i Number.
#' @param n Number to multiply by
#' @return List.  Output a named list.  Element \code{success} is a boolean denoting if the function was successful.
#'     Element \code{output} contains the function result (a numeric in the case of a success) or an error message
#'     (in the case of a failure)
#'
#' @examples
#' \dontrun{
#' Multiply_Number(3, 5)
#' }
#'
#' @export
Multiply_Number <- function(i, n) {
  if (all(is.numeric(n), is.numeric(i))) {
    return(list(success = TRUE, output = i * n))
  } else {
    return(list(success = FALSE, output = 'Input must be numeric'))
  }
}

comment(Multiply_Number) <- '{"icon": "times", "parameters": [{"name": "i", "type": "nodeinput"},
                         {"name": "n", "type": "numeric", "min": 1, "max": 100, "value": 50, "step": 1}]}'

