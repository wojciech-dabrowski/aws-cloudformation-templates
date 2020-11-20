param(
    [Parameter(Mandatory = $False)]
    [string]$stackName = "sqs"
)

aws cloudformation deploy --template-file sqs.yaml --stack-name $stackName