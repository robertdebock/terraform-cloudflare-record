output "id" {
  description = "The record ID"
  value       = cloudflare_record.default.id
}

output "hostname" {
  description = "The FQDN of the record"
  value       = cloudflare_record.default.hostname
}

output "proxiable" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = cloudflare_record.default.proxiable
}

output "created_on" {
  description = "The RFC3339 timestamp of when the record was created"
  value       = cloudflare_record.default.created_on
}

output "modified_on" {
  description = "The RFC3339 timestamp of when the record was last modified"
  value       = cloudflare_record.default.modified_on
}

output "metadata" {
  description = "A key-value map of string metadata Cloudflare associates with the record"
  value       = cloudflare_record.default.metadata
}
