\name{biseccion}
\alias{biseccion}
\encoding{UTF-8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Método de Bisección
%%  ~~function to do ... ~~
}
\description{La funcion definida como fx, el intervalo [a, b], siendo el punto inicial dado por a y el punto final por b, y el error por tol.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{ \strong{biseccion}(fx, a, b, tol)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fx}{ Funcion.
%%     ~~Describe \code{fx} here~~
}
  \item{a}{ Aproximacion inicial de la funcion, limite izquierdo.
%%     ~~Describe \code{a} here~~
}
  \item{b}{ Aproximacion inicial de la funcion, limite derecho.
%%     ~~Describe \code{b} here~~
}
  \item{tol}{ Tolerancia.
%%     ~~Describe \code{tol} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{ \eqn{Luis MARON}
%%  ~~who you are~~
}
\note{

%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#----Ejemplito pes xD ----
 .funcion <- function(x) x**3+3*x-9
 biseccion(.funcion,a = -5,b = 5,tol = 0.00001)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
