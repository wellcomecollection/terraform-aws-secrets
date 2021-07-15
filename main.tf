locals {
  # By default, Secrets Manager will "soft" delete secrets -- they're
  # no longer accessible to applications, but they can still be recovered.
  # This is useful if you delete a secret accidentally, but also
  # means the secret hangs around and you can't create a new secret
  # with the same ID immediately.
  #
  # See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#recovery_window_in_days
  recovery_window_in_days = var.deletion_mode == "IMMEDIATE" ? 0 : 30
}

resource "aws_secretsmanager_secret" "secret" {
  for_each = var.key_value_map

  name = each.key

  recovery_window_in_days = local.recovery_window_in_days
}

resource "aws_secretsmanager_secret_version" "secret" {
  for_each = var.key_value_map

  secret_id     = aws_secretsmanager_secret.secret[each.key].id
  secret_string = each.value
}
