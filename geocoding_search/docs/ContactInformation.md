# HereGeocodingSearch::ContactInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |
| **mobile** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |
| **toll_free** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |
| **fax** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |
| **www** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |
| **email** | [**Array&lt;Contact&gt;**](Contact.md) |  | [optional] |

## Example

```ruby
require 'here_geocoding_search'

instance = HereGeocodingSearch::ContactInformation.new(
  phone: null,
  mobile: null,
  toll_free: null,
  fax: null,
  www: null,
  email: null
)
```

