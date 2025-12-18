variable "certificate_authority_arn" {
  type        = string
  description = "ARN of the ACM Private CA"
}

variable "connector_type" {
  type        = string
  description = "MICROSOFT_INTUNE or GENERAL"

  validation {
    condition     = contains(["MICROSOFT_INTUNE", "GENERAL"], var.connector_type)
    error_message = "connector_type must be MICROSOFT_INTUNE or GENERAL."
  }
}

variable "intune" {
  type = object({
    azure_application_id = string
    tenant_id            = optional(string)
    domain               = optional(string)
  })
  default = null
  description = "MICROSOFT_INTUNE DOMAIN OR TENANT_ID"
}

variable "tags" {
  type    = map(string)
  default = {}
  description = "REQUIRED TAGS"
}
