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
  class FieldScore
    # Indicates how good the result country name or [ISO 3166-1 alpha-3] country code matches to the freeform or qualified input.
    attr_accessor :country

    # Indicates how good the result [ISO 3166-1 alpha-3] country code matches to the freeform or qualified input.
    attr_accessor :country_code

    # Indicates how good the result state name matches to the freeform or qualified input.
    attr_accessor :state

    # Indicates how good the result state code matches to the freeform or qualified input.
    attr_accessor :state_code

    # Indicates how good the result county name matches to the freeform or qualified input.
    attr_accessor :county

    # Indicates how good the result county code matches to the freeform or qualified input.
    attr_accessor :county_code

    # Indicates how good the result city name matches to the freeform or qualified input.
    attr_accessor :city

    # Indicates how good the result district name matches to the freeform or qualified input.
    attr_accessor :district

    # Indicates how good the result sub-district name matches to the freeform or qualified input.
    attr_accessor :subdistrict

    # Indicates how good the result street names match to the freeform or qualified input. If the input contains multiple street names, the field score is calculated and returned for each of them individually.
    attr_accessor :streets

    # Indicates how good the result block name matches to the freeform or qualified input.
    attr_accessor :block

    # Indicates how good the result sub-block name matches to the freeform or qualified input.
    attr_accessor :subblock

    # Indicates how good the result house number matches to the freeform or qualified input. It may happen, that the house number, which one is looking for, is not yet in the map data. For such cases, the /geocode returns the nearest known house number on the same street. This represents the numeric difference between the requested and the returned house numbers.
    attr_accessor :house_number

    # Indicates how good the result postal code matches to the freeform or qualified input.
    attr_accessor :postal_code

    # Indicates how good the result building name matches to the freeform or qualified input.
    attr_accessor :building

    # Indicates how good the result unit (such as a micro point address) matches to the freeform or qualified input.
    attr_accessor :unit

    # Indicates how good the result place name matches to the freeform or qualified input.
    attr_accessor :place_name

    # Indicates how good the result ontology name matches to the freeform or qualified input.
    attr_accessor :ontology_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'country' => :'country',
        :'country_code' => :'countryCode',
        :'state' => :'state',
        :'state_code' => :'stateCode',
        :'county' => :'county',
        :'county_code' => :'countyCode',
        :'city' => :'city',
        :'district' => :'district',
        :'subdistrict' => :'subdistrict',
        :'streets' => :'streets',
        :'block' => :'block',
        :'subblock' => :'subblock',
        :'house_number' => :'houseNumber',
        :'postal_code' => :'postalCode',
        :'building' => :'building',
        :'unit' => :'unit',
        :'place_name' => :'placeName',
        :'ontology_name' => :'ontologyName'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'country' => :'Float',
        :'country_code' => :'Float',
        :'state' => :'Float',
        :'state_code' => :'Float',
        :'county' => :'Float',
        :'county_code' => :'Float',
        :'city' => :'Float',
        :'district' => :'Float',
        :'subdistrict' => :'Float',
        :'streets' => :'Array<Float>',
        :'block' => :'Float',
        :'subblock' => :'Float',
        :'house_number' => :'Float',
        :'postal_code' => :'Float',
        :'building' => :'Float',
        :'unit' => :'Float',
        :'place_name' => :'Float',
        :'ontology_name' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `HereGeocodingSearch::FieldScore` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HereGeocodingSearch::FieldScore`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

      if attributes.key?(:'county')
        self.county = attributes[:'county']
      end

      if attributes.key?(:'county_code')
        self.county_code = attributes[:'county_code']
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

      if attributes.key?(:'streets')
        if (value = attributes[:'streets']).is_a?(Array)
          self.streets = value
        end
      end

      if attributes.key?(:'block')
        self.block = attributes[:'block']
      end

      if attributes.key?(:'subblock')
        self.subblock = attributes[:'subblock']
      end

      if attributes.key?(:'house_number')
        self.house_number = attributes[:'house_number']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'place_name')
        self.place_name = attributes[:'place_name']
      end

      if attributes.key?(:'ontology_name')
        self.ontology_name = attributes[:'ontology_name']
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
          country == o.country &&
          country_code == o.country_code &&
          state == o.state &&
          state_code == o.state_code &&
          county == o.county &&
          county_code == o.county_code &&
          city == o.city &&
          district == o.district &&
          subdistrict == o.subdistrict &&
          streets == o.streets &&
          block == o.block &&
          subblock == o.subblock &&
          house_number == o.house_number &&
          postal_code == o.postal_code &&
          building == o.building &&
          unit == o.unit &&
          place_name == o.place_name &&
          ontology_name == o.ontology_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [country, country_code, state, state_code, county, county_code, city, district, subdistrict, streets, block, subblock, house_number, postal_code, building, unit, place_name, ontology_name].hash
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