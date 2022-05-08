# HereGeocodingSearch::Range

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | first index of the matched range (0-based indexing, inclusive) |  |
| **_end** | **Integer** | one past the last index of the matched range (0-based indexing, exclusive); The difference between end and start gives the length of the term |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::Range.new(
  start: null,
  _end: null
)
```

