=begin
#Rapid

#EPS Rapid V3

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module ExpediaRapid
  # Container for the property's address information.
  class GetPropertyContent200ResponseValueAddress
    # Address line 1.
    attr_accessor :line_1

    # Address line 2.
    attr_accessor :line_2

    # City.
    attr_accessor :city

    # 2-letter or 3-letter state/province code for Australia, Canada and the USA.
    attr_accessor :state_province_code

    # Text name of the State/Province - more common for additional countries.
    attr_accessor :state_province_name

    # Postal/zip code.
    attr_accessor :postal_code

    # 2-letter country code, in ISO 3166-1 alpha-2 format.
    attr_accessor :country_code

    # Flag to indicate whether a property address requires obfuscation before the property has been booked. If true, only the city, province, and country of the address can be shown to the customer.
    attr_accessor :obfuscation_required

    attr_accessor :localized

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'line_1' => :'line_1',
        :'line_2' => :'line_2',
        :'city' => :'city',
        :'state_province_code' => :'state_province_code',
        :'state_province_name' => :'state_province_name',
        :'postal_code' => :'postal_code',
        :'country_code' => :'country_code',
        :'obfuscation_required' => :'obfuscation_required',
        :'localized' => :'localized'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'line_1' => :'String',
        :'line_2' => :'String',
        :'city' => :'String',
        :'state_province_code' => :'String',
        :'state_province_name' => :'String',
        :'postal_code' => :'String',
        :'country_code' => :'String',
        :'obfuscation_required' => :'Boolean',
        :'localized' => :'GetPropertyContent200ResponseValueAddressLocalized'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ExpediaRapid::GetPropertyContent200ResponseValueAddress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ExpediaRapid::GetPropertyContent200ResponseValueAddress`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'line_1')
        self.line_1 = attributes[:'line_1']
      end

      if attributes.key?(:'line_2')
        self.line_2 = attributes[:'line_2']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state_province_code')
        self.state_province_code = attributes[:'state_province_code']
      end

      if attributes.key?(:'state_province_name')
        self.state_province_name = attributes[:'state_province_name']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'obfuscation_required')
        self.obfuscation_required = attributes[:'obfuscation_required']
      end

      if attributes.key?(:'localized')
        self.localized = attributes[:'localized']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          line_1 == o.line_1 &&
          line_2 == o.line_2 &&
          city == o.city &&
          state_province_code == o.state_province_code &&
          state_province_name == o.state_province_name &&
          postal_code == o.postal_code &&
          country_code == o.country_code &&
          obfuscation_required == o.obfuscation_required &&
          localized == o.localized
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [line_1, line_2, city, state_province_code, state_province_name, postal_code, country_code, obfuscation_required, localized].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = ExpediaRapid.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
