# spring-cognito
- url do cognito https://cognito-idp.{regiao}.amazonaws.com/{grupo do usuario criado}/.well-known/jwks.json validar as chaves
- para pegar o token https://testfabricio.auth.us-east-2.amazoncognito.com/oauth2/token, precisa cadastrar um dominio
- dentro do cognito precisa cadastrar um resource server com os scopes que a app vai utilizar (scop e assim nome_resourcer_server/scope)
```
test/read

requisição:
curl --location 'https://testfabricio.auth.us-east-2.amazoncognito.com/oauth2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Authorization: Basic MnEyaTNyN2NpanZhNzhjNnJ2YjI2am1hZDg6NXRlbG01a2RrYnI3Yzc0ZGJ2MW1iaHIxN3VqdGJmbzZkdHFtZ2VwNWZxOGlmdG1zamls' \
--header 'Cookie: XSRF-TOKEN=b89f1777-7e42-4244-94b2-6c8cfe1b089e' \
--data-urlencode 'grant_type=client_credentials' \
--data-urlencode 'scope=test/read'
```
- pendente montar um terraform ja para deixar pronto