#' Save the GYRN historical and current WQ sites as a list
#'
#' @param sites Optional. A vector of WQP of site IDs,
#' e.g. c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02")
#' @param legacy_project Optional. A vector of legacy projects that legacy_sites are stored under.
#' @param legacy_sites Optional. A vector of legacy sites that are stored under legacy_project.
#'
#' @return List with names sites, legacy project, and legacy sites.
#' @export
#'
#' @examples
#' generate_gryn_sites()
#' generate_gryn_sites(sites = c("11NPSWRD_WQX-GRTE_SNR01", "11NPSWRD_WQX-GRTE_SNR02"),
#'  legacy_project = NA, legacy_sites = NA)
generate_gryn_sites <- function(sites = c("11NPSWRD_WQX-GRTE_SNR01",
                                          "11NPSWRD_WQX-GRTE_SNR02",
                                          "11NPSWRD_WQX-YELL_MDR",
                                          "11NPSWRD_WQX-YELL_LM000.5M",
                                          "11NPSWRD_WQX-YELL_SB015.7A",
                                          "11NPSWRD_WQX-YELL_YS549.7M",
                                          "11NPSWRD_WQX-BICA_BHR2",
                                          "11NPSWRD_WQX-BICA_BHR1",
                                          "11NPSWRD_WQX-BICA_SHR1"),
                                legacy_project = c("YELLWQ01_LEGACY"),
                                legacy_sites = c("11NPSWRD_WQX-YELL_MD133.2T",
                                                 "11NPSWRD_WQX-YELL_LM000.5M",
                                                 "11NPSWRD_WQX-YELL_SB015.7A",
                                                 "11NPSWRD_WQX-YELL_YS549.7M")){
  list(sites = sites, legacy_project = legacy_project, legacy_sites = legacy_sites)
}

