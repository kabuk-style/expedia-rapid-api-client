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
  # An unavailable reason that suggests ways that the request could be modified to locate available rooms and rates.
  class UnavailableReason
    # The code representing the reason. * `adults_exceed_threshold` - Number of adults requested exceeds room threshold. `data` will contain the maximum value. * `children_exceed_threshold` - Number of children requested exceeds room threshold. `data` will contain the maximum value. * `infants_exceed_threshold` - Number of infants requested exceeds room threshold. `data` will contain the maximum value. * `minimum_child_age` - Child age requested is less than the minimum age specified for the room. `data` will contain the minimum value. * `maximum_occupancy` - Number of occupants exceed the specified room limit. `data` will contain the maximum value. * `checkin_not_allowed` - Check-in not allowed for this stay date. * `checkout_not_allowed` - Check-out not allowed for this stay date. * `minimum_stay` - Length of stay is less than minimum. `data` will contain the minimum value. * `maximum_stay` - Length of stay is greater than maximum. `data` will contain the maximum value. * `restricted_stay_lengths` - Some stay lengths are not available for this check-in date. `data` will contain the allowed lengths separated by pipe `|`. eg. `3|5|6` * `same_day_restrictions` - Room is not available due to same day booking restrictions. * `maximum_rooms` - Room count exceeds provider limit. `data` will contain the maximum value. * `children_not_supported` - The property is restricted to adults only. * `minimum_advance_purchase` - Minimum Advance Purchase requirement not met. `data` will contain the minimum value. * `maximum_advance_purchase` - Maximum Advance Purchase requirement not met. `data` will contain the maximum value. * `partial_inventory_available` - Some of the dates have no inventory available for the specified duration. `data` will contain the unavailable dates separated by pipe `|`. eg. `2023-10-21|2023-10-23` * `no_inventory_available` - No inventory is available for the specified duration. 
    attr_accessor :code

    # An associated value that provides helpful information for some codes. Not present for all codes.
    attr_accessor :data

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
        :'code' => :'code',
        :'data' => :'data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'code' => :'String',
        :'data' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ExpediaRapid::UnavailableReason` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ExpediaRapid::UnavailableReason`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
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
      code_validator = EnumAttributeValidator.new('String', ["adults_exceed_threshold", "children_exceed_threshold", "infants_exceed_threshold", "minimum_child_age", "maximum_occupancy", "checkin_not_allowed", "checkout_not_allowed", "minimum_stay", "maximum_stay", "restricted_dates", "same_day_restrictions", "maximum_rooms", "children_not_supported", "minimum_advance_purchase", "maximum_advance_purchase", "partial_inventory_available", "no_inventory_available"])
      return false unless code_validator.valid?(@code)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code)
      validator = EnumAttributeValidator.new('String', ["adults_exceed_threshold", "children_exceed_threshold", "infants_exceed_threshold", "minimum_child_age", "maximum_occupancy", "checkin_not_allowed", "checkout_not_allowed", "minimum_stay", "maximum_stay", "restricted_dates", "same_day_restrictions", "maximum_rooms", "children_not_supported", "minimum_advance_purchase", "maximum_advance_purchase", "partial_inventory_available", "no_inventory_available"])
      unless validator.valid?(code)
        fail ArgumentError, "invalid value for \"code\", must be one of #{validator.allowable_values}."
      end
      @code = code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          data == o.data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, data].hash
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
