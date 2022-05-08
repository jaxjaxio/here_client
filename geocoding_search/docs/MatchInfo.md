# HereGeocodingSearch::MatchInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | First index of the matched range (0-based indexing, inclusive) |  |
| **_end** | **Integer** | One past the last index of the matched range (0-based indexing, exclusive); The difference between end and start gives the length of the term |  |
| **value** | **String** | Matched term in the input string |  |
| **qq** | **String** | The matched qualified query field type. If this is not returned, then matched value refers to the freetext query | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::MatchInfo.new(
  start: null,
  _end: null,
  value: null,
  qq: null
)
```

