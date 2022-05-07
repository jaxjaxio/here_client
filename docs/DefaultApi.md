# HereClient::DefaultApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**autocomplete_get**](DefaultApi.md#autocomplete_get) | **GET** /autocomplete | Autocomplete |
| [**autosuggest_get**](DefaultApi.md#autosuggest_get) | **GET** /autosuggest | Autosuggest |
| [**browse_get**](DefaultApi.md#browse_get) | **GET** /browse | Browse |
| [**discover_get**](DefaultApi.md#discover_get) | **GET** /discover | Discover |
| [**geocode_get**](DefaultApi.md#geocode_get) | **GET** /geocode | Geocode |
| [**lookup_get**](DefaultApi.md#lookup_get) | **GET** /lookup | Lookup By ID |
| [**revgeocode_get**](DefaultApi.md#revgeocode_get) | **GET** /revgeocode | Reverse Geocode |


## autocomplete_get

> <OpenSearchAutocompleteResponse> autocomplete_get(q, opts)

Autocomplete

BETA: This endpoint completes the few entered keystrokes to the valid street address or administrative area to speed-up entering the address queries.

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
q = 'Berlin Pariser 20' # String | Enter a free-text query  Examples:  * `ber`, `berl`, `berli`, ...  * `berlin+p`, `berlin+paris`, `berlin+parise`, ...  * `berlin+pariser+20`   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results._ 
opts = {
  at: 'at_example', # String | Specify the center of the search context expressed as coordinates.  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru) 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: `countryCode:{countryCode}[,{countryCode}]*`     Examples:     * `countryCode:USA`     * `countryCode:CAN,MEX,USA`  
  limit: 56, # Integer | Maximum number of results to be returned.
  types: ['area'], # Array<String> | BETA: Limit the result items to the specified types. Currently supported values of the type filter for Autocomplete:  * `city` - restricting results to result type `locality` and locality type `city`  * `postalCode` - restricting results to result type `locality` and locality type `postalCode`,  * `area` - restricting results to result types: `locality` or `administrativeArea` including all the sub-types  Provide one of the supported values or a comma separated list.
  lang: ['inner_example'], # Array<String> | Select the preferred response language for result rendering from a list of BCP47 compliant Language Codes. The autocomplete endpoint tries to detect the query language based on matching name variants and then chooses the same language for the response.  Therefore the end-user can see and recognize all the entered terms in the same language as in the query. The specified preferred language is used only for not matched address tokens and for matched address tokens in case of ambiguity 
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['streetInfo'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Autocomplete
  result = api_instance.autocomplete_get(q, opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->autocomplete_get: #{e}"
end
```

#### Using the autocomplete_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchAutocompleteResponse>, Integer, Hash)> autocomplete_get_with_http_info(q, opts)

```ruby
begin
  # Autocomplete
  data, status_code, headers = api_instance.autocomplete_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchAutocompleteResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->autocomplete_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Enter a free-text query  Examples:  * &#x60;ber&#x60;, &#x60;berl&#x60;, &#x60;berli&#x60;, ...  * &#x60;berlin+p&#x60;, &#x60;berlin+paris&#x60;, &#x60;berlin+parise&#x60;, ...  * &#x60;berlin+pariser+20&#x60;   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results._  |  |
| **at** | **String** | Specify the center of the search context expressed as coordinates.  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: &#x60;countryCode:{countryCode}[,{countryCode}]*&#x60;     Examples:     * &#x60;countryCode:USA&#x60;     * &#x60;countryCode:CAN,MEX,USA&#x60;   | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 5] |
| **types** | [**Array&lt;String&gt;**](String.md) | BETA: Limit the result items to the specified types. Currently supported values of the type filter for Autocomplete:  * &#x60;city&#x60; - restricting results to result type &#x60;locality&#x60; and locality type &#x60;city&#x60;  * &#x60;postalCode&#x60; - restricting results to result type &#x60;locality&#x60; and locality type &#x60;postalCode&#x60;,  * &#x60;area&#x60; - restricting results to result types: &#x60;locality&#x60; or &#x60;administrativeArea&#x60; including all the sub-types  Provide one of the supported values or a comma separated list. | [optional] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the preferred response language for result rendering from a list of BCP47 compliant Language Codes. The autocomplete endpoint tries to detect the query language based on matching name variants and then chooses the same language for the response.  Therefore the end-user can see and recognize all the entered terms in the same language as in the query. The specified preferred language is used only for not matched address tokens and for matched address tokens in case of ambiguity  | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchAutocompleteResponse**](OpenSearchAutocompleteResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## autosuggest_get

> <OpenSearchAutosuggestResponse> autosuggest_get(q, opts)

Autosuggest

This endpoint suggests address or place candidates based on an incomplete or misspelled query,  from which the user selects the best query to submit.  _NOTE: The response may contain **experimental** elements not documented here.  Any undocumented element is **subject to removal** at any time._ 

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
q = 'Eismieze Berlin' # String | Enter a free-text query  Examples:  * `res`, `rest`, `resta`, `restau`, ...  * `berlin+bran`, `berlin+brand`, `berlin+branden`, ...  * `New+Yok+Giants`   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results. 
opts = {
  at: '52.5308,13.3856', # String | Specify the center of the search context expressed as coordinates  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru)  The following constraints apply:   * One of \"at\", \"in=circle\" or \"in=bbox\" is required.   * Parameters \"at\", \"in=circle\" and \"in=bbox\" are mutually exclusive. Only one of them is allowed. 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: `countryCode:{countryCode}[,{countryCode}]*`     Examples:     * `countryCode:USA`     * `countryCode:CAN,MEX,USA`    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: `circle:{latitude},{longitude};r={radius}`     Type: `circle:{decimal},{decimal};r={integer}`     Example: `circle:52.53,13.38;r=10000`    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`     Example: `bbox:13.08836,52.33812,13.761,52.6755`   The following constraints apply:   * Parameters \"at\", \"in=circle\" and \"in=bbox\" are mutually exclusive. Only one of them is allowed.    * One of \"at\", \"in=circle\" or \"in=bbox\" is required.   * The \"in=countryCode\" parameter must be accompanied by exactly one of \"at\", \"in=circle\" or \"in=bbox\". 
  limit: 56, # Integer | Maximum number of results to be returned.
  route: 'route_example', # String | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A `route` is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \"w\".  Format: `{route};w={width}`  In regular expression syntax, the values of `route` look like:  `[a-zA-Z0-9_-]+(;w=\\d+)?`  \"[a-zA-Z0-9._-]+\" is the encoded flexible polyline.  \"w=\\d+\" is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: `{Flexible Polyline Encoding};w={integer}`  The following constraints apply:  * A `route` MUST NOT contain more than 2000 points.  Examples:  * `BFoz5xJ67i1B1B7PzIhaxL7Y`  * `BFoz5xJ67i1B1B7PzIhaxL7Y;w=5000`  * `BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w=2000`  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  ``` >>> import flexpolyline >>> polyline = 'BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC' >>> flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] ``` 
  terms_limit: 56, # Integer | Maximum number of Query Terms Suggestions to be returned.
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['phonemes'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'phonemes': Renders phonemes for address and place names into the results.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Autosuggest
  result = api_instance.autosuggest_get(q, opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->autosuggest_get: #{e}"
end
```

#### Using the autosuggest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchAutosuggestResponse>, Integer, Hash)> autosuggest_get_with_http_info(q, opts)

```ruby
begin
  # Autosuggest
  data, status_code, headers = api_instance.autosuggest_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchAutosuggestResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->autosuggest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Enter a free-text query  Examples:  * &#x60;res&#x60;, &#x60;rest&#x60;, &#x60;resta&#x60;, &#x60;restau&#x60;, ...  * &#x60;berlin+bran&#x60;, &#x60;berlin+brand&#x60;, &#x60;berlin+branden&#x60;, ...  * &#x60;New+Yok+Giants&#x60;   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results.  |  |
| **at** | **String** | Specify the center of the search context expressed as coordinates  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  The following constraints apply:   * One of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot; is required.   * Parameters \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; and \&quot;in&#x3D;bbox\&quot; are mutually exclusive. Only one of them is allowed.  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: &#x60;countryCode:{countryCode}[,{countryCode}]*&#x60;     Examples:     * &#x60;countryCode:USA&#x60;     * &#x60;countryCode:CAN,MEX,USA&#x60;    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: &#x60;circle:{latitude},{longitude};r&#x3D;{radius}&#x60;     Type: &#x60;circle:{decimal},{decimal};r&#x3D;{integer}&#x60;     Example: &#x60;circle:52.53,13.38;r&#x3D;10000&#x60;    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: &#x60;bbox:{west longitude},{south latitude},{east longitude},{north latitude}&#x60;     Example: &#x60;bbox:13.08836,52.33812,13.761,52.6755&#x60;   The following constraints apply:   * Parameters \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; and \&quot;in&#x3D;bbox\&quot; are mutually exclusive. Only one of them is allowed.    * One of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot; is required.   * The \&quot;in&#x3D;countryCode\&quot; parameter must be accompanied by exactly one of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot;.  | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 20] |
| **route** | **String** | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A &#x60;route&#x60; is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \&quot;w\&quot;.  Format: &#x60;{route};w&#x3D;{width}&#x60;  In regular expression syntax, the values of &#x60;route&#x60; look like:  &#x60;[a-zA-Z0-9_-]+(;w&#x3D;\\d+)?&#x60;  \&quot;[a-zA-Z0-9._-]+\&quot; is the encoded flexible polyline.  \&quot;w&#x3D;\\d+\&quot; is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: &#x60;{Flexible Polyline Encoding};w&#x3D;{integer}&#x60;  The following constraints apply:  * A &#x60;route&#x60; MUST NOT contain more than 2000 points.  Examples:  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y&#x60;  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y;w&#x3D;5000&#x60;  * &#x60;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w&#x3D;2000&#x60;  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  &#x60;&#x60;&#x60; &gt;&gt;&gt; import flexpolyline &gt;&gt;&gt; polyline &#x3D; &#39;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC&#39; &gt;&gt;&gt; flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] &#x60;&#x60;&#x60;  | [optional] |
| **terms_limit** | **Integer** | Maximum number of Query Terms Suggestions to be returned. | [optional] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;phonemes&#39;: Renders phonemes for address and place names into the results.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchAutosuggestResponse**](OpenSearchAutosuggestResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## browse_get

> <OpenSearchBrowseResponse> browse_get(at, opts)

Browse

This endpoint provides search results for places based on different filters, such as categories or name, ranked by distance from a given search center. The only mandatory elements exposed in the response are id and position. The other elements shown in the response samples section are only dataset attributes suggestions. 

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
at = '52.5308,13.3856' # String | Specify the center of the search context expressed as coordinates  Required parameter for endpoints that are expected to rank results by distance from the explicitly  specified search center  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru) 
opts = {
  categories: ['inner_example'], # Array<String> | Category filter consisting of a comma-separated list of category-IDs for Categories defined in the HERE Places Category System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned categories that match any of the requested categories are included in the response.  An exclamation mark \"`!`\" in front of a category ID causes that category to be excluded from the results. It is possible to mix excluded and included categories in the request - e.g. searching for places that are restaurants but not fast food restaurants. An exclusion will always win over an inclusion. 
  chains: ['inner_example'], # Array<String> | Chain filter consisting of a comma-separated list of chain-IDs for Chains defined in the HERE Places Chain System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned chains that match any of the requested chains are included in the response.  An exclamation mark \"`!`\" in front of a chain ID causes that chain to be excluded from the results. It is possible to mix excluded and included chains in the request - e.g. searching for places that are amazon but not wholefoods. An exclusion will always win over an inclusion. 
  food_types: ['inner_example'], # Array<String> | FoodType filter consisting of a comma-separated list of cuisine-IDs for FoodTypes defined in the HERE Places Cuisine System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned foodTypes that match any of the requested foodTypes are included in the response.  An exclamation mark \"`!`\" in front of a cuisine ID causes that foodType to be excluded from the results. It is possible to mix excluded and included foodTypes in the request - e.g. searching for places that serve italian but not chinese. An exclusion will always win over an inclusion. 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: `countryCode:{countryCode}[,{countryCode}]*`     Examples:     * `countryCode:USA`     * `countryCode:CAN,MEX,USA`    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: `circle:{latitude},{longitude};r={radius}`     Type: `circle:{decimal},{decimal};r={integer}`     Example: `circle:52.53,13.38;r=10000`    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`     Example: `bbox:13.08836,52.33812,13.761,52.6755`   The following constraints apply:   * Parameters \"in=circle\" and \"in=bbox\" are mutually exclusive. Only one of them is allowed. 
  limit: 56, # Integer | Maximum number of results to be returned.
  name: 'name_example', # String | Full-text filter on POI names/titles. Results with a partial match on the name parameter are included in the response.
  route: 'route_example', # String | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A `route` is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \"w\".  Format: `{route};w={width}`  In regular expression syntax, the values of `route` look like:  `[a-zA-Z0-9_-]+(;w=\\d+)?`  \"[a-zA-Z0-9._-]+\" is the encoded flexible polyline.  \"w=\\d+\" is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: `{Flexible Polyline Encoding};w={integer}`  The following constraints apply:  * A `route` MUST NOT contain more than 2000 points.  Examples:  * `BFoz5xJ67i1B1B7PzIhaxL7Y`  * `BFoz5xJ67i1B1B7PzIhaxL7Y;w=5000`  * `BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w=2000`  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  ``` >>> import flexpolyline >>> polyline = 'BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC' >>> flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] ``` 
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['phonemes'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'phonemes': Renders phonemes for address and place names into the results.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Browse
  result = api_instance.browse_get(at, opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->browse_get: #{e}"
end
```

#### Using the browse_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchBrowseResponse>, Integer, Hash)> browse_get_with_http_info(at, opts)

```ruby
begin
  # Browse
  data, status_code, headers = api_instance.browse_get_with_http_info(at, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchBrowseResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->browse_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **at** | **String** | Specify the center of the search context expressed as coordinates  Required parameter for endpoints that are expected to rank results by distance from the explicitly  specified search center  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  |  |
| **categories** | [**Array&lt;String&gt;**](String.md) | Category filter consisting of a comma-separated list of category-IDs for Categories defined in the HERE Places Category System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned categories that match any of the requested categories are included in the response.  An exclamation mark \&quot;&#x60;!&#x60;\&quot; in front of a category ID causes that category to be excluded from the results. It is possible to mix excluded and included categories in the request - e.g. searching for places that are restaurants but not fast food restaurants. An exclusion will always win over an inclusion.  | [optional] |
| **chains** | [**Array&lt;String&gt;**](String.md) | Chain filter consisting of a comma-separated list of chain-IDs for Chains defined in the HERE Places Chain System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned chains that match any of the requested chains are included in the response.  An exclamation mark \&quot;&#x60;!&#x60;\&quot; in front of a chain ID causes that chain to be excluded from the results. It is possible to mix excluded and included chains in the request - e.g. searching for places that are amazon but not wholefoods. An exclusion will always win over an inclusion.  | [optional] |
| **food_types** | [**Array&lt;String&gt;**](String.md) | FoodType filter consisting of a comma-separated list of cuisine-IDs for FoodTypes defined in the HERE Places Cuisine System, described in the Appendix to the HERE Search Developer Guide. Places with any assigned foodTypes that match any of the requested foodTypes are included in the response.  An exclamation mark \&quot;&#x60;!&#x60;\&quot; in front of a cuisine ID causes that foodType to be excluded from the results. It is possible to mix excluded and included foodTypes in the request - e.g. searching for places that serve italian but not chinese. An exclusion will always win over an inclusion.  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: &#x60;countryCode:{countryCode}[,{countryCode}]*&#x60;     Examples:     * &#x60;countryCode:USA&#x60;     * &#x60;countryCode:CAN,MEX,USA&#x60;    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: &#x60;circle:{latitude},{longitude};r&#x3D;{radius}&#x60;     Type: &#x60;circle:{decimal},{decimal};r&#x3D;{integer}&#x60;     Example: &#x60;circle:52.53,13.38;r&#x3D;10000&#x60;    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: &#x60;bbox:{west longitude},{south latitude},{east longitude},{north latitude}&#x60;     Example: &#x60;bbox:13.08836,52.33812,13.761,52.6755&#x60;   The following constraints apply:   * Parameters \&quot;in&#x3D;circle\&quot; and \&quot;in&#x3D;bbox\&quot; are mutually exclusive. Only one of them is allowed.  | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 20] |
| **name** | **String** | Full-text filter on POI names/titles. Results with a partial match on the name parameter are included in the response. | [optional] |
| **route** | **String** | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A &#x60;route&#x60; is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \&quot;w\&quot;.  Format: &#x60;{route};w&#x3D;{width}&#x60;  In regular expression syntax, the values of &#x60;route&#x60; look like:  &#x60;[a-zA-Z0-9_-]+(;w&#x3D;\\d+)?&#x60;  \&quot;[a-zA-Z0-9._-]+\&quot; is the encoded flexible polyline.  \&quot;w&#x3D;\\d+\&quot; is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: &#x60;{Flexible Polyline Encoding};w&#x3D;{integer}&#x60;  The following constraints apply:  * A &#x60;route&#x60; MUST NOT contain more than 2000 points.  Examples:  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y&#x60;  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y;w&#x3D;5000&#x60;  * &#x60;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w&#x3D;2000&#x60;  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  &#x60;&#x60;&#x60; &gt;&gt;&gt; import flexpolyline &gt;&gt;&gt; polyline &#x3D; &#39;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC&#39; &gt;&gt;&gt; flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] &#x60;&#x60;&#x60;  | [optional] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;phonemes&#39;: Renders phonemes for address and place names into the results.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchBrowseResponse**](OpenSearchBrowseResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## discover_get

> <OpenSearchSearchResponse> discover_get(q, opts)

Discover

This endpoint processes a free-form text query for an address or place, and returns results in order of relevance.

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
q = 'Eismieze Berlin' # String | Enter a free-text query  Examples:  * `125, Berliner, berlin`  * `Beacon, Boston, Hospital`  * `Schnurrbart German Pub and Restaurant, Hong Kong`   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results. 
opts = {
  at: '52.5308,13.3856', # String | Specify the center of the search context expressed as coordinates  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru)  The following constraints apply:   * One of \"at\", \"in=circle\" or \"in=bbox\" is required.   * Parameters \"at\", \"in=circle\" and \"in=bbox\" are mutually exclusive. Only one of them is allowed. 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: `countryCode:{countryCode}[,{countryCode}]*`     Examples:     * `countryCode:USA`     * `countryCode:CAN,MEX,USA`    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: `circle:{latitude},{longitude};r={radius}`     Type: `circle:{decimal},{decimal};r={integer}`     Example: `circle:52.53,13.38;r=10000`    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`     Example: `bbox:13.08836,52.33812,13.761,52.6755`   The following constraints apply:   * Parameters \"at\", \"in=circle\" and \"in=bbox\" are mutually exclusive. Only one of them is allowed.    * One of \"at\", \"in=circle\" or \"in=bbox\" is required.   * The \"in=countryCode\" parameter must be accompanied by exactly one of \"at\", \"in=circle\" or \"in=bbox\". 
  limit: 56, # Integer | Maximum number of results to be returned.
  route: 'route_example', # String | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A `route` is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \"w\".  Format: `{route};w={width}`  In regular expression syntax, the values of `route` look like:  `[a-zA-Z0-9_-]+(;w=\\d+)?`  \"[a-zA-Z0-9._-]+\" is the encoded flexible polyline.  \"w=\\d+\" is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: `{Flexible Polyline Encoding};w={integer}`  The following constraints apply:  * A `route` MUST NOT contain more than 2000 points.  Examples:  * `BFoz5xJ67i1B1B7PzIhaxL7Y`  * `BFoz5xJ67i1B1B7PzIhaxL7Y;w=5000`  * `BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w=2000`  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  ``` >>> import flexpolyline >>> polyline = 'BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC' >>> flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] ``` 
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['phonemes'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'phonemes': Renders phonemes for address and place names into the results.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Discover
  result = api_instance.discover_get(q, opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->discover_get: #{e}"
end
```

#### Using the discover_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchSearchResponse>, Integer, Hash)> discover_get_with_http_info(q, opts)

```ruby
begin
  # Discover
  data, status_code, headers = api_instance.discover_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchSearchResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->discover_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Enter a free-text query  Examples:  * &#x60;125, Berliner, berlin&#x60;  * &#x60;Beacon, Boston, Hospital&#x60;  * &#x60;Schnurrbart German Pub and Restaurant, Hong Kong&#x60;   _Note: Whitespace, urls, email addresses, or other out-of-scope queries will yield no results.  |  |
| **at** | **String** | Specify the center of the search context expressed as coordinates  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  The following constraints apply:   * One of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot; is required.   * Parameters \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; and \&quot;in&#x3D;bbox\&quot; are mutually exclusive. Only one of them is allowed.  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: &#x60;countryCode:{countryCode}[,{countryCode}]*&#x60;     Examples:     * &#x60;countryCode:USA&#x60;     * &#x60;countryCode:CAN,MEX,USA&#x60;    * a circular area, provided as latitude, longitude, and radius (in meters)     Format: &#x60;circle:{latitude},{longitude};r&#x3D;{radius}&#x60;     Type: &#x60;circle:{decimal},{decimal};r&#x3D;{integer}&#x60;     Example: &#x60;circle:52.53,13.38;r&#x3D;10000&#x60;    * a bounding box, provided as _west longitude_, _south latitude_, _east longitude_, _north latitude_     Format: &#x60;bbox:{west longitude},{south latitude},{east longitude},{north latitude}&#x60;     Example: &#x60;bbox:13.08836,52.33812,13.761,52.6755&#x60;   The following constraints apply:   * Parameters \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; and \&quot;in&#x3D;bbox\&quot; are mutually exclusive. Only one of them is allowed.    * One of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot; is required.   * The \&quot;in&#x3D;countryCode\&quot; parameter must be accompanied by exactly one of \&quot;at\&quot;, \&quot;in&#x3D;circle\&quot; or \&quot;in&#x3D;bbox\&quot;.  | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 20] |
| **route** | **String** | BETA: Select within a geographic corridor. This is a hard filter. Results will be returned if they are located within the specified area.  A &#x60;route&#x60; is defined by a [Flexible Polyline Encoding](https://github.com/heremaps/flexible-polyline),  followed by an optional width, represented by a sub-parameter \&quot;w\&quot;.  Format: &#x60;{route};w&#x3D;{width}&#x60;  In regular expression syntax, the values of &#x60;route&#x60; look like:  &#x60;[a-zA-Z0-9_-]+(;w&#x3D;\\d+)?&#x60;  \&quot;[a-zA-Z0-9._-]+\&quot; is the encoded flexible polyline.  \&quot;w&#x3D;\\d+\&quot; is the optional width. The width is specified in meters from the center of the path. If no width is provided, the default is 1000 meters.  Type: &#x60;{Flexible Polyline Encoding};w&#x3D;{integer}&#x60;  The following constraints apply:  * A &#x60;route&#x60; MUST NOT contain more than 2000 points.  Examples:  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y&#x60;  * &#x60;BFoz5xJ67i1B1B7PzIhaxL7Y;w&#x3D;5000&#x60;  * &#x60;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC;w&#x3D;2000&#x60;  Note: The last example above can be decoded (using the Python class [here](https://github.com/heremaps/flexible-polyline/tree/master/python) as follows:  &#x60;&#x60;&#x60; &gt;&gt;&gt; import flexpolyline &gt;&gt;&gt; polyline &#x3D; &#39;BlD05xgKuy2xCCx9B7vUCl0OhnRC54EqSCzpEl-HCxjD3pBCiGnyGCi2CvwFCsgD3nDC4vB6eC&#39; &gt;&gt;&gt; flexpolyline.decode(polyline) [(52.51994, 13.38663, 1.0), (52.51009, 13.28169, 2.0), (52.43518, 13.19352, 3.0), (52.41073, 13.19645, 4.0), (52.38871, 13.15578, 5.0), (52.37278, 13.1491, 6.0), (52.37375, 13.11546, 7.0), (52.38752, 13.08722, 8.0), (52.40294, 13.07062, 9.0), (52.41058, 13.07555, 10.0)] &#x60;&#x60;&#x60;  | [optional] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;phonemes&#39;: Renders phonemes for address and place names into the results.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchSearchResponse**](OpenSearchSearchResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geocode_get

> <OpenSearchGeocodeResponse> geocode_get(opts)

Geocode

This endpoint allows to find the geo-coordinates of a known address, place, locality or administrative area, even if the query is incomplete or partly incorrect. It also returns a complete postal address string and address details. It supports structured, unstructured and hybrid queries - combinations of structured and unstructured query elements.

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
opts = {
  at: 'at_example', # String | Specify the center of the search context expressed as coordinates.  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru) 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: `countryCode:{countryCode}[,{countryCode}]*`     Examples:     * `countryCode:USA`     * `countryCode:CAN,MEX,USA`  
  limit: 56, # Integer | Maximum number of results to be returned.
  q: 'Invalidenstraße 116 Berlin', # String | Enter a free-text query  Examples:  * `125, Berliner, berlin`  * `Beacon, Boston, Hospital`  * `Schnurrbart German Pub and Restaurant, Hong Kong`  _Note: Either `q` or `qq`-parameter is required on this endpoint. Both parameters can be provided in the same request._ 
  qq: 'qq_example', # String | Enter a qualified query. A qualified query is similar to a free-text query, but in a structured manner.  It can take multiple _sub-parameters_, separated by semicolon, allowing to specify different aspects of a query.  Currently supported _sub-parameters_ are `country`, `state`, `county`, `city`, `district`, `street`,  `houseNumber`, and `postalCode`.  Format: `{sub-parameter}={string}[;{sub-parameter}={string}]*`  Examples:  * `city=Berlin;country=Germany;street=Friedrichstr;houseNumber=20`  * `city=Berlin;country=Germany`  * `postalCode=10969`  _Note: Either `q` or `qq`-parameter is required on this endpoint. Both parameters can be provided in the same request._ 
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['countryInfo'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'countryInfo': For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'parsing'  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Geocode
  result = api_instance.geocode_get(opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->geocode_get: #{e}"
end
```

#### Using the geocode_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchGeocodeResponse>, Integer, Hash)> geocode_get_with_http_info(opts)

```ruby
begin
  # Geocode
  data, status_code, headers = api_instance.geocode_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchGeocodeResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->geocode_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **at** | **String** | Specify the center of the search context expressed as coordinates.  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a country (or multiple countries), provided as comma-separated [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country codes     The country codes are to be provided in all uppercase.     Format: &#x60;countryCode:{countryCode}[,{countryCode}]*&#x60;     Examples:     * &#x60;countryCode:USA&#x60;     * &#x60;countryCode:CAN,MEX,USA&#x60;   | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 20] |
| **q** | **String** | Enter a free-text query  Examples:  * &#x60;125, Berliner, berlin&#x60;  * &#x60;Beacon, Boston, Hospital&#x60;  * &#x60;Schnurrbart German Pub and Restaurant, Hong Kong&#x60;  _Note: Either &#x60;q&#x60; or &#x60;qq&#x60;-parameter is required on this endpoint. Both parameters can be provided in the same request._  | [optional] |
| **qq** | **String** | Enter a qualified query. A qualified query is similar to a free-text query, but in a structured manner.  It can take multiple _sub-parameters_, separated by semicolon, allowing to specify different aspects of a query.  Currently supported _sub-parameters_ are &#x60;country&#x60;, &#x60;state&#x60;, &#x60;county&#x60;, &#x60;city&#x60;, &#x60;district&#x60;, &#x60;street&#x60;,  &#x60;houseNumber&#x60;, and &#x60;postalCode&#x60;.  Format: &#x60;{sub-parameter}&#x3D;{string}[;{sub-parameter}&#x3D;{string}]*&#x60;  Examples:  * &#x60;city&#x3D;Berlin;country&#x3D;Germany;street&#x3D;Friedrichstr;houseNumber&#x3D;20&#x60;  * &#x60;city&#x3D;Berlin;country&#x3D;Germany&#x60;  * &#x60;postalCode&#x3D;10969&#x60;  _Note: Either &#x60;q&#x60; or &#x60;qq&#x60;-parameter is required on this endpoint. Both parameters can be provided in the same request._  | [optional] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;countryInfo&#39;: For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;parsing&#39;  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchGeocodeResponse**](OpenSearchGeocodeResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lookup_get

> <LookupResponse> lookup_get(id, opts)

Lookup By ID

This endpoint looks up a known place by the HERE ID included in the request.

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
id = 'here:pds:place:276u33db-8097f3194e4b411081b761ea9a366776' # String | Location ID, which is the ID of a result item eg. of a Discover request
opts = {
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['countryInfo'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'countryInfo': For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  'phonemes': Renders phonemes for address and place names into the results.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Lookup By ID
  result = api_instance.lookup_get(id, opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->lookup_get: #{e}"
end
```

#### Using the lookup_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LookupResponse>, Integer, Hash)> lookup_get_with_http_info(id, opts)

```ruby
begin
  # Lookup By ID
  data, status_code, headers = api_instance.lookup_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LookupResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->lookup_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Location ID, which is the ID of a result item eg. of a Discover request |  |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;countryInfo&#39;: For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  &#39;phonemes&#39;: Renders phonemes for address and place names into the results.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**LookupResponse**](LookupResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revgeocode_get

> <OpenSearchReverseGeocodeResponse> revgeocode_get(opts)

Reverse Geocode

This endpoint returns the nearest address to geo coordinates specified in the request.

### Examples

```ruby
require 'time'
require 'here_client'
# setup authorization
HereClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = HereClient::DefaultApi.new
opts = {
  at: '52.5308,13.3856', # String | Specify the center of the search context expressed as coordinates.  Format: `{latitude},{longitude}`  Type: `{decimal},{decimal}`  Example: `-13.163068,-72.545128` (Machu Picchu Mountain, Peru)  The following constraints apply:   * Either \"at\" or \"in=circle\" is required.   * Parameters \"at\" and \"in=circle\" are mutually exclusive. Only one of them is allowed. 
  _in: '_in_example', # String | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a circular area, provided as latitude, longitude, and radius (in meters)     Format: `circle:{latitude},{longitude};r={radius}`     Type: `circle:{decimal},{decimal};r={integer}`     Example: `circle:52.53,13.38;r=10000`   The following constraints apply:   * Either \"at\" or \"in=circle\" is required. 
  limit: 56, # Integer | Maximum number of results to be returned.
  lang: ['inner_example'], # Array<String> | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes.
  political_view: 'political_view_example', # String | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \"400\" error code.
  show: ['countryInfo'], # Array<String> | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  'countryInfo': For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  'streetInfo': For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: 'tz': Renders result items with additional time zone information. Please note that this may impact latency significantly.
  x_request_id: 'x_request_id_example' # String | Used to correlate requests with their responses within a customer's application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended.
}

begin
  # Reverse Geocode
  result = api_instance.revgeocode_get(opts)
  p result
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->revgeocode_get: #{e}"
end
```

#### Using the revgeocode_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenSearchReverseGeocodeResponse>, Integer, Hash)> revgeocode_get_with_http_info(opts)

```ruby
begin
  # Reverse Geocode
  data, status_code, headers = api_instance.revgeocode_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenSearchReverseGeocodeResponse>
rescue HereClient::ApiError => e
  puts "Error when calling DefaultApi->revgeocode_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **at** | **String** | Specify the center of the search context expressed as coordinates.  Format: &#x60;{latitude},{longitude}&#x60;  Type: &#x60;{decimal},{decimal}&#x60;  Example: &#x60;-13.163068,-72.545128&#x60; (Machu Picchu Mountain, Peru)  The following constraints apply:   * Either \&quot;at\&quot; or \&quot;in&#x3D;circle\&quot; is required.   * Parameters \&quot;at\&quot; and \&quot;in&#x3D;circle\&quot; are mutually exclusive. Only one of them is allowed.  | [optional] |
| **_in** | **String** | Search within a geographic area. This is a hard filter. Results will be returned if they are located within the specified area.  A geographic area can be   * a circular area, provided as latitude, longitude, and radius (in meters)     Format: &#x60;circle:{latitude},{longitude};r&#x3D;{radius}&#x60;     Type: &#x60;circle:{decimal},{decimal};r&#x3D;{integer}&#x60;     Example: &#x60;circle:52.53,13.38;r&#x3D;10000&#x60;   The following constraints apply:   * Either \&quot;at\&quot; or \&quot;in&#x3D;circle\&quot; is required.  | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned. | [optional][default to 1] |
| **lang** | [**Array&lt;String&gt;**](String.md) | Select the language to be used for result rendering from a list of [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language codes. | [optional] |
| **political_view** | **String** | Toggle the political view.  This parameter accepts single ISO 3166-1 alpha-3 country code. The country codes are to be provided in all uppercase.  Currently the only supported political views are:  * RUS expressing the Russian view on Crimea  * SRB expressing the Serbian view on Kosovo, Vukovar and Sarengrad Islands  * MAR expressing the Moroccan view on Western Sahara  * SUR Suriname view on Courantyne Headwaters and Lawa Headwaters  * KEN Kenya view on Ilemi Triangle  * TZA Tanzania view on Lake Malawi  * URY Uruguay view on Rincon de Artigas  * EGY Egypt view on Bir Tawil  * SDN Sudan view on Halaib Triangle  * SYR Syria view on Golan Heights  * ARG Argentina view on Southern Patagonian Ice Field and Tierra Del Fuego, including Falkland Islands, South Georgia and South Sandwich Islands  * IND Indian View on Gilgit-Baltistan  * PAK Pakistan View on Jammu and Kashmir and Junagadh Area  For any valid 3 letter country code, for which GS7 does not have dedicated political view, it falls back to the default view.  For not accepted values of the politicalView parameter the GS7 responds with \&quot;400\&quot; error code. | [optional] |
| **show** | [**Array&lt;String&gt;**](String.md) | Select additional fields to be rendered in the response. Please note that some of the fields involve additional webservice calls and can increase the overall response time.  The value is a comma-separated list of the sections to be enabled. For some sections there is a long and a short ID.  Description of accepted values:  &#39;countryInfo&#39;: For each result item renders additional block with the country info, such as [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code.  &#39;streetInfo&#39;: For each result item renders additional block with the street name decomposed into its parts like the base name, the street type, etc.  BETA: &#39;tz&#39;: Renders result items with additional time zone information. Please note that this may impact latency significantly. | [optional] |
| **x_request_id** | **String** | Used to correlate requests with their responses within a customer&#39;s application, for logging and error reporting.  Format: Free string, but a valid UUIDv4 is recommended. | [optional] |

### Return type

[**OpenSearchReverseGeocodeResponse**](OpenSearchReverseGeocodeResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

