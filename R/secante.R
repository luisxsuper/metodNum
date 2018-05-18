#' @export
secante <- function (fx, x0, x1, tol) {
   #' @author Luis Fernando MARON I.
   y <- x0
   z <- x1
   i <- 0
   while (abs(z - y) > tol) {
      i <- i + 1
      x <- (z * fx(y) - y * fx(z)) / (fx(y) - fx(z))
      y <- z
      z <- x
      cat(sprintf("\n\tIteracion: %2d", i))
      cat(sprintf("\tRaiz: %.8f \n", x))
   }
   cat("\n\t\t\t\t\t-->By Luis Maron<--\n")
}

