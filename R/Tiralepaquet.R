#' Tira le paquet sun github
#'
#' @details
#' Pulls the package [paquet] on my github page.
#' @param paquet: the package name.
#' @param remoterepohostingplatform : character string. Indicates the remote repo hosting platform. "github.com" or "gitlab.com" for example
#' @param account : character string the command line will be 'paste0("git remote add origin git@",remoterepohostingplatform,":",gitaccount,"/",paquet,".git")
#' @param init : if TRUE,  git init is executed first 
#' @return nothing
Tiralepaquet<-function(paquet,
                       remoterepohostingplatform="github.com",
                       account,
                       gitaccount=paste0(remoterepohostingplatform,":",account),
                       init=FALSE){#http://r-pkgs.had.co.nz/git.html
  if(init){system(paste0("git remote add origin git@",remoterepohostingplatform,":",gitaccount,"/",paquet,".git"))}
  if(FALSE){system("ssh-add ~/.ssh/id_rsa &>/dev/null")}
  if(FALSE){system("git pull origin master")}
}
