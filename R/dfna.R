#' dfna
#' @importFrom data.table data.table
#' @param df is data set(data.table,data.frame,tibble)
#' @return missing info.
#' @export
dfna <- function(df) {
    data.table(
        vars = names(df),
        obs = colSums(is.na(df)),
        ratio = colSums(is.na(df)) / nrow(df)
    )
}
