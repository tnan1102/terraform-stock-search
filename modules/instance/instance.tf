resource "aws_instance" "cmn-instance" {
  # basic config
  ami = lookup(var.instance_basic_config, "ami")
  instance_type = lookup(var.instance_basic_config, "instance_type")
  key_name = lookup(var.instance_basic_config, "key_name")

  # network config
  associate_public_ip_address = "true"
  subnet_id = lookup(var.instance_basic_config, "subnet_id")

  # security group
  vpc_security_group_ids = var.instance_sg_config

  # volume config
  root_block_device {
    volume_type = lookup(var.instance_root_volume_config, "volume_type")
    volume_size = lookup(var.instance_root_volume_config, "volume_size")
  }

  user_data = base64encode(<<-EOF
              #!/bin/bash
              apt-get update
              apt install -y wget git python3 python3-pip
              pip3 install selenium==4.1.0
              cd /tmp
              wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
              dpkg -i google-chrome-stable_current_amd64.deb
              apt-get install -yf
              pip3 install chromedriver-binary
              EOF
              )
  #実行に時間がかかるcat /var/log/cloud-init-output.logで実行ログを確認できる
              
  
  # tags
  tags = {
    Name = lookup(var.instance_basic_config, "name")
    managed_by = lookup(var.instance_basic_config, "managed_by")
  }
}

output "public_ip" {
  value = aws_instance.cmn-instance.public_ip
}