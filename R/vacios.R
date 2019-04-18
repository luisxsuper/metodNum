#' Data Vacia missing
#' xD
#' @param data Data
#' @param por Porcentaje de decision
#' @param plot Muestra grafico
#' @return  \code{Data Science}.
#' @author \strong{Luis F. Maron}
#' @examples
#' ##-----Ejemplito------
#'  vaciosxD(data, 0.6, F)
#'  vaciosxD(data, 0.6, T)
#' @export
vaciosxD <- function(data, por, plot){
   library(ggplot2)
   t <- sort(sapply(data, function(x){sum(is.na(x)/length(x))}),decreasing = T)
   t <- t[t > por]
   if(length(t) == 0) return(cat("\n\t** LA DATA ESTA FULL xD ☺**"))
   e <-  (t)
   f <- row.names(data.frame(t))

   sort1 <- data.frame("variable"=f,e, "num"=1:length(t))
   m <- ggplot(sort1 , aes(num,e, col = variable))+ geom_point()+ ggtitle("Variables ordenadas datos faltantes %",subtitle = "☺LFMI") + geom_text(aes(label=variable),hjust=0, vjust=0) + geom_hline(yintercept = c(por,1), col = "cyan4");
   if (grafico == T) return(m) else return(f)
}
