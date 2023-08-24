
module "components" {
  source          = "git::https://github.com/reach2nabi/tf-module-basic-test.git"

  for_each        = var.components
  security_group  = var.security_group
  zone_id         = var.zone_id
  instance_type   = each.value["instance_type"]
  name            = each.value["name"]

}