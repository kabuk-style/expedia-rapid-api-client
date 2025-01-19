# ExpediaRapid::GetCalendarAvailability200ResponseInnerDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date associated to the provided information. | [optional] |
| **available** | **Boolean** | True if the property is available on the date. | [optional] |
| **checkin** | **String** | Enumeration indicating the capability of check-in on the date.  &#x60;CHECKIN_VALID&#x60;: The associated date is valid for check in.  &#x60;CHECKIN_INVALID&#x60;: Generic or Unknown reason for being not being a valid day for check in.  &#x60;CHECKIN_INVALID_DUE_TO_BEING_IN_PAST&#x60;: The associated date is not valid for check in due to being in the past.  &#x60;CHECKIN_INVALID_DUE_TO_MIN_PRIOR_NOTIFICATION&#x60;:  The associated date is not valid for check in because checking in on this date would not meet the owner&#39;s minimum prior notification requirements.  &#x60;CHECKIN_INVALID_DUE_TO_MAX_FUTURE_BOOKING&#x60;: The associated date is not valid for check in because it is too far in the future.  &#x60;CHECKIN_INVALID_DUE_TO_NOT_AVAILABLE&#x60;: The associated date is not valid for check in because it is not available (ie. the date is already reserved).  &#x60;CHECKIN_INVALID_DUE_TO_NON_CHANGEOVER_DAY_OF_WEEK&#x60;: The associated date is not valid for check in because it falls on a day of the week that check in is prohibited.  &#x60;CHECKIN_INVALID_DUE_TO_CHANGEOVER_EXCLUSION&#x60;: The associated date is not valid for check in because check in was prohibited on that specific date.  &#x60;CHECKIN_INVALID_DUE_TO_MIN_STAY_NOT_ACHIEVABLE&#x60;: The associated date is not valid for check in because checking in on this date does not satisfy the minimum stay duration.  &#x60;CHECKIN_INVALID_DUE_TO_NO_VALID_CHECKOUT_WITHIN_CONSTRAINTS&#x60;: The associated date is not valid for check in because there is not an associated check out date that would allow the stay to satisfy stay constraints.  | [optional] |
| **checkout** | **String** | Enumeration indicating the capability of check-out on the date.  &#x60;CHECKOUT_VALID&#x60;: The associated date is valid for check out.  &#x60;CHECKOUT_INVALID&#x60;: The checkout validity value is invalid or unknown.  &#x60;CHECKOUT_INVALID_DUE_TO_NON_CHANGEOVER_DAY_OF_WEEK&#x60;: The associated date is not valid for check out because it falls on a day of the week that check out is prohibited.  &#x60;CHECKOUT_INVALID_DUE_TO_CHANGEOVER_EXCLUSION&#x60;: The associated date is not valid for check out because check out was prohibited on that specific date.  | [optional] |
| **stay_constraints** | [**GetCalendarAvailability200ResponseInnerDaysInnerStayConstraints**](GetCalendarAvailability200ResponseInnerDaysInnerStayConstraints.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetCalendarAvailability200ResponseInnerDaysInner.new(
  date: null,
  available: null,
  checkin: CHECKIN_VALID,
  checkout: CHECKOUT_VALID,
  stay_constraints: null
)
```

