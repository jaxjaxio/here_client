# HereGeocodingSearch::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier number for an associated category. For example: \&quot;900-9300-0000\&quot; |  |
| **name** | **String** | Name of the place category in the result item language. | [optional] |
| **primary** | **Boolean** | Whether or not it is a primary category. This field is visible only when the value is &#39;true&#39;. | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::Category.new(
  id: null,
  name: null,
  primary: null
)
```

