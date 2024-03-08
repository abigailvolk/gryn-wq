wrangle_sample_number <- function(site) {
  site |>
    dplyr::filter(ActivityTypeCode == "Field Msr/Obs" |
                    ActivityTypeCode == "Sample-Routine") |>
    dplyr::group_by(ActivityTypeCode,
                    `Characteristic Name`) |>
    dplyr::summarize(`Number of Samples` = dplyr::n(),
                     `Number of flags` = sum(!is.na(MeasureQualifierCode)))
}

wrangle_site_dfs <- function(site_dfs, gryn = FALSE){
  stopifnot("`site_dfs` must be a list" = is.list(site_dfs))
  wrangled_dfs <- site_dfs |>
    purrr::map(\(x) wrangle_sample_number(x))
  bound <- dplyr::bind_rows(wrangled_dfs, .id = "column_label")
  if (gryn == TRUE) {
    bound <- bound |>
      dplyr::mutate("column_label" =
                      stringr::str_remove_all(column_label, "11NPSWRD_WQX-"))
  }
  return(bound)
}
