# HereGeocodingSearch::StructuredOpeningHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | String with a modified [iCalendar DATE-TIME](https://datatracker.ietf.org/doc/html/rfc5545#section-3.3.5) value. The date part is omitted, values starts with the time section maker \\\&quot;T\\\&quot;. Example: T132000 |  |
| **duration** | **String** | String with an [iCalendar DURATION](https://datatracker.ietf.org/doc/html/rfc5545#section-3.3.6) value. A closed day has the value PT00:00M |  |
| **recurrence** | **String** | String with a [RECUR](https://datatracker.ietf.org/doc/html/rfc5545#section-3.3.10) rule. Note that, in contrast to the RFC, the assignment operator is a colon &#x60;:&#x60; and not an equal sign &#x60;&#x3D;&#x60;. |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::StructuredOpeningHours.new(
  start: null,
  duration: null,
  recurrence: null
)
```

