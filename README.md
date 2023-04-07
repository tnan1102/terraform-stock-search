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
