variable "vm_name" {
  type        = string
  description = "The name of the VM"
}

variable "comment" {
  type        = string
  description = "A comment for the VM"
  default     = ""
}

variable "cluster_id" {
  type        = string
  description = "The ID of the cluster where the VM will be created"
}

variable "template_name" {
  type        = string
  description = "The name of the template to use for the VM"
}

variable "cpu_cores" {
  type        = number
  description = "The number of CPU cores for the VM"
  default     = 2
}

variable "cpu_sockets" {
  type        = number
  description = "The number of CPU sockets for the VM"
  default     = 1
}

variable "cpu_threads" {
  type        = number
  description = "The number of CPU threads for the VM"
  default     = 2
}

variable "memory" {
  type        = number
  description = "The amount of memory for the VM in GiB"
  default     = 4
}

variable "maximum_memory" {
  type        = number
  description = "The maximum amount of memory for the VM in GiB"
  default     = 4
}

variable "type" {
  type        = string
  description = "The type of the VM"
  default     = "server"
}

variable "placement_policy_affinity" {
  type        = string
  description = "Value of the placement policy affinity"
  default     = "migratable"
}

variable "placement_policy_host_ids" {
  type        = list(string)
  description = "List of host IDs for the placement policy"
  default     = []
}

variable "stop_behavior" {
  type        = string
  description = "The stop behavior of the VM"
  default     = "stop"
}

variable "os_type" {
  type        = string
  description = "The OS type of the VM"
  default     = "ubuntu_14_04"
}

# Variables for the VM initialization playbook

variable "storage_domain" {
  type        = string
  description = "The name of the storage domain where the VM will be created"
}

variable "hostname" {
  type        = string
  description = "The hostname of the VM"
}

# Network related variables

variable "network" {
  type        = string
  description = "The name of the network where the VM will be connected"
  default     = "ovirtmgmt"
}

variable "network_profile" {
  type        = string
  description = "The name of the network profile for the VM"
  default     = "ovirtmgmt"
}

variable "vnic_name" {
  type        = string
  description = "The name of the vNIC for the VM"
  default     = "nic1"
}

variable "dns" {
  type        = string
  description = "List of DNS servers for the VM"
}

variable "guest_nic_name" {
  type        = string
  description = "The name of the Guest NIC for the VM"
  default     = "ens3"
}

variable "ip" {
  type        = string
  description = "The IP address of the VM"
}

variable "netmask" {
  type        = string
  description = "The netmask of the VM"
}

variable "gateway" {
  type        = string
  description = "The gateway of the VM"
}