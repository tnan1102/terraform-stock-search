# cmn-vpc id : vpc-06b6e7a55ec729dbe
# cmn-pub-subnet-a id : subnet-025f86a7eea071c22
# cmn-pub-subnet-c id : subnet-054cb173a4fc81a07
#
# cmn_linux_sg id : sg-09ef8a1d976c5dc3b
# cmn_windows_sg : sg-0dba68a151d02fcb6
# cmn_web_sg : sg-0ca910ffa950b8cbd

#instance
stock-search_basic_config = {
  name = "stock-search"
  ami = "ami-0590f3a1742b17914" #Ubuntu 22.04 LTS
  instance_type = "t2.small"
  key_name = "default-key"
  subnet_id = "subnet-025f86a7eea071c22"
  managed_by = "terraform"
  start_time = "06" #15時
  stop_time = "07" #16時
}

stock-search_sg_config = [
  "sg-09ef8a1d976c5dc3b",
  "sg-0dba68a151d02fcb6"
]

stock-search_root_volume_config = {
  volume_type = "gp2"
  volume_size = 10
}