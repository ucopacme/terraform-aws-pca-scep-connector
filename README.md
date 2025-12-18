## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_awscc"></a> [awscc](#provider\_awscc) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [awscc_pcaconnectorscep_challenge.general](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/pcaconnectorscep_challenge) | resource |
| [awscc_pcaconnectorscep_connector.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/pcaconnectorscep_connector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_authority_arn"></a> [certificate\_authority\_arn](#input\_certificate\_authority\_arn) | ARN of the ACM Private CA | `string` | n/a | yes |
| <a name="input_connector_type"></a> [connector\_type](#input\_connector\_type) | MICROSOFT\_INTUNE or GENERAL | `string` | n/a | yes |
| <a name="input_intune"></a> [intune](#input\_intune) | MICROSOFT\_INTUNE Domain or Tenant\_id | <pre>object({<br/>    azure_application_id = string<br/>    tenant_id            = optional(string)<br/>    domain               = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Required Tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connector_arn"></a> [connector\_arn](#output\_connector\_arn) | SCEP connector ARN |
| <a name="output_connector_endpoint"></a> [connector\_endpoint](#output\_connector\_endpoint) | SCEP service endpoint |
