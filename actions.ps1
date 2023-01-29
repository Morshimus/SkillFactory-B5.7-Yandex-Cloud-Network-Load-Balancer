Set-alias tf terraform
function init {
    Param ( 
     [Parameter(Mandatory=$false, Position=0)]
     [switch]$reconfigure,
     [Parameter(Mandatory=$false, Position=0)]
     [switch]$upgrade 
     )

    $path = (Get-Location).path -replace "\\", "\\"
    $state = Get-Content  "$path\\..\\Skillfactory-B5.3.7-lemp-terraform-yc\\S3_BUCKET\\terraform.tfstate"
    $table = $state | ConvertFrom-Json
    
    $S3_NAME = $table.outputs.bucket_name.value
    $S3_SECRET_KEY = $table.outputs.secret_key.value
    $S3_ACCESS_KEY = $table.outputs.access_key.value
    
    if($reconfigure){
    terraform init -reconfigure `
    --backend-config=bucket=$($S3_NAME) `
    --backend-config=secret_key=$($S3_SECRET_KEY) `
    --backend-config=access_key=$($S3_ACCESS_KEY)
    }elseif($upgrade){
    terraform init -upgrade `
    --backend-config=bucket=$($S3_NAME) `
    --backend-config=secret_key=$($S3_SECRET_KEY) `
    --backend-config=access_key=$($S3_ACCESS_KEY)
    }else{
    terraform init `
    --backend-config=bucket=$($S3_NAME) `
    --backend-config=secret_key=$($S3_SECRET_KEY) `
    --backend-config=access_key=$($S3_ACCESS_KEY)
    }
}

function apply {
    param (
        [Parameter(Mandatory=$false, Position=0)]
        [switch]$withoutApprov 
    )
    
    if($withoutApprov){
     terraform apply `
     -var-file="input.tfvars" 
    }else{
     terraform apply `
     -var-file="input.tfvars" `
     -auto-approve       
    }
}

function destroy {
    param (
        [Parameter(Mandatory=$false, Position=0)]
        [switch]$withoutApprov 
    )
    
    if($withoutApprov){
     terraform destroy `
     -var-file="input.tfvars" 
    }else{
     terraform destroy `
     -var-file="input.tfvars" `
     -auto-approve       
    }
}

function plan {
    param (
        [Parameter(Mandatory=$false, Position=0)]
        [switch]$out 
    )
    
    if($out){
     terraform plan `
     -var-file="input.tfvars" `
     -out="/plantf"
    }else{
     terraform plan `
     -var-file="input.tfvars"        
    }
}

function rebuild {    
    destroy ; if($?) {Wait-Event -Timeout 5; apply}
}