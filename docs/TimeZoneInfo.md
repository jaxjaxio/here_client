# HereClient::TimeZoneInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the time zone as defined in the [tz database](https://en.wikipedia.org/wiki/Tz_database). For example: \&quot;Europe/Berlin\&quot; |  |
| **utc_offset** | **String** | The UTC offset for this time zone at request time. For example \&quot;+02:00\&quot; |  |

## Example

```ruby
require 'here_client'

instance = HereClient::TimeZoneInfo.new(
  name: null,
  utc_offset: null
)
```

