# HereClient::PhonemesSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_name** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the name of the place. | [optional] |
| **country_name** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the county name. | [optional] |
| **state** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the state name. | [optional] |
| **county** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the county name. | [optional] |
| **city** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the city name. | [optional] |
| **district** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the district name. | [optional] |
| **subdistrict** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the subdistrict name. | [optional] |
| **street** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the street name. | [optional] |
| **block** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the block. | [optional] |
| **subblock** | [**Array&lt;Phoneme&gt;**](Phoneme.md) | Phonemes for the sub-block. | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::PhonemesSection.new(
  place_name: null,
  country_name: null,
  state: null,
  county: null,
  city: null,
  district: null,
  subdistrict: null,
  street: null,
  block: null,
  subblock: null
)
```

