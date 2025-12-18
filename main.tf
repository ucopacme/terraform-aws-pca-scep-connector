locals {
  is_intune = var.connector_type == "MICROSOFT_INTUNE"
}

############################
# SCEP Connector
############################
resource "awscc_pcaconnectorscep_connector" "this" {
  certificate_authority_arn = var.certificate_authority_arn

  mobile_device_management = local.is_intune ? {
    intune = {
      azure_application_id = var.intune.azure_application_id
      tenant_id            = try(var.intune.tenant_id, null)
      domain               = try(var.intune.domain, null)
    }
  } : null

  tags = var.tags
}

############################
# SCEP Challenge
# (GENERAL only)
############################
resource "awscc_pcaconnectorscep_challenge" "general" {
  count = local.is_intune ? 0 : 1

  connector_arn = awscc_pcaconnectorscep_connector.this.id
}
