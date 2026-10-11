variable "data_safe_audit_policies" {
  description = <<EOT
Map of data_safe_audit_policies, attributes below
Required:
    - audit_policy_id
Optional:
    - compartment_id
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - provision_trigger
    - retrieve_from_target_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    audit_policy_id              = string
    compartment_id               = optional(string)
    defined_tags                 = optional(map(string))
    description                  = optional(string)
    display_name                 = optional(string)
    freeform_tags                = optional(map(string))
    provision_trigger            = optional(number)
    retrieve_from_target_trigger = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

