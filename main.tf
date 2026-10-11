resource "oci_data_safe_audit_policy" "data_safe_audit_policies" {
  for_each = var.data_safe_audit_policies

  audit_policy_id              = each.value.audit_policy_id
  compartment_id               = each.value.compartment_id
  defined_tags                 = each.value.defined_tags
  description                  = each.value.description
  display_name                 = each.value.display_name
  freeform_tags                = each.value.freeform_tags
  provision_trigger            = each.value.provision_trigger
  retrieve_from_target_trigger = each.value.retrieve_from_target_trigger

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

