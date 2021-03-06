# here_geocoding_search

HereGeocodingSearch - the Ruby gem for the Geocoding and Search API v7

This document describes the Geocoding and Search API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 7.83
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build here_geocoding_search.gemspec
```

Then either install the gem locally:

```shell
gem install ./here_geocoding_search-1.0.0.gem
```

(for development, run `gem install --dev ./here_geocoding_search-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'here_geocoding_search', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'here_geocoding_search', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'here_geocoding_search'

# Setup authorization
HereGeocodingSearch.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = HereGeocodingSearch::DefaultApi.new
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
  #Autocomplete
  result = api_instance.autocomplete_get(q, opts)
  p result
rescue HereGeocodingSearch::ApiError => e
  puts "Exception when calling DefaultApi->autocomplete_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*HereGeocodingSearch::DefaultApi* | [**autocomplete_get**](docs/DefaultApi.md#autocomplete_get) | **GET** /autocomplete | Autocomplete
*HereGeocodingSearch::DefaultApi* | [**autosuggest_get**](docs/DefaultApi.md#autosuggest_get) | **GET** /autosuggest | Autosuggest
*HereGeocodingSearch::DefaultApi* | [**browse_get**](docs/DefaultApi.md#browse_get) | **GET** /browse | Browse
*HereGeocodingSearch::DefaultApi* | [**discover_get**](docs/DefaultApi.md#discover_get) | **GET** /discover | Discover
*HereGeocodingSearch::DefaultApi* | [**geocode_get**](docs/DefaultApi.md#geocode_get) | **GET** /geocode | Geocode
*HereGeocodingSearch::DefaultApi* | [**lookup_get**](docs/DefaultApi.md#lookup_get) | **GET** /lookup | Lookup By ID
*HereGeocodingSearch::DefaultApi* | [**revgeocode_get**](docs/DefaultApi.md#revgeocode_get) | **GET** /revgeocode | Reverse Geocode


## Documentation for Models

 - [HereGeocodingSearch::AccessResponseCoordinate](docs/AccessResponseCoordinate.md)
 - [HereGeocodingSearch::Address](docs/Address.md)
 - [HereGeocodingSearch::AutocompleteResultItem](docs/AutocompleteResultItem.md)
 - [HereGeocodingSearch::AutosuggestEntityResultItem](docs/AutosuggestEntityResultItem.md)
 - [HereGeocodingSearch::AutosuggestQueryResultItem](docs/AutosuggestQueryResultItem.md)
 - [HereGeocodingSearch::BrowseResultItem](docs/BrowseResultItem.md)
 - [HereGeocodingSearch::Category](docs/Category.md)
 - [HereGeocodingSearch::Chain](docs/Chain.md)
 - [HereGeocodingSearch::Contact](docs/Contact.md)
 - [HereGeocodingSearch::ContactInformation](docs/ContactInformation.md)
 - [HereGeocodingSearch::CountryInfo](docs/CountryInfo.md)
 - [HereGeocodingSearch::DisplayResponseCoordinate](docs/DisplayResponseCoordinate.md)
 - [HereGeocodingSearch::ErrorResponse](docs/ErrorResponse.md)
 - [HereGeocodingSearch::EvChargingAttributes](docs/EvChargingAttributes.md)
 - [HereGeocodingSearch::EvChargingPoint](docs/EvChargingPoint.md)
 - [HereGeocodingSearch::EvConnector](docs/EvConnector.md)
 - [HereGeocodingSearch::EvNameId](docs/EvNameId.md)
 - [HereGeocodingSearch::ExtendedAttribute](docs/ExtendedAttribute.md)
 - [HereGeocodingSearch::FieldScore](docs/FieldScore.md)
 - [HereGeocodingSearch::GeocodeResultItem](docs/GeocodeResultItem.md)
 - [HereGeocodingSearch::LookupResponse](docs/LookupResponse.md)
 - [HereGeocodingSearch::MapView](docs/MapView.md)
 - [HereGeocodingSearch::MatchInfo](docs/MatchInfo.md)
 - [HereGeocodingSearch::OneboxSearchResultItem](docs/OneboxSearchResultItem.md)
 - [HereGeocodingSearch::OpenSearchAutocompleteResponse](docs/OpenSearchAutocompleteResponse.md)
 - [HereGeocodingSearch::OpenSearchAutosuggestResponse](docs/OpenSearchAutosuggestResponse.md)
 - [HereGeocodingSearch::OpenSearchBrowseResponse](docs/OpenSearchBrowseResponse.md)
 - [HereGeocodingSearch::OpenSearchGeocodeResponse](docs/OpenSearchGeocodeResponse.md)
 - [HereGeocodingSearch::OpenSearchReverseGeocodeResponse](docs/OpenSearchReverseGeocodeResponse.md)
 - [HereGeocodingSearch::OpenSearchSearchResponse](docs/OpenSearchSearchResponse.md)
 - [HereGeocodingSearch::OpeningHours](docs/OpeningHours.md)
 - [HereGeocodingSearch::Parsing](docs/Parsing.md)
 - [HereGeocodingSearch::Phoneme](docs/Phoneme.md)
 - [HereGeocodingSearch::PhonemesSection](docs/PhonemesSection.md)
 - [HereGeocodingSearch::QueryTermResultItem](docs/QueryTermResultItem.md)
 - [HereGeocodingSearch::Range](docs/Range.md)
 - [HereGeocodingSearch::ReverseGeocodeResultItem](docs/ReverseGeocodeResultItem.md)
 - [HereGeocodingSearch::Scoring](docs/Scoring.md)
 - [HereGeocodingSearch::StreetInfo](docs/StreetInfo.md)
 - [HereGeocodingSearch::StructuredOpeningHours](docs/StructuredOpeningHours.md)
 - [HereGeocodingSearch::Supplier](docs/Supplier.md)
 - [HereGeocodingSearch::SupplierReference](docs/SupplierReference.md)
 - [HereGeocodingSearch::TimeZoneInfo](docs/TimeZoneInfo.md)
 - [HereGeocodingSearch::TitleAndAddressHighlighting](docs/TitleAndAddressHighlighting.md)
 - [HereGeocodingSearch::TitleHighlighting](docs/TitleHighlighting.md)


## Documentation for Authorization


### ApiKey


- **Type**: API key
- **API key parameter name**: apiKey
- **Location**: URL query string

