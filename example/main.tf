


module "scep" {
  source = "git::https://git@github.com/ucopacme/terraform-aws-pca-scep-connector.git"

  certificate_authority_arn = "cert arn"
  connector_type            = "MICROSOFT_INTUNE"
  intune = {
    azure_application_id = "azure app id"
    domain               = "example.com"

  }
  tags = {
    Environment = "dev"
    Project     = "PKI"
    Name        = "PKI"
  }
}

# This will now work because 'connector_endpoint' is defined inside the module
output "scep_endpoint" {
  value = module.scep.connector_endpoint
}


#####

module "scep_general" {
  source = "git::https://git@github.com/ucopacme/terraform-aws-pca-scep-connector.git"

  certificate_authority_arn = "cert arn"
  connector_type            = "GENERAL"

  tags = {
    Environment = "dev"
    Project     = "PKI"
    Name        = "PKI"
  }
}
