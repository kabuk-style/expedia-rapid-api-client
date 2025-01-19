# ExpediaRapid::CommitChangeRoomRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_reference_id** | **String** | Your optional identifier for the change being executed. Only unique per itinerary. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded.  | [optional] |
| **payments** | [**Array&lt;CommitChangeRequestPaymentsInner&gt;**](CommitChangeRequestPaymentsInner.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CommitChangeRoomRequestBody.new(
  change_reference_id: null,
  payments: null
)
```

