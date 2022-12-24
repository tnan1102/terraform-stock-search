### 概要
* 株式分析用サーバを作成するtfファイル

### 利用方法
1. aws configure list --profile terraform

2. terraform init ※moduleを追加する度に必要

3. AWS_PROFILE=terraform terraform plan -var-file=tfvars/terraform.tfvars

4. AWS_PROFILE=terraform terraform apply -var-file=tfvars/terraform.tfvars

5. AWS_PROFILE=terraform terraform destroy -var-file=tfvars/terraform.tfvars

### 設定内容
* Ubuntuインスタンス作成
* 自動起動・停止設定(起動は土曜9時　停止は毎日0,6,12,18時)
* python,selenium,Chromeドライバ インストール
* 株検索プログラムclone
* cron設定

### 設定コマンド
```
sudo apt install -y wget
sudo apt install -y git
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
google-chrome
pyton3 --version
sudo apt install python3
python3 --version
pip3 install selenium
sudo apt install python3-pip
pip3 install selenium
pip3 install chromedriver-binary==108.0.5359.71.0
```

### cron設定
```
# 設定
crontab -e

# 以下を追加
0 0 * * 6 python3 {実行ファイル}

# 実体確認
sudo cat /var/spool/cron/crontabs/ubuntu
```

### 参考

