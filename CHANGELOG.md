# CHANGELOG

## v1.4.0 - 2022-06-22

Add an optional `description` argument for describing secrets.

## v1.3.0 - 2021-08-02

Export a list of secret version ARNs.

## v1.2.0 - 2021-07-15

Fix a bug in v1.1.0.

## v1.1.0 - 2021-07-15

This adds a `deletion_mode` variable which is either `"SOFT"` or `"IMMEDIATE"`.
The default is `"SOFT"`, so the behaviour is unchanged from previous versions, but this lets you opt into immediate deletion of secrets.

## v1.0.1 - 2021-07-13

Add a required `aws` provider to the module.
This doesn't change any of the created resources, but it suppresses a warning about providers in newer versions of Terraform.

## v1.0.0 - 2021-07-09

Initial release.
This is based on the version of the module in [storage-service@8387cc1](https://github.com/wellcomecollection/storage-service/commit/8387cc16f6ab734bd9fff4668d815e7954586111).

## v0.1.0 - 2021-07-09

Initial tagged version.
