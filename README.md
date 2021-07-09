# terraform-aws-secrets

This module is for creating secrets in AWS Secrets Manager.
It allows us to treat Secrets Manager as a key-value store for secrets:

```hcl2
module "secrets" {
  source = "github.com/wellcomecollection/terraform-aws-secrets?ref=v1.0.0"

  key_value_map = {
    "username" = "wellcome"
    "password" = "correct horse battery staple"
  }
}
```

Secrets Manager itself distinguishes between a secret and a *version* of a secret, but that's a distinction we don't really care about -- this module means we can ignore that distinction.
