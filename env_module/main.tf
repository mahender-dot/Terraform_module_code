module "mkrg" {
  source = "../Basecode_module/resource_group"
  msrg   = var.mrg

}

module "mkvnet" {
  source     = "../Basecode_module/vnet"
  msvnet     = var.mvnet
  depends_on = [module.mkrg]
}

module "mkip" {
  source     = "../Basecode_module/public_ip"
  mspip      = var.mpip
  depends_on = [module.mkvnet]
}

module "mksub" {
  source     = "../Basecode_module/subnet"
  mssub      = var.msub
  depends_on = [module.mkvnet]
}

module "mknic" {
  source     = "../Basecode_module/nic"
  msnic      = var.mnic
  datas      = var.msub
  dpip       = var.mpip
  depends_on = [module.mksub, module.mkip]
}

module "mkvm" {
  source     = "../Basecode_module/vm"
  msvm       = var.mvm
  dnic       = var.mnic
  depends_on = [module.mknic]
}

