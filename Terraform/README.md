taking the variable file generated from the resource tagging we want to pass the json into terraform as a variables file and dynamically create our alerts.
we are going to invoke terraform with:
```
terraform  plan -var-file=terraform.tfvars -input=false  -compact-warnings
```

