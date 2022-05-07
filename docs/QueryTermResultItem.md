# HereClient::QueryTermResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The term that will be suggested to the user. |  |
| **replaces** | **String** | The sub-string of the original query that is replaced by this Query Term. |  |
| **start** | **Integer** | The start index in codepoints (inclusive) of the text replaced in the original query. |  |
| **_end** | **Integer** | The end index in codepoints (exclusive) of the text replaced in the original query. |  |

## Example

```ruby
require 'here_client'

instance = HereClient::QueryTermResultItem.new(
  term: null,
  replaces: null,
  start: null,
  _end: null
)
```

