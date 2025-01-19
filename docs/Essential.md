# ExpediaRapid::Essential

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the essential item. | [optional] |
| **instructions** | **String** | The instructions for use of the essential item. | [optional] |
| **additional_info** | **Hash&lt;String, String&gt;** | A map of additional information that needs to be conveyed to customer. | [optional] |
| **images** | [**Array&lt;GetReservation200ResponseInnerEssentialInformationEssentialsInnerImagesInner&gt;**](GetReservation200ResponseInnerEssentialInformationEssentialsInnerImagesInner.md) | An array of images needed for the essential item. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Essential.new(
  name: access,
  instructions: Use the smart lock located at the side door for access.,
  additional_info: {&quot;access_type&quot;:&quot;Smart lock&quot;,&quot;access_code&quot;:&quot;12345&quot;},
  images: null
)
```

