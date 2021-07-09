# terraform-aws-template

Terraform template module to help create more terraform modules.

## Usage

```hcl2

module "example_implementation" {
  source = "git::github.com/wellcomecollection/terraform-aws-template?ref=v1.0.0"
  example_variable = "example implementation"
}

```

## Outputs
- `output_1` - URL of the new queue
- `output_2` - ARN of the new queue
- `output_3` - Name of the new queue
