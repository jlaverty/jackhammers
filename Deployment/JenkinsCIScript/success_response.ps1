$uri = "https://api.GitHub.com/repos/jlaverty/jackhammers/statuses/{$env::GIT_COMMIT}?access_token=bd6c3b40780fcc93271ba6d8c69d305a9e472e7e";
$body = @{
"state" = "success"
"context" = "continuous-integration/jenkins"
"description" = "Jenkins"
"target_url" = "https://3d36289d.ngrok.io/job/ci_demo/{$env::BUILD_NUMBER}/console"
}
Invoke-RestMethod -Method 'Post' -Uri $uri -ContentType "application/json" -Body $body