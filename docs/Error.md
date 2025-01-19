# ExpediaRapid::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The error type. | [optional] |
| **message** | **String** | A human readable message giving details about this error. | [optional] |
| **fields** | [**Array&lt;GetPropertyContent400ResponseFieldsInner&gt;**](GetPropertyContent400ResponseFieldsInner.md) | Details about the specific fields that had an error. | [optional] |
| **errors** | [**Array&lt;GetPropertyContent400ResponseErrorsInner&gt;**](GetPropertyContent400ResponseErrorsInner.md) | An array of all the actual errors that occured. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Error.new(
  type: null,
  message: null,
  fields: null,
  errors: null
)
```

