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
  stopifnot("`sites` must be a character" = is.character(sites))
  stopifnot("`sites` must be a vector." = is.vector(sites))
  site_list <- as.list(sites)
  names(site_list) <- sites
  return(site_list)
}

#' Pull Site Data from the WQ Portal
#'
#' @param site_list A list of WQP site IDs
#' @param data_profile The type of data to pull. Default is physical/chemical.
#' @param progress_bar T/F. Do you want to display a progress bar? Helpful if you
#' expect the pull to take a long time. Default = T.
#'
#' @return A list of WQP data frames for input site IDs
#' @export
#'
#' @examples
#' site_list <- as.list(c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02"))
#' site_dfs <- grab_wq_data(site_list)
grab_wq_data <- function(site_list, data_profile = "resultPhysChem", progress_bar = TRUE){
  site_dfs <- site_list |>
    purrr::map(\(x) dataRetrieval::readWQPdata(siteid = x,
                                               dataProfile = data_profile),
               .progress = progress_bar)
  return(site_dfs)
}


#' Pull all GRYN sites into a list
#'
#' @return a list of GRYN monitored WQP data frames
#' @export
#'
#' @examples
#' gryn_site_dfs <- grab_gryn_data()
grab_gryn_data <- function(){
  gryn_site_list <- generate_gryn_sites()
  gryn_site_dfs <- grab_wq_data(site_list)
  return(gryn_site_dfs)
}

#' Selects relevant fields from WQP pull
#'
#' @param site a WQP resultPhysChem data frame
#'
#' @return A data frame with only relevant columns remaining
#' @export
#'
#' @examples
#' MDR1 <- dataRetrieval::readWQPdata(siteid = "11NPSWRD_WQX-YELL_MDR",
#' dataProfile = "resultPhysChem")
#' MDR1 <- select_fields(MDR1)
select_fields <- function(site) {
  site |>
    dplyr::select(LaboratoryName)
}


#' Selects relevant fields from each data frame in WQP pull list
#'
#' @param site_list the list of data frames pulled from WQP
#'
#' @return updated site_list of data frames
#' @export
#'
#' @examples
#' site_list <- grab_gryn_data()
#' site_list <- select_fields_site_list(site_list)
select_fields_site_list <- function(site_list){
  site_list |>
    purrr::map(\(x) select_fields(site = x))
}

