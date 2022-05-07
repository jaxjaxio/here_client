# HereClient::EvChargingAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connectors** | [**Array&lt;EvConnector&gt;**](EvConnector.md) | List of EV pool groups of connectors. Each group is defined by a common charging connector type and max power level. The numberOfConnectors field contains the number of connectors in the group. | [optional] |
| **total_number_of_connectors** | **Integer** | Total number of charging connectors in the EV charging pool | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::EvChargingAttributes.new(
  connectors: null,
  total_number_of_connectors: null
)
```

