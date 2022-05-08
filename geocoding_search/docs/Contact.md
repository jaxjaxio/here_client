# HereGeocodingSearch::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Optional label for the contact string, such as \&quot;Customer Service\&quot; or \&quot;Pharmacy Fax\&quot;. | [optional] |
| **value** | **String** | Contact information, as specified by the contact type. |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | The list of place categories this contact refers to. | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::Contact.new(
  label: null,
  value: null,
  categories: null
)
```

