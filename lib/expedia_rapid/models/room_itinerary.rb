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
  # The room information.
  class RoomItinerary
    # The room id.
    attr_accessor :id

    attr_accessor :confirmation_id

    # Unique identifier for a bed type.
    attr_accessor :bed_group_id

    # The check-in date of the itinerary.
    attr_accessor :checkin

    # The check-out date of the itinerary.
    attr_accessor :checkout

    # The number of adults staying in the room.
    attr_accessor :number_of_adults

    # The ages of children for the room.
    attr_accessor :child_ages

    # The first name of the main guest staying in the room.
    attr_accessor :given_name

    # The last name of the main guest staying in the room.
    attr_accessor :family_name

    # The booking status of the room.
    attr_accessor :status

    # Any special request info associated with the room.
    attr_accessor :special_request

    # Indicates if the room is smoking or non-smoking.
    attr_accessor :smoking

    # Deprecated. Please use the loyalty id inside the loyalty object.
    attr_accessor :loyalty_id

    attr_accessor :loyalty

    attr_accessor :rate

    attr_accessor :links

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
        :'id' => :'id',
        :'confirmation_id' => :'confirmation_id',
        :'bed_group_id' => :'bed_group_id',
        :'checkin' => :'checkin',
        :'checkout' => :'checkout',
        :'number_of_adults' => :'number_of_adults',
        :'child_ages' => :'child_ages',
        :'given_name' => :'given_name',
        :'family_name' => :'family_name',
        :'status' => :'status',
        :'special_request' => :'special_request',
        :'smoking' => :'smoking',
        :'loyalty_id' => :'loyalty_id',
        :'loyalty' => :'loyalty',
        :'rate' => :'rate',
        :'links' => :'links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'confirmation_id' => :'GetReservation200ResponseInnerRoomsInnerConfirmationId',
        :'bed_group_id' => :'String',
        :'checkin' => :'String',
        :'checkout' => :'String',
        :'number_of_adults' => :'Float',
        :'child_ages' => :'Array<Float>',
        :'given_name' => :'String',
        :'family_name' => :'String',
        :'status' => :'String',
        :'special_request' => :'String',
        :'smoking' => :'Boolean',
        :'loyalty_id' => :'String',
        :'loyalty' => :'GetReservation200ResponseInnerRoomsInnerLoyalty',
        :'rate' => :'GetReservation200ResponseInnerRoomsInnerRate',
        :'links' => :'GetReservation200ResponseInnerRoomsInnerLinks'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ExpediaRapid::RoomItinerary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ExpediaRapid::RoomItinerary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'confirmation_id')
        self.confirmation_id = attributes[:'confirmation_id']
      end

      if attributes.key?(:'bed_group_id')
        self.bed_group_id = attributes[:'bed_group_id']
      end

      if attributes.key?(:'checkin')
        self.checkin = attributes[:'checkin']
      end

      if attributes.key?(:'checkout')
        self.checkout = attributes[:'checkout']
      end

      if attributes.key?(:'number_of_adults')
        self.number_of_adults = attributes[:'number_of_adults']
      end

      if attributes.key?(:'child_ages')
        if (value = attributes[:'child_ages']).is_a?(Array)
          self.child_ages = value
        end
      end

      if attributes.key?(:'given_name')
        self.given_name = attributes[:'given_name']
      end

      if attributes.key?(:'family_name')
        self.family_name = attributes[:'family_name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'special_request')
        self.special_request = attributes[:'special_request']
      end

      if attributes.key?(:'smoking')
        self.smoking = attributes[:'smoking']
      end

      if attributes.key?(:'loyalty_id')
        self.loyalty_id = attributes[:'loyalty_id']
      end

      if attributes.key?(:'loyalty')
        self.loyalty = attributes[:'loyalty']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'links')
        self.links = attributes[:'links']
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
      status_validator = EnumAttributeValidator.new('String', ["pending", "booked", "canceled"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["pending", "booked", "canceled"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          confirmation_id == o.confirmation_id &&
          bed_group_id == o.bed_group_id &&
          checkin == o.checkin &&
          checkout == o.checkout &&
          number_of_adults == o.number_of_adults &&
          child_ages == o.child_ages &&
          given_name == o.given_name &&
          family_name == o.family_name &&
          status == o.status &&
          special_request == o.special_request &&
          smoking == o.smoking &&
          loyalty_id == o.loyalty_id &&
          loyalty == o.loyalty &&
          rate == o.rate &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, confirmation_id, bed_group_id, checkin, checkout, number_of_adults, child_ages, given_name, family_name, status, special_request, smoking, loyalty_id, loyalty, rate, links].hash
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
