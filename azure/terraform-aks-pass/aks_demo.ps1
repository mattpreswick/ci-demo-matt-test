# Some useful info here https://www.hashicorp.com/blog/kubernetes-cluster-with-aks-and-terraform
##
$var = az ad sp create-for-rbac -n wiz-aks-demo-sp
$sp = $var |  convertfrom-json
$env:TF_VAR_password = $sp.password
$env:TF_VAR_appId = $sp.appId
$env:WIZ_ENV = "test"
if(-not $env:TF_VAR_k8s_connector_name) {$env:TF_VAR_k8s_connector_name = $(Read-Host "k8s_connector_name: ")}
if(-not $env:WIZ_CLIENT_ID) {$env:WIZ_CLIENT_ID = $(Read-Host "WIZ_CLIENT_ID: ")}
if(-not $env:WIZ_CLIENT_SECRET) {$env:WIZ_CLIENT_SECRET = $(Read-Host "WIZ_CLIENT_SECRET: ")}
#terraform init
#terraform plan
#terraform apply --auto-approve