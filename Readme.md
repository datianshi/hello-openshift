

```
oc apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-version/0.1/git-version.yaml
```

* Create ssh secret for github
* Create quay.io secret


```
oc create secret docker-registry quay-io \
    --docker-server=quay.io \
    --docker-username=<user_name> \
    --docker-password=<password> \
    --docker-email=<email>
oc secret link default quay-io    
```