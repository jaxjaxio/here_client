# HereClient::Phoneme

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The actual phonetic transcription in the NT-SAMPA format. |  |
| **language** | **String** | The [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) language code. | [optional] |
| **preferred** | **Boolean** | Whether or not it is the preferred phoneme. | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::Phoneme.new(
  value: null,
  language: null,
  preferred: null
)
```

