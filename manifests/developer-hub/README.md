# Developer Hub custom theming
**Disclaimer:**_Version 1.4 of Developer Hub got used for this demo, which is already a bit dated.
If you are going to use it on a newer version, the configuration could look slightly different, 
but you can reach out when you're stuck._

## File
* **01_change_theme.yaml**:   
The app config of Developer Hub to change the theme towards a Hogwards theme, which aligns better 
with our Harry Potter talk branding.
* **01_backstage-rhtap-values.yaml**:  
Same content as the one above, but this one can be used to apply the Hogwards theme via GitOps 
(used by ArgoCD in our demo environment).

## Theme
Applying the theme should result in the following layout:
![The Hogwards theme applied on Developer Hub](images/hogwards_theme.png "Hogwards Theme for Developer Hub")

  
  
**Pay attention:** when you take our file, do a manual merge of the app and techdocs configuration
or do a full copy-paste, but then validate the secrets, tokens and URLs in the configuration, 
as they will not match with your cluster.


## Debug database
* connect to pod
* psql -U postgres
* \l to list databases
* \c backstage_plugin_catalog to connect to a database
* list tables:
```sql
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
  AND table_schema NOT IN ('pg_catalog', 'information_schema');
```