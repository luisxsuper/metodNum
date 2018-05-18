\name{secante}
\alias{secante}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Método de la Secante
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
secante(fx, x0, x1, tol)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fx}{ Funcion
%%     ~~Describe \code{fx} here~~
}
  \item{x0}{ Punto inicial
%%     ~~Describe \code{x0} here~~
}
  \item{x1}{ Punto Final
%%     ~~Describe \code{x1} here~~
}
  \item{tol}{ Tolerancia
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
##---- Ejemplito xD ----
 .fx=function(x) 4*sin(x)-exp(x)
 secante(.fx,x0 = 0,x1 = 1,tol = 10^-5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
