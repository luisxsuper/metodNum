#' @export
newton.rap <- function (fx, dfx, x, tol) {
   #' @author Luis Fernando MARON I.
   y <- 0
   i <- 0
   while (abs(y - x) > tol) {
      i <- i + 1
      y <- x
      x <- x - fx(x) / dfx(x)
      cat(sprintf("\n\tIteracion: %2d", i))
      cat(sprintf("\tRaiz: %f \n", x))
   }
   cat("\n\t\t\t\t\t-->By Luis Maron<--\n")
}
