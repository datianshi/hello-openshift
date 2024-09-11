

```
oc apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-version/0.1/git-version.yaml
```

* oc new-project demo-pipeline
* 
```
    oc create secret docker-registry quay-io \
        --docker-server=quay.io \
        --docker-username=<user_name> \
        --docker-password=<password> \
        --docker-email=<email>
    oc secret link default quay-io
```
* Create ssh secret for github
* oc apply -k pipelines
* oc apply -k gitops/overlay/staging
* oc new-project demo-staging
