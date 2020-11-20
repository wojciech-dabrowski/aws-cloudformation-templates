param(
    [Parameter(Mandatory = $True)]
    [string]$s3BucketName,

    [Parameter(Mandatory = $True)]
    [string]$vpcId,

    [Parameter(Mandatory = $True)]
    [ValidateCount(2, 3)]
    [string[]]$publicSubnetsIds,

    [Parameter(Mandatory = $False)]
    [string]$stackName = "application-load-balancer"
)

$cfnSubnetsIds = $publicSubnetsIds -join ','

dotnet publish -c Release
dotnet lambda deploy-serverless `
    --configuration Release `
    --region eu-west-1 `
    --stack-name $stackName `
    --s3-bucket $s3BucketName `
    --s3-prefix application-load-balancer/ `
    --template application-load-balancer.yaml `
    --template-parameters "VpcId=$vpcId;PublicSubnets=$cfnSubnetsIds"