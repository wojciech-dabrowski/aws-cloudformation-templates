param(
    [Parameter(Mandatory = $True)]
    [string]$s3BucketName,

    [Parameter(Mandatory = $False)]
    [string]$stackName = "aws-lambda-dotnet"
)

dotnet publish -c Release
dotnet lambda deploy-serverless `
    --configuration Release `
    --region eu-west-1 `
    --stack-name $stackName `
    --s3-bucket $s3BucketName `
    --s3-prefix AwsLambdaDotnet.Functions/ `
    --template serverless.yaml