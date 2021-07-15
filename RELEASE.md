RELEASE_TYPE: minor

This adds a `deletion_mode` variable which is either `"SOFT"` or `"IMMEDIATE"`.
The default is `"SOFT"`, so the behaviour is unchanged from previous versions, but this lets you opt into immediate deletion of secrets.