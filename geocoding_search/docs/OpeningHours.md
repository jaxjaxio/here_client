# HereGeocodingSearch::OpeningHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | The list of place categories, this set of opening hours refers to. | [optional] |
| **text** | **Array&lt;String&gt;** |  |  |
| **is_open** | **Boolean** |  | [optional] |
| **structured** | [**Array&lt;StructuredOpeningHours&gt;**](StructuredOpeningHours.md) | List of iCalender-based structured representations of opening hours |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::OpeningHours.new(
  categories: null,
  text: null,
  is_open: null,
  structured: null
)
```

