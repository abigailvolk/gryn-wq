#' Saves the GYRN historical and current WQ sites as a list.
#'
#' @param sites A vector of WQP of site IDs,
#' e.g. c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02"). Defaults to GRYN WQ sites.
#'
#' @return A list of the site names, where each element of the list is a site name.
#' @export
#'
#' @examples
#' generate_gryn_sites()
#' generate_gryn_sites(sites = c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02"))
generate_gryn_sites <- function(sites = c("11NPSWRD_WQX-GRTE_SNR01",
                                          "11NPSWRD_WQX-GRTE_SNR02",
                                          "11NPSWRD_WQX-YELL_MDR",
                                          "11NPSWRD_WQX-YELL_MD133.2T",
                                          "11NPSWRD_WQX-YELL_LM000.5M",
                                          "11NPSWRD_WQX-YELL_SB015.7A",
                                          "11NPSWRD_WQX-YELL_YS549.7M",
                                          "11NPSWRD_WQX-BICA_BHR2",
                                          "11NPSWRD_WQX-BICA_BHR1",
                                          "11NPSWRD_WQX-BICA_SHR1")) {
  as.list(sites)
}


#' Pull Site Data from the WQ Portal
#'
#' @param site_list A list of WQP site IDs
#' @param data_profile The type of data to pull. Default is physical/chemical.
#'
#' @return A list of WQP data frames for input site IDs
#' @export
#'
#' @examples
#' site_name_list <- as.list(c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02"))
#' site_df_list <- grab_wq_data(site_name_list)
grab_wq_data <- function(site_list, data_profile = "resultPhysChem"){
  data <- site_list |>
    purrr::map(\(x) dataRetrieval::readWQPdata(siteid = x,
                                               dataProfile = data_profile))
}
