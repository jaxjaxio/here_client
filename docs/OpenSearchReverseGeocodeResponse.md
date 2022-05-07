# HereClient::OpenSearchReverseGeocodeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ReverseGeocodeResultItem&gt;**](ReverseGeocodeResultItem.md) | The results are presented as a JSON list of candidates in ranked order (most-likely to least-likely) based on the matched location criteria. |  |

## Example

```ruby
require 'here_client'

instance = HereClient::OpenSearchReverseGeocodeResponse.new(
  items: null
)
```

