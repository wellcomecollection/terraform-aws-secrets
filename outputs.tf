output "arns" {
  value = [
    for key, _ in var.key_value_map :
    aws_secretsmanager_secret_version.secret[key].arn
  ]
}

output "versions" {
  value = [
    for key, _ in var.key_value_map :
    aws_secretsmanager_secret_version.secret[key].version_id
  ]
}
