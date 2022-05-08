# HereGeocodingSearch::OpenSearchBrowseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;BrowseResultItem&gt;**](BrowseResultItem.md) | The results are presented as a JSON list of candidates in ranked order (most-likely to least-likely) based on the matched location criteria. |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::OpenSearchBrowseResponse.new(
  items: null
)
```

