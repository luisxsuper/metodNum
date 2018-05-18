#' @export
punto.fi <- function(fx, x, tol) {
   #' @author Luis Fernando Maron I.
   i <- 0
   y <- 0
   y <- fx(x)
   i <- i + 1
   cat(sprintf("\n\tIteracion: %2d", i))
   cat(sprintf("\tRaiz: %f \n", y))
   while (abs(fx(y) - fx(x)) > tol) {
      i <- i + 1
      x <- y
      y <- fx(x)
      cat(sprintf("\n\tIteracion: %2d", i))
      cat(sprintf("\tRaiz: %f \n", y))
   }
   cat("\n\t\t\t\t\t-->By Luis Maron<--\n")
}
