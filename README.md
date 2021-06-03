# ldap-mock

Really simple basic Docker image for mock of [LDAP server](https://tools.ietf.org/html/rfc4511).

Use it to mock an LDAP server for authenticating applications. This should not be used in production environment, it is just for test purpose, nothing more.

It uses [glauth](https://github.com/glauth/glauth).


## Run

```shell
docker run -d -p 389:389 rickardl/ldap-mock
```

## Test

```shell
ldapsearch -LLL -H ldap://localhost:389 -D cn=service,ou=services,dc=telia,dc=io -w password -x -bdc=telia,dc=io
```

## Configuration

The server configuration is available as a simple properties file named ´config.cfg´

## LDAP users

The user configuration is available as a simple properties file named ´config.cfg´, but this image has been pre-configured with the following users.

Every user is located under the telia.io domain

| **Username** | **Password** | **Group**  |
| :----------: | :----------: | :--------: |
| developer    | password     | developers |
| customer     | password     | users      |
| service      | password     | services   |

## License

MIT
