

#' creates the .git initial folder on the machine
#'
#' @details
#' Running [Initialisalepaquet(paquet="XXX",
#' remoterepohostingplatform="github.com",
#'      account="Tata",
#'      user.name="Tata Tutu",
#'      user.email="TataTutu@toto.com")] 
#' is equivalent of executing in the working directory:
#' git init 
#' git confing user.name "Tata Tutu"
#' git confing user.email "Tata@gmail.com"
#' git init
#' git remote add origin git@github.com:Tata/XXX.git
#' 
#' @param paquet: the package name.
#' @param remoterepohostingplatform : character string. Indicates the remote repo hosting platform. "github.com" or "gitlab.com" for example
#' @param account : character string the command line will be 'paste0("git remote add origin git@",remoterepohostingplatform,":",account,"/",paquet,".git")
#' @param user.email : character string . if not NULL, and init=TRUE, system(paste0('git config  user.email "',user.email,'"')) 
#' @param user.name : character string . if not NULL, and init=TRUE, system(paste0('git config  user.name "',user.name,'"')  
#' @param gitaccount : by default paste0(remoterepohostingplatform,":",account)
#' @return nothing
#' 
Initialisalepaquet<-function(paquet,
                             remoterepohostingplatform="github.com",
                             account,
                             user.name=NULL,
                             user.email=NULL){
  
  system(paste0("git init"))
  if(!is.null(user.name)){system(paste0('git config  user.name "',user.name,'"'))}
  if(!is.null(user.email)){system(paste0('git config  user.name "',user.email,'"'))}
    system(paste0("git remote add origin git@",remoterepohostingplatform,":",account,"/",paquet,".git"))
}

