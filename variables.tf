variable "vm_name" {
  description = "The name of the VM"
}

variable "comment" {
  description = "A comment for the VM"
  default     = ""
}

variable "cluster_id" {
  description = "The ID of the cluster where the VM will be created"
}

variable "template_name" {
  description = "The name of the template to use for the VM"
}

variable "cpu_cores" {
  description = "The number of CPU cores for the VM"
  default     = 2
}

variable "cpu_sockets" {
  description = "The number of CPU sockets for the VM"
  default     = 1
}

variable "cpu_threads" {
  description = "The number of CPU threads for the VM"
  default     = 2
}

variable "memory" {
  description = "The amount of memory for the VM in GiB"
  default     = 4
}

variable "maximum_memory" {
  description = "The maximum amount of memory for the VM in GiB"
  default     = 4
}

variable "type" {
  description = "The type of the VM"
  default     = "server"
}

variable "placement_policy_affinity" {
  description = "Value of the placement policy affinity"
  default     = "migratable"
}

variable "placement_policy_host_ids" {
  description = "List of host IDs for the placement policy"
  default     = []
}

variable "clone" {
  description = "Whether to clone the VM from the template or creat a stateless VM"
  default     = true
}

variable "stop_behavior" {
  description = "The stop behavior of the VM"
  default     = "stop"
}

variable "os_type" {
  description = "The OS type of the VM"
  default     = "ubuntu_14_04"
}