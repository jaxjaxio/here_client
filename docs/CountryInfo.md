# HereClient::CountryInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alpha2** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code | [optional] |
| **alpha3** | **String** | [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::CountryInfo.new(
  alpha2: null,
  alpha3: null
)
```

