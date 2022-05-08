# HereGeocodingSearch::ExtendedAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ev_station** | [**EvChargingAttributes**](EvChargingAttributes.md) | EV charging pool information | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::ExtendedAttribute.new(
  ev_station: null
)
```

