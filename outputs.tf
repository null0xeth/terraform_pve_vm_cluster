output "server_name" {
  description = "Map with all server names of the resources we have created"
  value       = flatten(values(module.servers)[*].name)
}

output "server_ipv4" {
  description = "Map with all server ipv4 addresses of the resources we have created"
  value       = flatten(values(module.servers)[*].ipv4)
}

output "raw_map" {
  description = "Nested map containing `name => ipv4` pairs per VM type."
  value = {
    for category, child in module.servers :
    category => zipmap(flatten(child.name), (flatten(child.ipv4)))
  }
}
