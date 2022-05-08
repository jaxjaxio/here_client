# HereGeocodingSearch::EvConnector

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supplier_name** | **String** | The EV charge point operator | [optional] |
| **connector_type** | [**EvNameId**](EvNameId.md) | Id and name element pair representing the connector type in the EV pool group. For more information on the current connector types, see the [connectorTypes](https://developer.here.com/documentation/charging-stations/dev_guide/topics/resource-type-connector-types.html) values in the HERE EV Charge Points API. | [optional] |
| **power_feed_type** | [**EvNameId**](EvNameId.md) | Details on type of power feed with respect to [SAE J1772](https://en.wikipedia.org/wiki/SAE_J1772#Charging) standard. | [optional] |
| **max_power_level** | **Float** | Maximum charge power (in kilowatt) of connectors in connectors group. | [optional] |
| **charging_point** | [**EvChargingPoint**](EvChargingPoint.md) | Connectors group additional charging information | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::EvConnector.new(
  supplier_name: null,
  connector_type: null,
  power_feed_type: null,
  max_power_level: null,
  charging_point: null
)
```

