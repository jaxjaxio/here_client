# HereClient::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | The HTTP status code |  |
| **title** | **String** | Human-readable error description |  |
| **code** | **String** | Error code | [optional] |
| **cause** | **String** | Human-readable explanation for the error | [optional] |
| **action** | **String** | Human-readable action for the user | [optional] |
| **correlation_id** | **String** | Auto-generated ID univocally identifying this request |  |
| **request_id** | **String** | Request identifier provided by the user |  |

## Example

```ruby
require 'here_client'

instance = HereClient::ErrorResponse.new(
  status: null,
  title: null,
  code: null,
  cause: null,
  action: null,
  correlation_id: null,
  request_id: null
)
```

