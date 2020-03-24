# Sara Schema

Contains the `json-schema` that defines the data structure communications
between [SaraAlert](https://github.com/SaraAlert/SaraAlert) trusted and untrusted applications.

For more information on `json-schema` visit http://json-schema.org/

This repository also contains a Ruby gem which exposes the schema to
software for use in validation of sent or recieved data. The versions of this package track the version of the schema.

## Schema Modification Procedures

To modify the schema follow this general procedure.

1. Update the particular schema you need.
1. Write appropriate tests for the schema changes. For example if you've added a new data field, include a test to make sure the schema can validate it.
1. Update the version of the gem in `lib/sara-schema/version.rb` according to [semantic versioning](https://semver.org). Summary below.
1. Add the corresponding tag in git with a message explaining what changed.

### Semantic Version Summary

Given a version number MAJOR.MINOR.PATCH, increment the:

1. MAJOR version when you make incompatible API changes,
1. MINOR version when you add functionality in a backwards-compatible manner, and
1. PATCH version when you make backwards-compatible bug fixes.

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
