using Amazon.Lambda.ApplicationLoadBalancerEvents;

namespace AwsLambdaDotnet.Functions
{
    public class FunctionClass
    {
        public ApplicationLoadBalancerResponse Invoke(ApplicationLoadBalancerRequest request)
            => new ApplicationLoadBalancerResponse
            {
                StatusCode = 200,
                Body = $"Hello {request.HttpMethod}: {request.Path}!"
            };
    }
}
