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
  class Address
    # Assembled address value built out of the address components according to the regional postal rules. These are the same rules for all endpoints. It may not include all the input terms. For example: \"Schulstraße 4, 32547 Bad Oeynhausen, Germany\"
    attr_accessor :label

    # A three-letter country code. For example: \"DEU\"
    attr_accessor :country_code

    # The localised country name. For example: \"Deutschland\"
    attr_accessor :country_name

    # A state code or state name abbreviation – country specific. For example, in the United States it is the two letter state abbreviation: \"CA\" for California.
    attr_accessor :state_code

    # The state division of a country. For example: \"North Rhine-Westphalia\"
    attr_accessor :state

    # A county code or county name abbreviation – country specific. For example, for Italy it is the province abbreviation: \"RM\" for Rome.
    attr_accessor :county_code

    # A division of a state; typically, a secondary-level administrative division of a country or equivalent.
    attr_accessor :county

    # The name of the primary locality of the place. For example: \"Bad Oyenhausen\"
    attr_accessor :city

    # A division of city; typically an administrative unit within a larger city or a customary name of a city's neighborhood. For example: \"Bad Oyenhausen\"
    attr_accessor :district

    # A subdivision of a district. For example: \"Minden-Lübbecke\"
    attr_accessor :subdistrict

    # Name of street. For example: \"Schulstrasse\"
    attr_accessor :street

    # Name of block.
    attr_accessor :block

    # Name of sub-block.
    attr_accessor :subblock

    # An alphanumeric string included in a postal address to facilitate mail sorting, such as post code, postcode, or ZIP code. For example: \"32547\"
    attr_accessor :postal_code

    # House number. For example: \"4\"
    attr_accessor :house_number

    # Name of building.
    attr_accessor :building

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'label' => :'label',
        :'country_code' => :'countryCode',
        :'country_name' => :'countryName',
        :'state_code' => :'stateCode',
        :'state' => :'state',
        :'county_code' => :'countyCode',
        :'county' => :'county',
        :'city' => :'city',
        :'district' => :'district',
        :'subdistrict' => :'subdistrict',
        :'street' => :'street',
        :'block' => :'block',
        :'subblock' => :'subblock',
        :'postal_code' => :'postalCode',
        :'house_number' => :'houseNumber',
        :'building' => :'building'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'label' => :'String',
        :'country_code' => :'String',
        :'country_name' => :'String',
        :'state_code' => :'String',
        :'state' => :'String',
        :'county_code' => :'String',
        :'county' => :'String',
        :'city' => :'String',
        :'district' => :'String',
        :'subdistrict' => :'String',
        :'street' => :'String',
        :'block' => :'String',
        :'subblock' => :'String',
        :'postal_code' => :'String',
        :'house_number' => :'String',
        :'building' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `HereGeocodingSearch::Address` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HereGeocodingSearch::Address`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'country_name')
        self.country_name = attributes[:'country_name']
      end

      if attributes.key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'county_code')
        self.county_code = attributes[:'county_code']
      end

      if attributes.key?(:'county')
        self.county = attributes[:'county']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'district')
        self.district = attributes[:'district']
      end

      if attributes.key?(:'subdistrict')
        self.subdistrict = attributes[:'subdistrict']
      end

      if attributes.key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.key?(:'block')
        self.block = attributes[:'block']
      end

      if attributes.key?(:'subblock')
        self.subblock = attributes[:'subblock']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'house_number')
        self.house_number = attributes[:'house_number']
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          label == o.label &&
          country_code == o.country_code &&
          country_name == o.country_name &&
          state_code == o.state_code &&
          state == o.state &&
          county_code == o.county_code &&
          county == o.county &&
          city == o.city &&
          district == o.district &&
          subdistrict == o.subdistrict &&
          street == o.street &&
          block == o.block &&
          subblock == o.subblock &&
          postal_code == o.postal_code &&
          house_number == o.house_number &&
          building == o.building
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [label, country_code, country_name, state_code, state, county_code, county, city, district, subdistrict, street, block, subblock, postal_code, house_number, building].hash
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
