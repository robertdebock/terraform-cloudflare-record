# variable "cf_email" {
#   description = "The email address to login to cloudflare."
#   type        = string
# }
# 
# variable "cf_token" {
#   description = "The API token to login to Cloudflare."
#   type        = string
# }
# 
variable "zone_id" {
  description = "(Required) The DNS zone ID to add the record to"
  type        = string
}

variable "name" {
  description = "(Required) The name of the record"
  type        = string
}

variable "type" {
  description = "(Required) The type of the record"
  type        = string
}

variable "value" {
  description = "(Optional) The (string) value of the record. Either this or data must be specified"
  type        = string
}

variable "data" {
  description = "(Optional) Map of attributes that constitute the record value. Primarily used for LOC and SRV record types. Either this or value must be specified"
  type        = map(string)
  default     = null
}

variable "ttl" {
  description = "(Optional) The TTL of the record (automatic: '1')"
  type        = number
  default     = 1
}

variable "priority" {
  description = "(Optional) The priority of the record"
  type        = number
  default     = 0
}

variable "proxied" {
  description = "(Optional) Whether the record gets Cloudflare's origin protection; defaults to false."
  type        = bool
  default     = false
}
