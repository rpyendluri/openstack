variable "openstack_user_name" {
    description = "The username for the Tenant."
    default  = "pbuditi"
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant."
    default  = "fintech"
}

variable "openstack_password" {
    description = "The password for the Tenant."
    default  = "password"
}

variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
    default  = "http://192.168.0.140:5000/v2.0"
}

variable "openstack_keypair" {
    description = "The keypair to be used."
    default  = "pradeep"
}

variable "tenant_network" {
    description = "The network to be used."
    default  = "provider"
}

variable "image" {
  default = "Ubuntu 16.04 LTS (Xenial Xerus)"
}

variable "flavor" {
  default = "m1.small"
}


