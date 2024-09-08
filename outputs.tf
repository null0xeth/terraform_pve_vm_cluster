output "server_name" {
  value = flatten(values(module.servers)[*].name)
}

output "server_ipv4" {
  value = flatten(values(module.servers)[*].ipv4)
}

output "raw_map" {
  value = {
    for category, child in module.servers :
    category => zipmap(flatten(child.name), (flatten(child.ipv4)))
  }
}
