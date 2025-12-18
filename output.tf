output "connector_arn" {
  value       = awscc_pcaconnectorscep_connector.this.id
  description = "SCEP connector ARN"
}

output "connector_endpoint" {
  value       = awscc_pcaconnectorscep_connector.this.endpoint
  description = "SCEP service endpoint"
}

