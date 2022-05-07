# HereClient::Parsing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_name** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Place name matches | [optional] |
| **country** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Country matches | [optional] |
| **state** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | State matches | [optional] |
| **county** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | County matches | [optional] |
| **city** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | City matches | [optional] |
| **district** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | District matches | [optional] |
| **subdistrict** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Subdistrict matches | [optional] |
| **street** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Street matches | [optional] |
| **block** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Block matches | [optional] |
| **subblock** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Subblock matches | [optional] |
| **house_number** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | HouseNumber matches | [optional] |
| **postal_code** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | PostalCode matches | [optional] |
| **building** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Building matches | [optional] |
| **secondary_units** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | secondaryUnits matches | [optional] |
| **ontology_name** | [**Array&lt;MatchInfo&gt;**](MatchInfo.md) | Ontology name matches | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::Parsing.new(
  place_name: null,
  country: null,
  state: null,
  county: null,
  city: null,
  district: null,
  subdistrict: null,
  street: null,
  block: null,
  subblock: null,
  house_number: null,
  postal_code: null,
  building: null,
  secondary_units: null,
  ontology_name: null
)
```

