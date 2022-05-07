# HereClient::OneboxSearchResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The localized display name of this result item. |  |
| **id** | **String** | The unique identifier for the result item. This ID can be used for a Look Up by ID search as well. | [optional] |
| **political_view** | **String** | ISO3 country code of the item political view (default for international). This response element is populated when the politicalView parameter is set in the query | [optional] |
| **ontology_id** | **String** | Related ontology ID | [optional] |
| **result_type** | **String** | WARNING: The resultType values &#39;intersection&#39; and &#39;postalCodePoint&#39; are in BETA state | [optional] |
| **house_number_type** | **String** | * PA - a Point Address represents an individual address as a point object. Point Addresses are coming from trusted sources.   We can say with high certainty that the address exists and at what position. A Point Address result contains two types of coordinates.   One is the access point (or navigation coordinates), which is the point to start or end a drive. The other point is the position or display point.   This point varies per source and country. The point can be the rooftop point, a point close to the building entry, or a point close to the building,   driveway or parking lot that belongs to the building. * interpolated - an interpolated address. These are approximate positions as a result of a linear interpolation based on address ranges.   Address ranges, especially in the USA, are typical per block. For interpolated addresses, we cannot say with confidence that the address exists in reality.   But the interpolation provides a good location approximation that brings people in most use cases close to the target location.   The access point of an interpolated address result is calculated based on the address range and the road geometry.   The position (display) point is pre-configured offset from the street geometry.   Compared to Point Addresses, interpolated addresses are less accurate. | [optional] |
| **address_block_type** | **String** |  | [optional] |
| **locality_type** | **String** |  | [optional] |
| **administrative_area_type** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) | Postal address of the result item. |  |
| **position** | [**DisplayResponseCoordinate**](DisplayResponseCoordinate.md) | The coordinates (latitude, longitude) of a pin on a map corresponding to the searched place. | [optional] |
| **access** | [**Array&lt;AccessResponseCoordinate&gt;**](AccessResponseCoordinate.md) | Coordinates of the place you are navigating to (for example, driving or walking). This is a point on a road or in a parking lot. | [optional] |
| **distance** | **Integer** | The distance \\\&quot;as the crow flies\\\&quot; from the search center to this result item in meters. For example: \\\&quot;172039\\\&quot;.  When searching along a route this is the distance\\nalong the route plus the distance from the route polyline to this result item. | [optional] |
| **excursion_distance** | **Integer** | BETA - Two times the distance from the polyline to this result item in meters while searching along the route | [optional] |
| **map_view** | [**MapView**](MapView.md) | The bounding box enclosing the geometric shape (area or line) that an individual result covers. &#x60;place&#x60; typed results have no &#x60;mapView&#x60;. | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | The list of categories assigned to this place. | [optional] |
| **chains** | [**Array&lt;Chain&gt;**](Chain.md) | The list of chains assigned to this place. | [optional] |
| **references** | [**Array&lt;SupplierReference&gt;**](SupplierReference.md) | The list of supplier references available for this place. | [optional] |
| **food_types** | [**Array&lt;Category&gt;**](Category.md) | The list of food types assigned to this place. | [optional] |
| **house_number_fallback** | **Boolean** | If true, indicates that the requested house number was corrected to match the nearest known house number. This field is visible only when the value is true. | [optional] |
| **contacts** | [**Array&lt;ContactInformation&gt;**](ContactInformation.md) | Contact information like phone, email, WWW. | [optional] |
| **opening_hours** | [**Array&lt;OpeningHours&gt;**](OpeningHours.md) | A list of hours during which the place is open for business. This field is optional: When it is not present, it means that we are lacking data about the place opening hours. Days without opening hours have to be considered as closed. | [optional] |
| **time_zone** | [**TimeZoneInfo**](TimeZoneInfo.md) | BETA - Provides time zone information for this place. (rendered only if &#39;show&#x3D;tz&#39; is provided.) | [optional] |
| **extended** | [**ExtendedAttribute**](ExtendedAttribute.md) | Extended attributes section to contain detailed information for specific result types. | [optional] |
| **phonemes** | [**PhonemesSection**](PhonemesSection.md) | Phonemes for address and place names. (rendered only if &#39;show&#x3D;phonemes&#39; is provided.) | [optional] |
| **street_info** | [**Array&lt;StreetInfo&gt;**](StreetInfo.md) | Street Details (only rendered if &#39;show&#x3D;streetInfo&#39; is provided.) | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::OneboxSearchResultItem.new(
  title: null,
  id: null,
  political_view: null,
  ontology_id: null,
  result_type: null,
  house_number_type: null,
  address_block_type: null,
  locality_type: null,
  administrative_area_type: null,
  address: null,
  position: null,
  access: null,
  distance: 172039,
  excursion_distance: null,
  map_view: null,
  categories: null,
  chains: null,
  references: null,
  food_types: null,
  house_number_fallback: null,
  contacts: null,
  opening_hours: null,
  time_zone: null,
  extended: null,
  phonemes: null,
  street_info: null
)
```

