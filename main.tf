
module "components" {
    source          = "git::https://github.com/reach2nabi/tf-module-vpc.git"

    for_each        = var.vpc
    cidr            = var["cidr"]

}