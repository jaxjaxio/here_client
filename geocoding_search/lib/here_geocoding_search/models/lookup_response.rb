=begin
#Geocoding and Search API v7

#This document describes the Geocoding and Search API.

The version of the OpenAPI document: 7.83

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module HereGeocodingSearch
  class LookupResponse
    # The localized display name of this result item.
    attr_accessor :title

    # The unique identifier for the result item. This ID can be used for a Look Up by ID search as well.
    attr_accessor :id

    # ISO3 country code of the item political view (default for international). This response element is populated when the politicalView parameter is set in the query
    attr_accessor :political_view

    # WARNING: The resultType values 'intersection' and 'postalCodePoint' are in BETA state
    attr_accessor :result_type

    # * PA - a Point Address represents an individual address as a point object. Point Addresses are coming from trusted sources.   We can say with high certainty that the address exists and at what position. A Point Address result contains two types of coordinates.   One is the access point (or navigation coordinates), which is the point to start or end a drive. The other point is the position or display point.   This point varies per source and country. The point can be the rooftop point, a point close to the building entry, or a point close to the building,   driveway or parking lot that belongs to the building. * interpolated - an interpolated address. These are approximate positions as a result of a linear interpolation based on address ranges.   Address ranges, especially in the USA, are typical per block. For interpolated addresses, we cannot say with confidence that the address exists in reality.   But the interpolation provides a good location approximation that brings people in most use cases close to the target location.   The access point of an interpolated address result is calculated based on the address range and the road geometry.   The position (display) point is pre-configured offset from the street geometry.   Compared to Point Addresses, interpolated addresses are less accurate.
    attr_accessor :house_number_type

    attr_accessor :address_block_type

    attr_accessor :locality_type

    attr_accessor :administrative_area_type

    # If true, indicates that the requested house number was corrected to match the nearest known house number. This field is visible only when the value is true.
    attr_accessor :house_number_fallback

    # Postal address of the result item.
    attr_accessor :address

    # The coordinates (latitude, longitude) of a pin on a map corresponding to the searched place.
    attr_accessor :position

    # Coordinates of the place you are navigating to (for example, driving or walking). This is a point on a road or in a parking lot.
    attr_accessor :access

    # The bounding box enclosing the geometric shape (area or line) that an individual result covers. `place` typed results have no `mapView`.
    attr_accessor :map_view

    # The list of categories assigned to this place.
    attr_accessor :categories

    # The list of chains assigned to this place.
    attr_accessor :chains

    # The list of supplier references available for this place.
    attr_accessor :references

    # The list of food types assigned to this place.
    attr_accessor :food_types

    # Contact information like phone, email, WWW.
    attr_accessor :contacts

    # A list of hours during which the place is open for business. This field is optional: When it is not present, it means that we are lacking data about the place opening hours. Days without opening hours have to be considered as closed.
    attr_accessor :opening_hours

    # BETA - Provides time zone information for this place. (rendered only if 'show=tz' is provided.)
    attr_accessor :time_zone

    # Extended attributes section to contain detailed information for specific result types.
    attr_accessor :extended

    # Phonemes for address and place names. (rendered only if 'show=phonemes' is provided.)
    attr_accessor :phonemes

    # Street Details (only rendered if 'show=streetInfo' is provided.)
    attr_accessor :street_info

    # Country Details (only rendered if 'show=countryInfo' is provided.)
    attr_accessor :country_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'id' => :'id',
        :'political_view' => :'politicalView',
        :'result_type' => :'resultType',
        :'house_number_type' => :'houseNumberType',
        :'address_block_type' => :'addressBlockType',
        :'locality_type' => :'localityType',
        :'administrative_area_type' => :'administrativeAreaType',
        :'house_number_fallback' => :'houseNumberFallback',
        :'address' => :'address',
        :'position' => :'position',
        :'access' => :'access',
        :'map_view' => :'mapView',
        :'categories' => :'categories',
        :'chains' => :'chains',
        :'references' => :'references',
        :'food_types' => :'foodTypes',
        :'contacts' => :'contacts',
        :'opening_hours' => :'openingHours',
        :'time_zone' => :'timeZone',
        :'extended' => :'extended',
        :'phonemes' => :'phonemes',
        :'street_info' => :'streetInfo',
        :'country_info' => :'countryInfo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'title' => :'String',
        :'id' => :'String',
        :'political_view' => :'String',
        :'result_type' => :'String',
        :'house_number_type' => :'String',
        :'address_block_type' => :'String',
        :'locality_type' => :'String',
        :'administrative_area_type' => :'String',
        :'house_number_fallback' => :'Boolean',
        :'address' => :'Address',
        :'position' => :'DisplayResponseCoordinate',
        :'access' => :'Array<AccessResponseCoordinate>',
        :'map_view' => :'MapView',
        :'categories' => :'Array<Category>',
        :'chains' => :'Array<Chain>',
        :'references' => :'Array<SupplierReference>',
        :'food_types' => :'Array<Category>',
        :'contacts' => :'Array<ContactInformation>',
        :'opening_hours' => :'Array<OpeningHours>',
        :'time_zone' => :'TimeZoneInfo',
        :'extended' => :'ExtendedAttribute',
        :'phonemes' => :'PhonemesSection',
        :'street_info' => :'Array<StreetInfo>',
        :'country_info' => :'CountryInfo'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'address',
        :'position',
        :'map_view',
        :'time_zone',
        :'extended',
        :'phonemes',
        :'country_info'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `HereGeocodingSearch::LookupResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HereGeocodingSearch::LookupResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'political_view')
        self.political_view = attributes[:'political_view']
      end

      if attributes.key?(:'result_type')
        self.result_type = attributes[:'result_type']
      end

      if attributes.key?(:'house_number_type')
        self.house_number_type = attributes[:'house_number_type']
      end

      if attributes.key?(:'address_block_type')
        self.address_block_type = attributes[:'address_block_type']
      end

      if attributes.key?(:'locality_type')
        self.locality_type = attributes[:'locality_type']
      end

      if attributes.key?(:'administrative_area_type')
        self.administrative_area_type = attributes[:'administrative_area_type']
      end

      if attributes.key?(:'house_number_fallback')
        self.house_number_fallback = attributes[:'house_number_fallback']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.key?(:'access')
        if (value = attributes[:'access']).is_a?(Array)
          self.access = value
        end
      end

      if attributes.key?(:'map_view')
        self.map_view = attributes[:'map_view']
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.key?(:'chains')
        if (value = attributes[:'chains']).is_a?(Array)
          self.chains = value
        end
      end

      if attributes.key?(:'references')
        if (value = attributes[:'references']).is_a?(Array)
          self.references = value
        end
      end

      if attributes.key?(:'food_types')
        if (value = attributes[:'food_types']).is_a?(Array)
          self.food_types = value
        end
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'opening_hours')
        if (value = attributes[:'opening_hours']).is_a?(Array)
          self.opening_hours = value
        end
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'extended')
        self.extended = attributes[:'extended']
      end

      if attributes.key?(:'phonemes')
        self.phonemes = attributes[:'phonemes']
      end

      if attributes.key?(:'street_info')
        if (value = attributes[:'street_info']).is_a?(Array)
          self.street_info = value
        end
      end

      if attributes.key?(:'country_info')
        self.country_info = attributes[:'country_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      result_type_validator = EnumAttributeValidator.new('String', ["administrativeArea", "locality", "street", "intersection", "addressBlock", "houseNumber", "postalCodePoint", "place"])
      return false unless result_type_validator.valid?(@result_type)
      house_number_type_validator = EnumAttributeValidator.new('String', ["PA", "interpolated"])
      return false unless house_number_type_validator.valid?(@house_number_type)
      address_block_type_validator = EnumAttributeValidator.new('String', ["block", "subblock"])
      return false unless address_block_type_validator.valid?(@address_block_type)
      locality_type_validator = EnumAttributeValidator.new('String', ["postalCode", "subdistrict", "district", "city"])
      return false unless locality_type_validator.valid?(@locality_type)
      administrative_area_type_validator = EnumAttributeValidator.new('String', ["county", "state", "country"])
      return false unless administrative_area_type_validator.valid?(@administrative_area_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result_type Object to be assigned
    def result_type=(result_type)
      validator = EnumAttributeValidator.new('String', ["administrativeArea", "locality", "street", "intersection", "addressBlock", "houseNumber", "postalCodePoint", "place"])
      unless validator.valid?(result_type)
        fail ArgumentError, "invalid value for \"result_type\", must be one of #{validator.allowable_values}."
      end
      @result_type = result_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] house_number_type Object to be assigned
    def house_number_type=(house_number_type)
      validator = EnumAttributeValidator.new('String', ["PA", "interpolated"])
      unless validator.valid?(house_number_type)
        fail ArgumentError, "invalid value for \"house_number_type\", must be one of #{validator.allowable_values}."
      end
      @house_number_type = house_number_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_block_type Object to be assigned
    def address_block_type=(address_block_type)
      validator = EnumAttributeValidator.new('String', ["block", "subblock"])
      unless validator.valid?(address_block_type)
        fail ArgumentError, "invalid value for \"address_block_type\", must be one of #{validator.allowable_values}."
      end
      @address_block_type = address_block_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locality_type Object to be assigned
    def locality_type=(locality_type)
      validator = EnumAttributeValidator.new('String', ["postalCode", "subdistrict", "district", "city"])
      unless validator.valid?(locality_type)
        fail ArgumentError, "invalid value for \"locality_type\", must be one of #{validator.allowable_values}."
      end
      @locality_type = locality_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] administrative_area_type Object to be assigned
    def administrative_area_type=(administrative_area_type)
      validator = EnumAttributeValidator.new('String', ["county", "state", "country"])
      unless validator.valid?(administrative_area_type)
        fail ArgumentError, "invalid value for \"administrative_area_type\", must be one of #{validator.allowable_values}."
      end
      @administrative_area_type = administrative_area_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          id == o.id &&
          political_view == o.political_view &&
          result_type == o.result_type &&
          house_number_type == o.house_number_type &&
          address_block_type == o.address_block_type &&
          locality_type == o.locality_type &&
          administrative_area_type == o.administrative_area_type &&
          house_number_fallback == o.house_number_fallback &&
          address == o.address &&
          position == o.position &&
          access == o.access &&
          map_view == o.map_view &&
          categories == o.categories &&
          chains == o.chains &&
          references == o.references &&
          food_types == o.food_types &&
          contacts == o.contacts &&
          opening_hours == o.opening_hours &&
          time_zone == o.time_zone &&
          extended == o.extended &&
          phonemes == o.phonemes &&
          street_info == o.street_info &&
          country_info == o.country_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, id, political_view, result_type, house_number_type, address_block_type, locality_type, administrative_area_type, house_number_fallback, address, position, access, map_view, categories, chains, references, food_types, contacts, opening_hours, time_zone, extended, phonemes, street_info, country_info].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = HereGeocodingSearch.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
