module "dev_tg" {
  source = "./module"
  #source = "../../"
  
  resource_group_name = module.resource_group.name
  region              = var.region
  connections         = [
    ibm_is_vpc.vpc1.resource_crn, 
    ibm_is_vpc.vpc2.resource_crn, 
    ibm_is_vpc.vpc3.resource_crn, 
  ]
}
