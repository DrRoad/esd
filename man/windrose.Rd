\name{windrose}
\alias{windrose}
\alias{TGW}
\alias{geostrophicwind}
\alias{geostrophicwind.station}
\alias{geostrophicwind.field}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Wind analysis
%%  ~~function to do ... ~~
}
\description{A function that plots windroses from station objects which
  contain both the zonal and meridional components. These are stored
  seperately as if they were two different station records. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TGW(triangle,f=1.25e-4,rho=1.25,verbose=FALSE)
geostrophicwind.station(x,f=1.25e-4,rho=1.25,verbose=FALSE,progressbar=TRUE)
geostrophicwind.field(x,f=1.25e-4,rho=1.25,verbose=FALSE,...)
windrose(x, saw = 10, max.scale = NULL, cols = c("grey90", "yellow", "green", "red", "blue", "darkgreen", "darkred", "magenta", "black"), param = c("u", "v"), simple = TRUE, verbose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{station object
%%     ~~Describe \code{x} here~~
}
  \item{thrshld}{Threshold for windspeed
%%     ~~Describe \code{thrshld} here~~
}
  \item{saw}{Directional resolution in degrees
%%     ~~Describe \code{saw} here~~
}
  \item{max.scale}{
%%     ~~Describe \code{max.scale} here~~
}
  \item{cols}{
%%     ~~Describe \code{cols} here~~
}
  \item{param}{Name of the variables representing zonal and meridional wind
%%     ~~Describe \code{param} here~~
}
  \item{simple}{Only plot the windrose, not an additional historgram for windspeed
%%     ~~Describe \code{simple} here~~
}
  \item{verbose}{
%%     ~~Describe \code{verbose} here~~
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
\author{R.E. Benestad
%%  ~~who you are~~
}
\note{Adapted from clim.pact
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{link{geostrophicwind}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
\dontrun{
slp <- station(param='slp',cntr='Denmark',src='ecad')
uv <- TGW(subset(slp,is=c(1,3,11)))
UV <- geostrophicwind(slp)
windrose(uv)
map(UV,FUN='q95')
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
