#' df_na
#' @importFrom data.table data.table
#' @param df, data.table, data.frame or tibble
#' @return data.table
#' @export df_na

df_na <- function(df) {
    data.table(
        vars = names(df),
        na_obs = colSums(is.na(df)),
        ratio = colSums(is.na(df)) / nrow(df)
    )
}
