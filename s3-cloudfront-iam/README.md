# Notes

## For creating a new client
- Create a new folder under clients
- Copy the **.hcl** and **.tfvars** file from already existing directory
- Change the key in **.hcl** file to match the client name
- Stay at the root directory
- Run the following command
```bash
terraform init --backend-config clients/client/client.hcl -reconfigure
terraform apply --var-file clients/client/client.tfvars
``` 
