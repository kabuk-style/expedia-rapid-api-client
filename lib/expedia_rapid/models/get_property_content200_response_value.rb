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
  # An individual property object in the map of property objects.
  class GetPropertyContent200ResponseValue
    # Unique Expedia property ID.
    attr_accessor :property_id

    # Property name.
    attr_accessor :name

    attr_accessor :address

    attr_accessor :ratings

    attr_accessor :location

    # The property's phone number.
    attr_accessor :phone

    # The property's fax number.
    attr_accessor :fax

    attr_accessor :category

    attr_accessor :business_model

    # The property’s rank across all properties. This value sorts properties based on EPS transactional data and details about the property, with 1 indicating the best-performing property and others following in ascending numerical order.
    attr_accessor :rank

    attr_accessor :checkin

    attr_accessor :checkout

    attr_accessor :fees

    attr_accessor :policies

    attr_accessor :attributes

    # Lists all of the amenities available for all guests at the property. See our [amenities reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known amenity ID and name values.
    attr_accessor :amenities

    # Contains all property images available.
    attr_accessor :images

    attr_accessor :onsite_payments

    # Information about all of the rooms at the property.
    attr_accessor :rooms

    # Additional information about the rates offered by the property. This should be used in conjunction with the pricing and other rate-related information in shopping.
    attr_accessor :rates

    attr_accessor :dates

    attr_accessor :descriptions

    # Statistics of the property, such as number of floors. See our [statistics reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known statistics ID and name values.
    attr_accessor :statistics

    attr_accessor :airports

    # Themes that describe the property. See our [themes reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known theme ID and name values.
    attr_accessor :themes

    attr_accessor :all_inclusive

    # Tax ID.
    attr_accessor :tax_id

    attr_accessor :chain

    attr_accessor :brand

    # Languages spoken at the property.
    attr_accessor :spoken_languages

    # Boolean value indicating if a property is a multi-unit property.
    attr_accessor :multi_unit

    # Boolean value indicating if a property may require payment registration to process payments, even when using the property_collect Business Model. If true, then a property may not be successfully bookable without registering payments first.
    attr_accessor :payment_registration_recommended

    attr_accessor :vacation_rental_details

    # The supply source of the property.
    attr_accessor :supply_source

    # The property's registry number required by some jurisdictions.
    attr_accessor :registry_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'property_id' => :'property_id',
        :'name' => :'name',
        :'address' => :'address',
        :'ratings' => :'ratings',
        :'location' => :'location',
        :'phone' => :'phone',
        :'fax' => :'fax',
        :'category' => :'category',
        :'business_model' => :'business_model',
        :'rank' => :'rank',
        :'checkin' => :'checkin',
        :'checkout' => :'checkout',
        :'fees' => :'fees',
        :'policies' => :'policies',
        :'attributes' => :'attributes',
        :'amenities' => :'amenities',
        :'images' => :'images',
        :'onsite_payments' => :'onsite_payments',
        :'rooms' => :'rooms',
        :'rates' => :'rates',
        :'dates' => :'dates',
        :'descriptions' => :'descriptions',
        :'statistics' => :'statistics',
        :'airports' => :'airports',
        :'themes' => :'themes',
        :'all_inclusive' => :'all_inclusive',
        :'tax_id' => :'tax_id',
        :'chain' => :'chain',
        :'brand' => :'brand',
        :'spoken_languages' => :'spoken_languages',
        :'multi_unit' => :'multi_unit',
        :'payment_registration_recommended' => :'payment_registration_recommended',
        :'vacation_rental_details' => :'vacation_rental_details',
        :'supply_source' => :'supply_source',
        :'registry_number' => :'registry_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'property_id' => :'String',
        :'name' => :'String',
        :'address' => :'GetPropertyContent200ResponseValueAddress',
        :'ratings' => :'GetPropertyContent200ResponseValueRatings',
        :'location' => :'GetPropertyContent200ResponseValueLocation',
        :'phone' => :'String',
        :'fax' => :'String',
        :'category' => :'GetPropertyContent200ResponseValueCategory',
        :'business_model' => :'GetPropertyContent200ResponseValueBusinessModel',
        :'rank' => :'Float',
        :'checkin' => :'GetPropertyContent200ResponseValueCheckin',
        :'checkout' => :'GetPropertyContent200ResponseValueCheckout',
        :'fees' => :'GetPropertyContent200ResponseValueFees',
        :'policies' => :'GetPropertyContent200ResponseValuePolicies',
        :'attributes' => :'GetPropertyContent200ResponseValueAttributes',
        :'amenities' => :'Hash<String, GetPropertyContent200ResponseValueAmenitiesValue>',
        :'images' => :'Array<GetPropertyContent200ResponseValueImagesInner>',
        :'onsite_payments' => :'GetPropertyContent200ResponseValueOnsitePayments',
        :'rooms' => :'Hash<String, GetPropertyContent200ResponseValueRoomsValue>',
        :'rates' => :'Hash<String, GetPropertyContent200ResponseValueRatesValue>',
        :'dates' => :'GetPropertyContent200ResponseValueDates',
        :'descriptions' => :'GetPropertyContent200ResponseValueDescriptions',
        :'statistics' => :'Hash<String, GetPropertyContent200ResponseValueStatisticsValue>',
        :'airports' => :'GetPropertyContent200ResponseValueAirports',
        :'themes' => :'Hash<String, GetPropertyContent200ResponseValueThemesValue>',
        :'all_inclusive' => :'GetPropertyContent200ResponseValueAllInclusive',
        :'tax_id' => :'String',
        :'chain' => :'GetPropertyContent200ResponseValueChain',
        :'brand' => :'GetPropertyContent200ResponseValueChainBrandsValue',
        :'spoken_languages' => :'Hash<String, GetPropertyContent200ResponseValueSpokenLanguagesValue>',
        :'multi_unit' => :'Boolean',
        :'payment_registration_recommended' => :'Boolean',
        :'vacation_rental_details' => :'GetPropertyContent200ResponseValueVacationRentalDetails',
        :'supply_source' => :'String',
        :'registry_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ExpediaRapid::GetPropertyContent200ResponseValue` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ExpediaRapid::GetPropertyContent200ResponseValue`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'property_id')
        self.property_id = attributes[:'property_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'ratings')
        self.ratings = attributes[:'ratings']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'business_model')
        self.business_model = attributes[:'business_model']
      end

      if attributes.key?(:'rank')
        self.rank = attributes[:'rank']
      end

      if attributes.key?(:'checkin')
        self.checkin = attributes[:'checkin']
      end

      if attributes.key?(:'checkout')
        self.checkout = attributes[:'checkout']
      end

      if attributes.key?(:'fees')
        self.fees = attributes[:'fees']
      end

      if attributes.key?(:'policies')
        self.policies = attributes[:'policies']
      end

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.key?(:'amenities')
        if (value = attributes[:'amenities']).is_a?(Hash)
          self.amenities = value
        end
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:'onsite_payments')
        self.onsite_payments = attributes[:'onsite_payments']
      end

      if attributes.key?(:'rooms')
        if (value = attributes[:'rooms']).is_a?(Hash)
          self.rooms = value
        end
      end

      if attributes.key?(:'rates')
        if (value = attributes[:'rates']).is_a?(Hash)
          self.rates = value
        end
      end

      if attributes.key?(:'dates')
        self.dates = attributes[:'dates']
      end

      if attributes.key?(:'descriptions')
        self.descriptions = attributes[:'descriptions']
      end

      if attributes.key?(:'statistics')
        if (value = attributes[:'statistics']).is_a?(Hash)
          self.statistics = value
        end
      end

      if attributes.key?(:'airports')
        self.airports = attributes[:'airports']
      end

      if attributes.key?(:'themes')
        if (value = attributes[:'themes']).is_a?(Hash)
          self.themes = value
        end
      end

      if attributes.key?(:'all_inclusive')
        self.all_inclusive = attributes[:'all_inclusive']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'chain')
        self.chain = attributes[:'chain']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'spoken_languages')
        if (value = attributes[:'spoken_languages']).is_a?(Hash)
          self.spoken_languages = value
        end
      end

      if attributes.key?(:'multi_unit')
        self.multi_unit = attributes[:'multi_unit']
      end

      if attributes.key?(:'payment_registration_recommended')
        self.payment_registration_recommended = attributes[:'payment_registration_recommended']
      end

      if attributes.key?(:'vacation_rental_details')
        self.vacation_rental_details = attributes[:'vacation_rental_details']
      end

      if attributes.key?(:'supply_source')
        self.supply_source = attributes[:'supply_source']
      end

      if attributes.key?(:'registry_number')
        self.registry_number = attributes[:'registry_number']
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
          property_id == o.property_id &&
          name == o.name &&
          address == o.address &&
          ratings == o.ratings &&
          location == o.location &&
          phone == o.phone &&
          fax == o.fax &&
          category == o.category &&
          business_model == o.business_model &&
          rank == o.rank &&
          checkin == o.checkin &&
          checkout == o.checkout &&
          fees == o.fees &&
          policies == o.policies &&
          attributes == o.attributes &&
          amenities == o.amenities &&
          images == o.images &&
          onsite_payments == o.onsite_payments &&
          rooms == o.rooms &&
          rates == o.rates &&
          dates == o.dates &&
          descriptions == o.descriptions &&
          statistics == o.statistics &&
          airports == o.airports &&
          themes == o.themes &&
          all_inclusive == o.all_inclusive &&
          tax_id == o.tax_id &&
          chain == o.chain &&
          brand == o.brand &&
          spoken_languages == o.spoken_languages &&
          multi_unit == o.multi_unit &&
          payment_registration_recommended == o.payment_registration_recommended &&
          vacation_rental_details == o.vacation_rental_details &&
          supply_source == o.supply_source &&
          registry_number == o.registry_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [property_id, name, address, ratings, location, phone, fax, category, business_model, rank, checkin, checkout, fees, policies, attributes, amenities, images, onsite_payments, rooms, rates, dates, descriptions, statistics, airports, themes, all_inclusive, tax_id, chain, brand, spoken_languages, multi_unit, payment_registration_recommended, vacation_rental_details, supply_source, registry_number].hash
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
