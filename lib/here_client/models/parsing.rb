=begin
#Geocoding and Search API v7

#This document describes the Geocoding and Search API.

The version of the OpenAPI document: 7.83

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module HereClient
  class Parsing
    # Place name matches
    attr_accessor :place_name

    # Country matches
    attr_accessor :country

    # State matches
    attr_accessor :state

    # County matches
    attr_accessor :county

    # City matches
    attr_accessor :city

    # District matches
    attr_accessor :district

    # Subdistrict matches
    attr_accessor :subdistrict

    # Street matches
    attr_accessor :street

    # Block matches
    attr_accessor :block

    # Subblock matches
    attr_accessor :subblock

    # HouseNumber matches
    attr_accessor :house_number

    # PostalCode matches
    attr_accessor :postal_code

    # Building matches
    attr_accessor :building

    # secondaryUnits matches
    attr_accessor :secondary_units

    # Ontology name matches
    attr_accessor :ontology_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'place_name' => :'placeName',
        :'country' => :'country',
        :'state' => :'state',
        :'county' => :'county',
        :'city' => :'city',
        :'district' => :'district',
        :'subdistrict' => :'subdistrict',
        :'street' => :'street',
        :'block' => :'block',
        :'subblock' => :'subblock',
        :'house_number' => :'houseNumber',
        :'postal_code' => :'postalCode',
        :'building' => :'building',
        :'secondary_units' => :'secondaryUnits',
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
        :'place_name' => :'Array<MatchInfo>',
        :'country' => :'Array<MatchInfo>',
        :'state' => :'Array<MatchInfo>',
        :'county' => :'Array<MatchInfo>',
        :'city' => :'Array<MatchInfo>',
        :'district' => :'Array<MatchInfo>',
        :'subdistrict' => :'Array<MatchInfo>',
        :'street' => :'Array<MatchInfo>',
        :'block' => :'Array<MatchInfo>',
        :'subblock' => :'Array<MatchInfo>',
        :'house_number' => :'Array<MatchInfo>',
        :'postal_code' => :'Array<MatchInfo>',
        :'building' => :'Array<MatchInfo>',
        :'secondary_units' => :'Array<MatchInfo>',
        :'ontology_name' => :'Array<MatchInfo>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `HereClient::Parsing` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HereClient::Parsing`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'place_name')
        if (value = attributes[:'place_name']).is_a?(Array)
          self.place_name = value
        end
      end

      if attributes.key?(:'country')
        if (value = attributes[:'country']).is_a?(Array)
          self.country = value
        end
      end

      if attributes.key?(:'state')
        if (value = attributes[:'state']).is_a?(Array)
          self.state = value
        end
      end

      if attributes.key?(:'county')
        if (value = attributes[:'county']).is_a?(Array)
          self.county = value
        end
      end

      if attributes.key?(:'city')
        if (value = attributes[:'city']).is_a?(Array)
          self.city = value
        end
      end

      if attributes.key?(:'district')
        if (value = attributes[:'district']).is_a?(Array)
          self.district = value
        end
      end

      if attributes.key?(:'subdistrict')
        if (value = attributes[:'subdistrict']).is_a?(Array)
          self.subdistrict = value
        end
      end

      if attributes.key?(:'street')
        if (value = attributes[:'street']).is_a?(Array)
          self.street = value
        end
      end

      if attributes.key?(:'block')
        if (value = attributes[:'block']).is_a?(Array)
          self.block = value
        end
      end

      if attributes.key?(:'subblock')
        if (value = attributes[:'subblock']).is_a?(Array)
          self.subblock = value
        end
      end

      if attributes.key?(:'house_number')
        if (value = attributes[:'house_number']).is_a?(Array)
          self.house_number = value
        end
      end

      if attributes.key?(:'postal_code')
        if (value = attributes[:'postal_code']).is_a?(Array)
          self.postal_code = value
        end
      end

      if attributes.key?(:'building')
        if (value = attributes[:'building']).is_a?(Array)
          self.building = value
        end
      end

      if attributes.key?(:'secondary_units')
        if (value = attributes[:'secondary_units']).is_a?(Array)
          self.secondary_units = value
        end
      end

      if attributes.key?(:'ontology_name')
        if (value = attributes[:'ontology_name']).is_a?(Array)
          self.ontology_name = value
        end
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
          place_name == o.place_name &&
          country == o.country &&
          state == o.state &&
          county == o.county &&
          city == o.city &&
          district == o.district &&
          subdistrict == o.subdistrict &&
          street == o.street &&
          block == o.block &&
          subblock == o.subblock &&
          house_number == o.house_number &&
          postal_code == o.postal_code &&
          building == o.building &&
          secondary_units == o.secondary_units &&
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
      [place_name, country, state, county, city, district, subdistrict, street, block, subblock, house_number, postal_code, building, secondary_units, ontology_name].hash
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
        klass = HereClient.const_get(type)
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
