
## Terraform action

Need to init terraform before any action:
``
  terraform init
``

To validate all services before apply:
```
  terraform fmt
  terraform validate
  terraform plan
```
To apply all the change:
``
  terraform apply
``

To cancel all services that have been applied:
``
  terraform destroy
``


## EC2 action

### Connect to Ubuntu EC2 instance:
```
  ssh -i <private-key>.pem <instance-user-name>@<instance-public-dns-name>
```