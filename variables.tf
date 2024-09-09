variable "auth_bundle" {
  description = "Authentication config injected into the virtual machines"
  sensitive   = true
  type = object({
    username = optional(string)
    password = optional(string)
    ssh_keys = optional(list(string))
  })
}

variable "resource_tags" {
  description = "List of resource tags to be added to all created resources"
  type        = list(string)
  default     = ["terraform", "infrastructure"]
}

variable "cluster_spec" {
  description = "Contains the cluster topology and configuration variables passed to the cluster module."
  type = map(object({
    component_id   = optional(string)
    component_size = optional(number, 3)
    base_id        = optional(number, 300)
    base_name      = optional(string, "machine")

    config = object({
      cpu_cores = optional(number, 4)
      memory    = optional(number, 4096)

      disks = optional(map(object({
        datastore_id = optional(string)
        file_id      = optional(string)
        interface    = optional(string)
        size         = optional(number)
        ssd          = optional(bool)
      })))
    })
  }))
}

variable "cloud_init_id" {
  description = "Path to a cloud-init yaml file"
  type        = string
  default     = ""
}
