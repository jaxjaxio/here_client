# HereClient::FieldScore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **Float** | Indicates how good the result country name or [ISO 3166-1 alpha-3] country code matches to the freeform or qualified input. | [optional] |
| **country_code** | **Float** | Indicates how good the result [ISO 3166-1 alpha-3] country code matches to the freeform or qualified input. | [optional] |
| **state** | **Float** | Indicates how good the result state name matches to the freeform or qualified input. | [optional] |
| **state_code** | **Float** | Indicates how good the result state code matches to the freeform or qualified input. | [optional] |
| **county** | **Float** | Indicates how good the result county name matches to the freeform or qualified input. | [optional] |
| **county_code** | **Float** | Indicates how good the result county code matches to the freeform or qualified input. | [optional] |
| **city** | **Float** | Indicates how good the result city name matches to the freeform or qualified input. | [optional] |
| **district** | **Float** | Indicates how good the result district name matches to the freeform or qualified input. | [optional] |
| **subdistrict** | **Float** | Indicates how good the result sub-district name matches to the freeform or qualified input. | [optional] |
| **streets** | **Array&lt;Float&gt;** | Indicates how good the result street names match to the freeform or qualified input. If the input contains multiple street names, the field score is calculated and returned for each of them individually. | [optional] |
| **block** | **Float** | Indicates how good the result block name matches to the freeform or qualified input. | [optional] |
| **subblock** | **Float** | Indicates how good the result sub-block name matches to the freeform or qualified input. | [optional] |
| **house_number** | **Float** | Indicates how good the result house number matches to the freeform or qualified input. It may happen, that the house number, which one is looking for, is not yet in the map data. For such cases, the /geocode returns the nearest known house number on the same street. This represents the numeric difference between the requested and the returned house numbers. | [optional] |
| **postal_code** | **Float** | Indicates how good the result postal code matches to the freeform or qualified input. | [optional] |
| **building** | **Float** | Indicates how good the result building name matches to the freeform or qualified input. | [optional] |
| **unit** | **Float** | Indicates how good the result unit (such as a micro point address) matches to the freeform or qualified input. | [optional] |
| **place_name** | **Float** | Indicates how good the result place name matches to the freeform or qualified input. | [optional] |
| **ontology_name** | **Float** | Indicates how good the result ontology name matches to the freeform or qualified input. | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::FieldScore.new(
  country: null,
  country_code: null,
  state: null,
  state_code: null,
  county: null,
  county_code: null,
  city: null,
  district: null,
  subdistrict: null,
  streets: null,
  block: null,
  subblock: null,
  house_number: null,
  postal_code: null,
  building: null,
  unit: null,
  place_name: null,
  ontology_name: null
)
```

