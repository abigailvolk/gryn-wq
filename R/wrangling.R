wrangle_sample_number <- function(site){
  site |>
    dplyr::mutate(Year = lubridate::year(ActivityStartDate)) |>
    dplyr::filter(ActivityTypeCode == "Field Msr/Obs" |
                    ActivityTypeCode == "Sample-Routine") |>
    dplyr::group_by(Year,
                    ActivityTypeCode,
                    CharacteristicName.MethodSpec,
                    ResultSampleFractionText) |>
    dplyr::summarize(`Number of Samples` = dplyr::n())
}
