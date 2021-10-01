#' initialise le paquet sun github
#'
#' @details
#' Pushes the package [paquet] on my github page.
#' @param paquet: the package name.
#' @param preset: a character string "githubperso" or "gitlabperso"
#' @return nothing
initialisalepaquet<-
  function(paquet,preset="githubperso"){
  if(preset=="githubperso"){
    Initialisalepaquet(paquet,remoterepohostingplatform = "github.com",account = "DanielBonnery")
  }
    
  if(preset=="gitlabpro"){
      Initialisalepaquet(paquet,
                         remoterepohostingplatform = "gitlab.com",
                         account = "dbb31",
                         user.name="Daniel Bonnery",
                         user.email="dbb31@cam.ac.uk")}
    
    
    if(preset=="gitlabproprivate"){
      Initialisalepaquet(paquet,
                         remoterepohostingplatform = "pine--is.grid.private.cam.ac.uk",
                         account = "dbb31",
                         user.name="Daniel Bonnery",
                         user.email="dbb31@cam.ac.uk")}
    }