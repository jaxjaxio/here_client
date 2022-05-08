# HereGeocodingSearch::AutosuggestQueryResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The localized display name of this result item. |  |
| **id** | **String** | The unique identifier for the result item. This ID can be used for a Look Up by ID search as well. | [optional] |
| **result_type** | **String** | WARNING: The resultType values &#39;intersection&#39; and &#39;postalCodePoint&#39; are in BETA state | [optional] |
| **href** | **String** | URL of the follow-up query | [optional] |
| **highlights** | [**TitleHighlighting**](TitleHighlighting.md) | Describes how the parts of the response element matched the input query | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::AutosuggestQueryResultItem.new(
  title: null,
  id: null,
  result_type: null,
  href: null,
  highlights: null
)
```

