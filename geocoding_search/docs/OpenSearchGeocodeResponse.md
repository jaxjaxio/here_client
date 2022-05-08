# HereGeocodingSearch::OpenSearchGeocodeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;GeocodeResultItem&gt;**](GeocodeResultItem.md) | The results are presented as a JSON list of candidates in ranked order (most-likely to least-likely) based on the matched location criteria. |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::OpenSearchGeocodeResponse.new(
  items: null
)
```

