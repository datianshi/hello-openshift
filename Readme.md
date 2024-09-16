
* oc apply -k operators
```
oc apply -f pipelines/tasks/git-version.yaml
```

* oc new-project demo-pipeline
* 
```
    oc create secret docker-registry quay-io \
        --docker-server=quay.io \
        --docker-username=<user_name> \
        --docker-password=<password> \
        --docker-email=<email>
    
```
* oc secret link pipeline quay-io
* Create ssh secret for github
* oc apply -k pipelines
* oc new-project demo-staging
* oc apply -k gitops/
