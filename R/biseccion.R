#' @export
biseccion <- function(fx, a, b, tol) {
   #' @author Luis Fernando Maron I.
   curve(fx,a,b,type="l",col="cyan4", ylab = "y")
   abline(h=0,col= c("#333333C7"), lty = 2)
   if (fx(a) * fx(b) > 0)
      cat("Por favor intente con otro intervalo [a,b]\n")
   else{
      x <- 0
      i <- 0
      while (abs(b - a) > tol) {
         i <- i + 1
         x <- (a + b) / 2
         if (fx(a) * fx(x) < 0)
            b <- x
         else
            a <- x
         cat(sprintf("\n\tIteracion: %2d", i))
         cat(sprintf("\tRaiz: %f   Error: %f\n", x, abs(b - a)))
      }
   }
   cat("\n\t\t\t\t\t-->By Luis Maron<--\n")
}
