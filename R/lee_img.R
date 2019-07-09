#' Lee data Imgenes
#' xD
#' @param dirr Directorio
#' @param canal Canal de imagen "red" , "green", "blue"
#' @return  \code{Data Science}.
#' @author \strong{Luis F. Maron}
#' @examples
#' ##-----Ejemplito------
#'   data <- carga_data("E:/LuisxM/Desktop/idc", "red")
#' @export

carga_data <- function(dirr, canal){
   library(EBImage)
   ### Luis Fernando Maron ####
   filtro <- function(img){
      img   <- channel(img, canal)
      return(as.numeric(img))
   }
   setwd(dirr)
   d <- paste(dirr,"/",dir(),sep = "")
   for (i in 0:1) {
      setwd(d[i+1])
      dirr <-  dir(d[i+1])
      imagenes = lapply(dirr, readImage)
      imagenes_f = lapply(imagenes, filtro)
      imagenes_matrix <- do.call(cbind, lapply(imagenes, as.numeric))
      imagenes_matrix_f <- do.call(cbind, lapply(imagenes_f, as.numeric))
      data <- data.frame(imagenes_matrix)
      data_f <- data.frame(imagenes_matrix_f)
      z <- lapply(data, summary)
      z_f <- lapply(data_f, summary)
      zz <- do.call("rbind", lapply(z, as.numeric))
      zz_f <- do.call("rbind", lapply(z_f, as.numeric))
      data_train <- data.frame(zz,zz_f, "cancer" = i)
      name <- c("min","x1st_qu", "median", "mean", "x3rd_qu" ,"max")
      names(data_train)<- c(name, paste0(name, "2"),"cancer")
      if(i==0 )data_train2 <- data_train
   }
   data_train2 <- rbind(data_train2,data_train)
   cat("\n\t Leendo By LFMI\n")
   return(data_train2)
}
