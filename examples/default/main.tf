variable "cf_api_key" {}

variable "cf_email" {}

provider "cloudflare" {
  api_key = var.cf_api_key
  email   = var.cf_email
}

data "cloudflare_zones" "default" {
  filter {
    name = "meinit.nl"
  }
}

module "cloudflare_record" {
  source  = "../../"
  name    = "test"
  zone_id = lookup(data.cloudflare_zones.default.zones[0], "id")
  type    = "A"
  value   = "1.2.3.4"
}
