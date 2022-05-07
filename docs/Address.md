# HereClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Assembled address value built out of the address components according to the regional postal rules. These are the same rules for all endpoints. It may not include all the input terms. For example: \&quot;Schulstraße 4, 32547 Bad Oeynhausen, Germany\&quot; | [optional] |
| **country_code** | **String** | A three-letter country code. For example: \&quot;DEU\&quot; | [optional] |
| **country_name** | **String** | The localised country name. For example: \&quot;Deutschland\&quot; | [optional] |
| **state_code** | **String** | A state code or state name abbreviation – country specific. For example, in the United States it is the two letter state abbreviation: \&quot;CA\&quot; for California. | [optional] |
| **state** | **String** | The state division of a country. For example: \&quot;North Rhine-Westphalia\&quot; | [optional] |
| **county_code** | **String** | A county code or county name abbreviation – country specific. For example, for Italy it is the province abbreviation: \&quot;RM\&quot; for Rome. | [optional] |
| **county** | **String** | A division of a state; typically, a secondary-level administrative division of a country or equivalent. | [optional] |
| **city** | **String** | The name of the primary locality of the place. For example: \&quot;Bad Oyenhausen\&quot; | [optional] |
| **district** | **String** | A division of city; typically an administrative unit within a larger city or a customary name of a city&#39;s neighborhood. For example: \&quot;Bad Oyenhausen\&quot; | [optional] |
| **subdistrict** | **String** | A subdivision of a district. For example: \&quot;Minden-Lübbecke\&quot; | [optional] |
| **street** | **String** | Name of street. For example: \&quot;Schulstrasse\&quot; | [optional] |
| **block** | **String** | Name of block. | [optional] |
| **subblock** | **String** | Name of sub-block. | [optional] |
| **postal_code** | **String** | An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code. For example: \&quot;32547\&quot; | [optional] |
| **house_number** | **String** | House number. For example: \&quot;4\&quot; | [optional] |
| **building** | **String** | Name of building. | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::Address.new(
  label: null,
  country_code: null,
  country_name: null,
  state_code: null,
  state: null,
  county_code: null,
  county: null,
  city: null,
  district: null,
  subdistrict: null,
  street: null,
  block: null,
  subblock: null,
  postal_code: null,
  house_number: null,
  building: null
)
```

