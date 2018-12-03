# github-migrate
Shell script to migrate a repo to Github


# usage
```
./github-migrate.sh repos.txt
```


# notes
- repos.txt should have one repository per line
- read: https://developer.github.com/v3/guides/getting-started/#create-a-repository
- read: https://developer.github.com/v3/repos/#create
 
 
# example curl 
``` 
curl -i -H "Authorization: token <token>" --data '{"name":"helloworld","private":true,"team_id":1234}' https://api.github.com/orgs/myorg/repos 
```
