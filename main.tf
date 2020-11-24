resource "cloudflare_record" "default" {
  zone_id  = var.zone_id
  name     = var.name
  type     = var.type
  value    = var.value
  data     = var.data
  ttl      = var.ttl
  priority = var.priority
  proxied  = var.proxied
}
