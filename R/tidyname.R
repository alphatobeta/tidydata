#' tidy data for OLS and so on.
#' @importFrom stringr str_detect str_split str_extract str_c
#' @param dta is data set(data.table,data.frame,tibble)
#' @return explain what is returned by this function.
#' @export
tidyname <- function(dta){
    for (i in seq(names(dta))) {
        if (str_detect(names(dta)[i], pattern = "\r\n.+[0-9]")) {
            name1 <- str_split(names(dta)[i],pattern = "\r")[[1]][1]
            name2 <- str_extract(names(dta)[i], pattern = "[0-9]{4}")
            names(dta)[i] <- str_c(name1,name2)
        }
    }
    return(dta)
}
