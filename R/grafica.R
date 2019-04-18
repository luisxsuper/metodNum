#' Grafica de Funcion
#' xD
#' @param fun Funcion
#' @param a Limite inicial, izquierdo
#' @param b Limite final, derecho
#' @return  \code{Grafiquito}.
#' @author \strong{Luis F. Maron}
#' @examples
#' ##-----Ejemplito------
#'  fn <- function(x) x**3-5*x
#'  grafica(fn, -5, 5)
#' @export
grafica <- function(fun,a,b) {
   curve(fun,a,b, col=c("#1A6878"))
   abline(h = 0, v = 0, col=c("#0F0E0EB6"), lty=2)
}
