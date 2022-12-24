#instance config
variable "instance_basic_config" {
  type = map
}

variable "instance_sg_config" {
  type = list
}

variable "instance_root_volume_config" {
  type = map
}