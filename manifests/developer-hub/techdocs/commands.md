# Commands to work with the techdocs

# Generate documentation from base configuration
```shell
npx @techdocs/cli generate --no-docker --verbose
```
  
  
This can result in an error (e.g., on Mac). Then you could avoid Python library mismatches by using Docker:  

```shell
npx @techdocs/cli generate --verbose
```

  
* A sites folder will be created. This folder's content needs to be published to an S3 storage like Minio.    
_Within the bucket (backstage-bucket in my case), create a directory structure default/component/tech-docs-change-data-capture and add the content of the site's folder over there_
* Last, but not least, you'll need to add (via the spells menu item) the raw link to the catalog-info.yaml (or enable GitHub repo scanning).


# Git commands to configure repo
* git config user.name "Maarten Vandeperre"
* git config user.email "mvandepe@redhat.com"