#' Saves the GYRN historical and current WQ sites as a list.
#'
#' @param sites Optional. A vector of WQP of site IDs,
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

