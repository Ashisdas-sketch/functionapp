module "module_rg" {
  source    = "../../Module/RG"
  rg_detail = var.rg_details
}
module "module_stg" {
  depends_on = [module.module_rg]
  source     = "../../Module/STG"
  stg_detail = var.stg_details
}
module "module_sp" {
  depends_on = [module.module_rg]
  source     = "../../Module/serviceplan"
  sp_detail  = var.sp_details
}
module "module_fa" {
  depends_on = [module.module_rg, module.module_stg, module.module_sp]
  source     = "../../Module/FUNCTIONAPP"
  fa_detail  = var.fa_details
  stg_key    = module.module_stg.storage_account_key
  spid_key   = module.module_sp.sp_id
}
