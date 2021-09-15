# AWS cli or BOTO
```
aws resourcegroupstaggingapi get-resources --resource-type-filters states
OR
response = client.get_resources( ResourceTypeFilters=[ 'states', ])
response_resource_mapping_list=response['ResourceTagMappingList'] #is the relevant list


``` 
states_json is the json that is coming back.  
We need to take that json/response and massage it into a terraform vars file that looks like:  

```
step_functions_list = [{"name" = "integration-freddie-mac-lpa4-submit-assessment-prod", "arn" = "arn:aws:states:us-east-1:123123123:integration-freddie-mac-lpa4-submit-assessment-prod", "failureThreshold" = "1", "owner" = "Integration"}]

```
If the tags are missing we need to populate them with the default values of:  
```
failureThreshold = 1
owner = Platform
```



