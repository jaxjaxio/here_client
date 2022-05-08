# HERE API Ruby Clients

## Geocoding & Search

Generating the gem from openapi spec:
```shell
$ cd geocoding_search
$ openapi-generator generate -i open_search_api.json -g ruby -c config.yaml
```

Gem usage:
```yaml
gem 'here_geocoding_search', '~> 1.0.0'
```

## Intermodal Routing