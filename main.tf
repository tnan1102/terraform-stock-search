provider "aws" {
  region     = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-stock-search"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    encrypt        = true
#    dynamodb_table = "cmn_ci_tfstate_lock"
  }
}

module "instance" {
  source = "./modules/instance"

  #instance config
  instance_basic_config = var.stock-search_basic_config
  instance_sg_config = var.stock-search_sg_config
  instance_root_volume_config = var.stock-search_root_volume_config
}

output "public_ip" {
  value = module.instance.public_ip
}