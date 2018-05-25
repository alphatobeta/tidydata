#' pkg_help
#' @importFrom magrittr %>%
#' @importFrom data.table data.table := tstrsplit
#' @importFrom xml2 read_html
#' @importFrom rvest html_nodes html_text
#' @importFrom tibble as_tibble
#' @param pkg, package name
#' @return tibble
#' @export pkg_help

pkg_help <- function(pkg) {
    dt <- paste0(.Library, "/", pkg, "/html/00Index.html") %>%
        read_html() %>%
        html_nodes("tr") %>%
        html_text() %>%
        data.table()
    names(dt) <- "usage"
    dt[, c("usage", "description") := tstrsplit(usage, "\r\n")] %>%
    as_tibble() %>%
    return()
}