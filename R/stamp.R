
# This function adds a stamp in the history of x
# with 'sys.call', 'date()', and 'src (source)

history.stamp <-function(x=NULL,y=NULL,verbose=FALSE,...) UseMethod("history.stamp")

history.stamp.default <- function(x=NULL,y=NULL,verbose=FALSE) {
#  if (!is.null(attr(x,'source')))
#    src <- attr(x,'source') else
#    src <- "unknown source"
  si <- list(R.version=sessionInfo()$R.version$version.string,
             esd.version=paste(sessionInfo()$otherPkgs$esd$Package,
                               sessionInfo()$otherPkgs$esd$Version,sep="_"),
             platform=sessionInfo()$platform)
  if (is.null(x)) x <- 0
  if (!is.null(attr(x,'history'))) {
    history <- attr(x,'history')
    ## KMP 2017-11-30: Error when history attribute is not a list. 
    ## Temporary fix. But why isn't it always?
    if(!is.list(history)) {
      call <- c(history,sys.call(sys.parent(n = 1)))
      sessioninfo <- si
      timestamp <- date()
    } else {
      call <- c(unlist(history$call),sys.call(sys.parent(n = 1)))
      sessioninfo <- c(history$sessioninfo,si)
      timestamp <- c(unlist(history$timestamp),date())
    }
    newhistory <- list(call=call,timestamp=timestamp,
                       session=sessioninfo)
    if (verbose) print(newhistory)
  } else {
    newhistory <- list(call=sys.call(sys.parent(n = 1)),
                    timestamp=date(),
                    sessioninfo=si)
  }
  #print(sys.call(sys.parent(n = 1)))
  return(newhistory)
}



