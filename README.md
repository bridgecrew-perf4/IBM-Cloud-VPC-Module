# ibm-vpc-module
IBM Cloud Terraform VPC Module

## Variables
**name**: Name for the VPC that will be deployed. 
**classic_access**: Specify if you want to create a VPC that can connect to classic infrastructure resources. Default is `false`.
**address_prefix_management**: Indicates whether a default address prefix should be created automatically (auto) or manually (manual) for each zone in this VPC. Default is `auto`.
**resource_group**: Resource group for deployed assets.
**tags**: Tags to add to the VPC. 

## Module outputs
**id**: The VPC ID.  
**crn** The VPC CRN.  
**default_security_group**: Default security group ID for the VPC.  
**subnets**: Any subnets attached to the VPC.  
**cse_source_addresses**: A list of the cloud service endpoints that are associated with your VPC, including their source IP address and zone.
