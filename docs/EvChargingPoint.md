# HereClient::EvChargingPoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_connectors** | **Integer** | Number of physical connectors in the connectors group | [optional] |
| **charge_mode** | **String** | Charge mode of the connectors group. For more information, check the [IEC-61851-1](https://en.wikipedia.org/w/index.php?title&#x3D;Charging_station&amp;oldid&#x3D;1013010605#IEC-61851-1_Charging_Modes) standard. | [optional] |
| **volts_range** | **String** | Voltage provided by the connectors group | [optional] |
| **phases** | **Integer** | Number of phases provided by the connectors group | [optional] |
| **amps_range** | **String** | Amperage provided by the connectors group | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::EvChargingPoint.new(
  number_of_connectors: null,
  charge_mode: null,
  volts_range: 100-120V AC,
  phases: null,
  amps_range: 12A-80A
)
```

