# ExpediaRapid::EssentialInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**GetReservation200ResponseInnerEssentialInformationContact**](GetReservation200ResponseInnerEssentialInformationContact.md) |  | [optional] |
| **essentials** | [**Array&lt;GetReservation200ResponseInnerEssentialInformationEssentialsInner&gt;**](GetReservation200ResponseInnerEssentialInformationEssentialsInner.md) |  | [optional] |
| **update_available_date** | **String** | The date and time when new essential information is available for retrieval, in extended ISO 8601 format, with ±hh:mm timezone offset. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::EssentialInformation.new(
  contact: null,
  essentials: null,
  update_available_date: 2022-08-12T11:59:00-08:00
)
```

