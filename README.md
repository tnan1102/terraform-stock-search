### 概要
* 株式分析用サーバを作成するtfファイル

### 利用方法
```
# clone
git clone https://{user}:{pass}@github.com/tnan1102/terraform-stock-search.git
cd selenium-tutorial

# 認証情報が登録されていることを確認
aws configure list --profile terraform

# 初回 & moduleを追加する度に必要
terraform init

#差分確認
AWS_PROFILE=terraform terraform plan -var-file=tfvars/terraform.tfvars

# 適用
AWS_PROFILE=terraform terraform apply -var-file=tfvars/terraform.tfvars

# 削除するとき
AWS_PROFILE=terraform terraform destroy -var-file=tfvars/terraform.tfvars

```
### 設定内容
* Ubuntuインスタンス作成
* 自動起動・停止設定(起動は土曜9時　停止は毎日0,6,12,18時)
* python,selenium,Chromeドライバ インストール
* 株検索プログラムclone
* cron設定

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

