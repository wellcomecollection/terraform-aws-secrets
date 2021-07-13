RELEASE_TYPE: patch

Add a required `aws` provider to the module.
This doesn't change any of the created resources, but it suppresses a warning about providers in newer versions of Terraform.