#' ->>>Extra<<<-
#' @aliases Z: Generando un Meme
#' @description Genera Un meme xD, requiere paquete \code{"png"}.
#' @examples
#' # ☺
#'  require(png)
#'  meme()
#' @export
meme <- function(){
   link<-"http://i2.kym-cdn.com/photos/images/original/000/208/140/1322357772581.png"
   main<-"Tu cara cuando ves"
   sub<-"un meme hecho en R"
   con <- url(link, open = 'rb')
   rawpng <- readBin(con, what = 'raw', n = 50000)
   close(con)

   img <- png::readPNG(rawpng)

   old_par <- par(no.readonly = TRUE)
   on.exit(par(old_par))
   par(xpd = NA, mgp = c(0, 0, 0), oma = c(0, 0, 0, 0), ann = F)

   plot.new()
   plot.window(0:1, 0:1)

   usr <- par("usr")
   rasterImage(img, usr[1], usr[3], usr[2], usr[4])

   text(.5, 1.05,  main, cex = 2, col = "#000000", pos = 3)
   text(.5, -.05,   sub, cex = 2, col = "#000000", pos = 1)
}
