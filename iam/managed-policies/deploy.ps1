param(
    [Parameter(Mandatory = $False)]
    [string]$stackName = "managed-policies"
)

aws cloudformation deploy --template-file managed-policies.yaml --stack-name $stackName --capabilities CAPABILITY_IAM