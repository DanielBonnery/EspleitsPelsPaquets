#' Creates the pdf manual by calling R2pdf
#'
#' @details
#' Creates a pdf file in \code{path}.
#' @param path: the root folder of the source package.
#' @param package_name: the package name.
#' @return nothing
build_manual<-function(path=getwd(),package_name=basename(path)){
  try(file.remove(file.path(path,paste0(package_name,".pdf"))))
  try(system(paste(shQuote(file.path(R.home("bin"),"R")),"CMD","Rd2pdf",
                shQuote(path),"--output=",file.path(path,paste0(package_name,".pdf")))))}
