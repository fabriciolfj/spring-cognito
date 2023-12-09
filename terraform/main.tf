resource "aws_cognito_user_pool" "pool" {
  name = "my-user-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name = "my-user-pool-client"

  user_pool_id = aws_cognito_user_pool.pool.id

  generate_secret     = true
  callback_urls       = ["https://www.example.com/callback"]
  allowed_oauth_flows = ["client_credentials"]

  supported_identity_providers = ["COGNITO"]
}

output "jwks_uri" {
  value = aws_cognito_user_pool.pool.endpoint
}

output "issuer" {
  value = "https://${aws_cognito_user_pool.pool.endpoint}"
}

output "authorization_endpoint" {
  value = "${aws_cognito_user_pool.pool.endpoint}/oauth2/authorize"
}

output "token_endpoint" {
  value = "${aws_cognito_user_pool.pool.endpoint}/oauth2/token"
}

output "client_id" {
  value = aws_cognito_user_pool_client.client.id
}

output "client_secret" {
  sensitive = true
  value = aws_cognito_user_pool_client.client.client_secret
}