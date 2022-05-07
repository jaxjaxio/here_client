# HereClient::MapView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **west** | **Float** | Longitude of the western-side of the box. For example: \&quot;8.80068\&quot; |  |
| **south** | **Float** | Latitude of the southern-side of the box. For example: \&quot;52.19333\&quot; |  |
| **east** | **Float** | Longitude of the eastern-side of the box. For example: \&quot;8.8167\&quot; |  |
| **north** | **Float** | Latitude of the northern-side of the box. For example: \&quot;52.19555\&quot; |  |

## Example

```ruby
require 'here_client'

instance = HereClient::MapView.new(
  west: null,
  south: null,
  east: null,
  north: null
)
```

