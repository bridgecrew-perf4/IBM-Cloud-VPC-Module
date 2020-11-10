output id {
  value = ibm_is_vpc.vpc.id
}

output crn {
  value = ibm_is_vpc.vpc.crn
}

output default_security_group {
  value = ibm_is_vpc.vpc.default_security_group
}

output subnets {
  value = ibm_is_vpc.vpc.subnets
}

output cse_source_addresses {
  value = ibm_is_vpc.vpc.cse_source_addresses
}

output address_prefixes {
  value = ibm_is_vpc.vpc.address_prefixes
}