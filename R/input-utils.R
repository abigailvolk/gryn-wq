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

