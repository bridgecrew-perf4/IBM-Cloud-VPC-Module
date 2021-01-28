# ibm-vpc-module
IBM Cloud Terraform VPC Module

## Usage
If you need to include an IBM Cloud VPC in your deployment you can use the following code:

```
data "ibm_resource_group" "group" {
  name = var.resource_group
}

module vpc {
  source         = "git::https://github.com/cloud-design-dev/ibm-vpc-module.git"
  name           = var.name
  resource_group = data.ibm_resource_group.group.id
  tags           = ["project:${var.name}", "region:${var.region}"]
}
```

## Variables
 - **name**: Name for the VPC that will be deployed.  
 - **classic_access**: Specify if you want to create a VPC that can connect to classic infrastructure resources. Default is `false`.  
 - **address_prefix_management**: Indicates whether a default address prefix should be created automatically (auto) or manually (manual) for each zone in this VPC. Default is `auto`.  
 - **resource_group**: Resource group ID for deployed assets.  
 - **tags**: Tags to add to the VPC.  

## Module outputs
 - **id**: The VPC ID.  
 - **crn** The VPC CRN.  
 - **default_security_group**: Default security group ID for the VPC.
 - **default_network_acl**: Default ACL for VPC
 - **subnets**: Any subnets attached to the VPC.  
 - **cse_source_addresses**: A list of the cloud service endpoints that are associated with your VPC, including their source IP address and zone.
