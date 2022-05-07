# HereClient::AutocompleteResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The unified display name of this result item. The result title is composed so that the customer application can use it to render the suggestions with highlighting. It is build in a unified way for all the countries starting from the country name and down to the address line. It is build out of the address components that are important for the end-user to recognize and eventually to choose a result and includes all the input terms. For example: \&quot;Germany, 32547, Bad Oeynhausen, Schulstraße 4\&quot; |  |
| **id** | **String** | The unique identifier for the result item. This ID can be used for a Look Up by ID search as well. | [optional] |
| **language** | **String** | The preferred language of address elements in the result. | [optional] |
| **political_view** | **String** | ISO3 country code of the item political view (default for international). This response element is populated when the politicalView parameter is set in the query | [optional] |
| **result_type** | **String** | WARNING: The resultType values &#39;intersection&#39; and &#39;postalCodePoint&#39; are in BETA state | [optional] |
| **house_number_type** | **String** |  | [optional] |
| **locality_type** | **String** |  | [optional] |
| **administrative_area_type** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) | Detailed address of the result item. |  |
| **distance** | **Integer** | The distance \\\&quot;as the crow flies\\\&quot; from the search center to this result item in meters. For example: \\\&quot;172039\\\&quot;.  When searching along a route this is the distance\\nalong the route plus the distance from the route polyline to this result item. | [optional] |
| **highlights** | [**TitleAndAddressHighlighting**](TitleAndAddressHighlighting.md) | Describes how the parts of the response element matched the input query | [optional] |
| **street_info** | [**Array&lt;StreetInfo&gt;**](StreetInfo.md) | Street Details (only rendered if &#39;show&#x3D;streetInfo&#39; is provided.) | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::AutocompleteResultItem.new(
  title: null,
  id: null,
  language: null,
  political_view: null,
  result_type: null,
  house_number_type: null,
  locality_type: null,
  administrative_area_type: null,
  address: null,
  distance: 172039,
  highlights: null,
  street_info: null
)
```

