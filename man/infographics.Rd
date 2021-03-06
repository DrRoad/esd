\name{InfoGraphics}
\alias{wheel}
\alias{wheel.station}
\alias{wheel.spell}
\alias{diagram}
\alias{diagram.dsensemble}
\alias{diagram.station}
\alias{seasevol}
\alias{seasevol.station}
\alias{vis}
\alias{vis.station}
\alias{diagram}
\alias{cumugram}
\alias{climvar}
\title{InfoGraphics.}
\alias{colscal}
\alias{prob}
\alias{balls}
\alias{graph}
\alias{graph.dsensemble}
\alias{graph.zoo}
\alias{graph.list}
\alias{qq.test}
\description{
  Wheel

  Risk

  prob - boxes with forseen outcomes - area proportional to probability

  conf - confidence intervals and uncertainty - clouds...

  vis

  diagram

  cumugram
  
  prob
  
  graph
  
  \code{balls} draws 3D ball symbols.
}
\usage{
vis(x,...)
vis.station(x,new=FALSE,col=NULL,n=NULL,main=NULL,log.precip=TRUE,...)
diagram(x,...)
diagram.dsensemble(x,it=0,...)
diagram.station(x,...)
wheel(x,...)
wheel.station(x,y=NULL,new=TRUE,lwd=2,col=NULL,type=NULL,bg="grey90",verbose=FALSE,...)
wheel.spell(x,y=NULL,new=TRUE,lwd=2,col=NULL,verbose=FALSE,...)
cumugram(x,it==NULL,start='-01-01',prog=FALSE,verbose=FALSE,FUN='mean',...)
climvar(x,FUN='sd',plot=TRUE,...)
colscal(n=30,col="bwr",alpha=NULL,test=FALSE)
seasevol(x,...)
seasevol.station(x,it=NULL,nv=25,...)
prob(x,...) 
prob.default(x,...)
prob.station(x,y=NULL,is=1,...)
prob.station.precip(x,y=NULL,is=1,threshold=1,...)
graph(x,...)
graph.default(x,img=NULL,pch='fancy',it=NULL,col=rgb(0.5,0.5,0.5,0.5),lwd=5,
                          xlim=NULL,ylim=NULL,new=TRUE,col.obs='black',...)
graph.dsensemble(x,img=NULL,pch='fancy',it=0,col=rgb(1,0.7,0.7,0.1),
                 lwd=5,xlim=NULL,ylim=NULL,add=FALSE,new=TRUE,ensmean=FALSE,col.obs='black')
graph.list(x,img=NULL,pch='fancy',it=0,
           col=c(rgb(1,1,0.5,0.05),rgb(1,0.5,0.5,0.05),rgb(0.5,1,0.5,0.05)),
           lwd=5,xlim=NULL,ylim=NULL,add=FALSE,new=TRUE,ensmean=FALSE,col.obs='black')
graph.zoo(x,img=NULL,pch='fancy',it=NULL,col=rgb(1,0.7,0.7,0.1),
          lwd=5,xlim=NULL,ylim=NULL,xlab='',ylab='',add=FALSE,new=TRUE,ensmean=FALSE,col.obs='black')
balls(x,y=NULL,col=NULL,cex.max=2,n=20)
qq.test(x,...)
qp.test.station(x,...)
}
\arguments{
 \item{x}{a data object}
 }
\value{A field object}

\seealso{
  \code{\link{map}}, \code{\link{plot.station}}, \code{\link{hist.spell}}  
}

\author{R.E. Benestad and A.  Mezghanil}
\examples{
data(bjornholt)
wheel(bjornholt)

z <- spell(bjornholt,threshold=1)
wheel(z)

}
\keyword{utilities}
