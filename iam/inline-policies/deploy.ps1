param(
    [Parameter(Mandatory = $False)]
    [string]$stackName = "inline-policies"
)

aws cloudformation deploy --template-file inline-policies.yaml --stack-name $stackName --capabilities CAPABILITY_IAM