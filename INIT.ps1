
$path = (Get-Location).path -replace "\\", "\\"
$state = Get-Content  "$path\\..\\Skillfactory-B5.3.7-lemp-terraform-yc\\S3_BUCKET\\terraform.tfstate"
$table = $state | ConvertFrom-Json

$S3_NAME = $table.outputs.bucket_name.value
$S3_SECRET_KEY = $table.outputs.secret_key.value
$S3_ACCESS_KEY = $table.outputs.access_key.value

terraform init `
--backend-config=bucket=$($S3_NAME) `
--backend-config=secret_key=$($S3_SECRET_KEY) `
--backend-config=access_key=$($S3_ACCESS_KEY)