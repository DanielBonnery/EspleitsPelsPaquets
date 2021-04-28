#' Buta le paquet sun github
#'
#' @details
#' Pushes the package [paquet] on the remote.
#' this is equivalent to 
#' git add DESCRIPTION
#' git add NAMESPACE
#' git add ./*.pdf"
#' git add inst/*
#' git add XXX #(for all files in ./man, ./R, ./demo, ./data that are not listed in files.to.exclude)
#' git ls-files | grep '\\.Rproj$' | xargs git rm --cached
#' git rm --cached .gitignore
#' git rm --cached .Rbuildignore
#' git rm --cached -r .git
#' git rm --cached -r .Rproj.user
#' git add -u
#' git commit -m 'No information'
#' git push origin master
#' 
#' @param files.to.exclude : a vector of character strings: list of files not to push
#' @return nothing
#' 
butalepaquet<-function(files.to.exclude=NULL){
  try(system("git add DESCRIPTION"))
  try(system("git add NAMESPACE"))
  listfilefromfolder<-function(...){
    unlist(lapply(list(...),function(x){sapply(list.files(x),function(y){paste0(x,"/",y)})}))
  }
  try(system("git add ./*.pdf"))
  try(system("git add inst/*"))
  files.to.push<-setdiff(listfilefromfolder("man","data","R","demo","inst/extdata"),files.to.exclude)
  sapply(files.to.push,function(x){try(system(paste0("git add ",x)))})
  
  #system("git rm --cached -r Raw")
  #system("git rm --cached -r demo")
  #system("git rm --cached Baseball.Rproj")
  try(system("git ls-files | grep '\\.Rproj$' | xargs git rm --cached"))
  try(system("git rm --cached .gitignore"))
  try(system("git rm --cached .Rbuildignore"))
  try(system("git rm --cached -r .git"))
  try(system("git rm --cached -r .Rproj.user"))
  
  try(system("git add -u"))
  system("git commit -m 'No information'")
  system("git push origin master")
}


