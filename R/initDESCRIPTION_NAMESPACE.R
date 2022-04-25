#' Creates DESCRIPTION and NAMESPACE files for a package.
#' 
#' @param packagename a character string : the package name
#' @param destdir="." a character string: the filepath to the destination directory (where the DESCRIPTION and NAMESPACE files will be created)
#' @param packagepath="." character string: the filepath to where the package is currently
#' @param remotes=NULL a vector of character strings, listing the "remotes" to put in the DESCRIPTION file
#' @param depends=NULL a vector of character strings, listing the "depends" to put in the DESCRIPTION file
#' @param titlex="X" a character string:
#' @param authorx= a character string:  
#' @param datex a character string
#' @param maintainerx a character string
#' @param description=  a vector of character strings, listing the "depends" to put in the DESCRIPTION file
#' @param imports=NULL,  a vector of character strings, listing the "depends" to put in the DESCRIPTION file
#' @param suggests=NULL  a vector of character strings, listing the "depends" to put in the DESCRIPTION file
#' @param LazyLoad="yes" a character string, "yes" or "no" listing the "LazyLoad" to put in the DESCRIPTION file
#' @param LazyData="true" a character string, "yes" or "no", listing the "LazyData" to put in the DESCRIPTION file
#' @example 
#' initDESCRIPTION_NAMESPACE(packagename="EspleitsPelsPaquets",packagepath=".",destdir=".")
initDESCRIPTION_NAMESPACE<-function(packagename,
                                    destdir=".",
                                    packagepath=".",
                                    remotes=NULL,
                                    depends=NULL,
                                    titlex="X",
                                    authorx="D. Bonnery",
                                    datex=format(Sys.Date(),"%Y-%m-%d"),
                                    maintainerx="D. Bonnery  <daniel.bonnery@gmail.com>",
                                    description="Data",
                                    imports=NULL,
                                    suggests=NULL,
                                    LazyLoad="yes",
                                    LazyData="true"){
  
  try(unlink(file.path(file.path(destdir,packagepath),c("DESCRIPTION","NAMESPACE")),recursive=TRUE,force=TRUE))
  
  write( 
    paste0("Package: ",packagename,"
Type: Package
Title: ",titlex,"
Version: 1.0
Date: ",datex,"
Author: ",authorx,"
Maintainer: ",maintainerx,if(!is.null(imports)){paste0("
Imports: ",paste(imports,collapse=",\n\t"))}else{""},if(!is.null(imports)){paste0("
Suggests: ",paste(suggests,collapse=",\n\t"))}else{""},"
Description: ",description,if(!is.null(remotes)){paste0("
Remotes: ",paste(remotes,collapse=",\n\t"))}else{""},if(!is.null(depends)){paste0("
Depends: ",paste(depends,collapse=",\n\t"))}else{""},"
License: GPL (>= 2)
LazyLoad: ", LazyLoad, if(is.null(suggests){character(0)}else{paste0("
Suggests: ",paste(suggests,collapse=",\n\t"))},"
LazyData: ",LazyData),file.path(file.path(destdir,packagepath),'DESCRIPTION'))
  write('exportPattern("^[^\\\\.]")',file.path(file.path(destdir,packagepath),"NAMESPACE"))
}
