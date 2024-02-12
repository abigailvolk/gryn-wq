wrangle_sample_number <- function(site_list){
  site_list |>
    dplyr::group_by(ActivityTypeCode,
             CharacteristicName,
             ResultSampleFractionText) |>
    dplyr::summarize(n = dplyr::n())
}
