# HereClient::ExtendedAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ev_station** | [**EvChargingAttributes**](EvChargingAttributes.md) | EV charging pool information | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::ExtendedAttribute.new(
  ev_station: null
)
```

