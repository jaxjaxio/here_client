# HereGeocodingSearch::SupplierReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supplier** | [**Supplier**](Supplier.md) | Information about the supplier of this reference. |  |
| **id** | **String** | Identifier of the place as provided by the supplier. |  |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::SupplierReference.new(
  supplier: null,
  id: null
)
```

