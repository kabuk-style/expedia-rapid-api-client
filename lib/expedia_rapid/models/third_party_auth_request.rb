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
  class ThirdPartyAuthRequest
    # Cryptographic element used to indicate Authentication was successfully performed 
    attr_accessor :cavv

    # Electronic Commerce Indicator. The ECI is used in payer authentication to indicate the level of security used when the cardholder provided payment information to the merchant. Its value corresponds to the authentication result and the characteristics of the merchant checkout process. Each card network, e.g., Visa, MasterCard, JCB, has specific rules around the appropriate values and use of the ECI. 
    attr_accessor :eci

    # Indicates what version of 3DS was used to authenticate the user. 
    attr_accessor :three_ds_version

    # Directory Server Transaction Id. Returned during authentication and is used as an additional parameter to validate that transaction was authenticated. 
    attr_accessor :ds_transaction_id

    # set only if PAResStatus value is received in the authentication response 
    attr_accessor :pa_res_status

    # set this only if PAResStatus value is received in the authentication response if Authentication was Frictionless → AuthenticationResponse.PAResStatus, if Authentication was a successful challenge → \"C\" (This is the directory response for challenge) 
    attr_accessor :ve_res_status

    # String used by both Visa and MasterCard which identifies a specific transaction on the Directory This string value should remain consistent throughout a transaction's history. 
    attr_accessor :xid

    # Used in some scenarios for 3DS 1.0. 
    attr_accessor :cavv_algorithm

    # Only received for Mastercard transactions, else can be null. 0 - Non-SecureCode transaction, bypassed by the Merchant 1 - Merchant-Only SecureCode transaction 2 - Fully authenticated SecureCode transaction 
    attr_accessor :ucaf_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cavv' => :'cavv',
        :'eci' => :'eci',
        :'three_ds_version' => :'three_ds_version',
        :'ds_transaction_id' => :'ds_transaction_id',
        :'pa_res_status' => :'pa_res_status',
        :'ve_res_status' => :'ve_res_status',
        :'xid' => :'xid',
        :'cavv_algorithm' => :'cavv_algorithm',
        :'ucaf_indicator' => :'ucaf_indicator'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cavv' => :'String',
        :'eci' => :'String',
        :'three_ds_version' => :'String',
        :'ds_transaction_id' => :'String',
        :'pa_res_status' => :'String',
        :'ve_res_status' => :'String',
        :'xid' => :'String',
        :'cavv_algorithm' => :'String',
        :'ucaf_indicator' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ExpediaRapid::ThirdPartyAuthRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ExpediaRapid::ThirdPartyAuthRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cavv')
        self.cavv = attributes[:'cavv']
      else
        self.cavv = nil
      end

      if attributes.key?(:'eci')
        self.eci = attributes[:'eci']
      else
        self.eci = nil
      end

      if attributes.key?(:'three_ds_version')
        self.three_ds_version = attributes[:'three_ds_version']
      else
        self.three_ds_version = nil
      end

      if attributes.key?(:'ds_transaction_id')
        self.ds_transaction_id = attributes[:'ds_transaction_id']
      else
        self.ds_transaction_id = nil
      end

      if attributes.key?(:'pa_res_status')
        self.pa_res_status = attributes[:'pa_res_status']
      end

      if attributes.key?(:'ve_res_status')
        self.ve_res_status = attributes[:'ve_res_status']
      end

      if attributes.key?(:'xid')
        self.xid = attributes[:'xid']
      end

      if attributes.key?(:'cavv_algorithm')
        self.cavv_algorithm = attributes[:'cavv_algorithm']
      end

      if attributes.key?(:'ucaf_indicator')
        self.ucaf_indicator = attributes[:'ucaf_indicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @cavv.nil?
        invalid_properties.push('invalid value for "cavv", cavv cannot be nil.')
      end

      if @eci.nil?
        invalid_properties.push('invalid value for "eci", eci cannot be nil.')
      end

      if @three_ds_version.nil?
        invalid_properties.push('invalid value for "three_ds_version", three_ds_version cannot be nil.')
      end

      if @ds_transaction_id.nil?
        invalid_properties.push('invalid value for "ds_transaction_id", ds_transaction_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @cavv.nil?
      return false if @eci.nil?
      return false if @three_ds_version.nil?
      return false if @ds_transaction_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cavv == o.cavv &&
          eci == o.eci &&
          three_ds_version == o.three_ds_version &&
          ds_transaction_id == o.ds_transaction_id &&
          pa_res_status == o.pa_res_status &&
          ve_res_status == o.ve_res_status &&
          xid == o.xid &&
          cavv_algorithm == o.cavv_algorithm &&
          ucaf_indicator == o.ucaf_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cavv, eci, three_ds_version, ds_transaction_id, pa_res_status, ve_res_status, xid, cavv_algorithm, ucaf_indicator].hash
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
