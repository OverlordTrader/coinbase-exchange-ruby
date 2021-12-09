=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module CoinbasePro
  class ApiCurrencyDetails
    attr_accessor :type

    attr_accessor :symbol

    attr_accessor :network_confirmations

    attr_accessor :sort_order

    attr_accessor :crypto_address_link

    attr_accessor :crypto_transaction_link

    attr_accessor :push_payment_methods

    attr_accessor :group_types

    attr_accessor :display_name

    attr_accessor :processing_time_seconds

    attr_accessor :min_withdrawal_amount

    attr_accessor :max_withdrawal_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'symbol' => :'symbol',
        :'network_confirmations' => :'network_confirmations',
        :'sort_order' => :'sort_order',
        :'crypto_address_link' => :'crypto_address_link',
        :'crypto_transaction_link' => :'crypto_transaction_link',
        :'push_payment_methods' => :'push_payment_methods',
        :'group_types' => :'group_types',
        :'display_name' => :'display_name',
        :'processing_time_seconds' => :'processing_time_seconds',
        :'min_withdrawal_amount' => :'min_withdrawal_amount',
        :'max_withdrawal_amount' => :'max_withdrawal_amount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'ApiCurrencyType',
        :'symbol' => :'String',
        :'network_confirmations' => :'Integer',
        :'sort_order' => :'Integer',
        :'crypto_address_link' => :'String',
        :'crypto_transaction_link' => :'String',
        :'push_payment_methods' => :'Array<String>',
        :'group_types' => :'Array<String>',
        :'display_name' => :'String',
        :'processing_time_seconds' => :'Float',
        :'min_withdrawal_amount' => :'Float',
        :'max_withdrawal_amount' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CoinbasePro::ApiCurrencyDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CoinbasePro::ApiCurrencyDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'crypto'
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'network_confirmations')
        self.network_confirmations = attributes[:'network_confirmations']
      end

      if attributes.key?(:'sort_order')
        self.sort_order = attributes[:'sort_order']
      end

      if attributes.key?(:'crypto_address_link')
        self.crypto_address_link = attributes[:'crypto_address_link']
      end

      if attributes.key?(:'crypto_transaction_link')
        self.crypto_transaction_link = attributes[:'crypto_transaction_link']
      end

      if attributes.key?(:'push_payment_methods')
        if (value = attributes[:'push_payment_methods']).is_a?(Array)
          self.push_payment_methods = value
        end
      end

      if attributes.key?(:'group_types')
        if (value = attributes[:'group_types']).is_a?(Array)
          self.group_types = value
        end
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'processing_time_seconds')
        self.processing_time_seconds = attributes[:'processing_time_seconds']
      end

      if attributes.key?(:'min_withdrawal_amount')
        self.min_withdrawal_amount = attributes[:'min_withdrawal_amount']
      end

      if attributes.key?(:'max_withdrawal_amount')
        self.max_withdrawal_amount = attributes[:'max_withdrawal_amount']
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
          type == o.type &&
          symbol == o.symbol &&
          network_confirmations == o.network_confirmations &&
          sort_order == o.sort_order &&
          crypto_address_link == o.crypto_address_link &&
          crypto_transaction_link == o.crypto_transaction_link &&
          push_payment_methods == o.push_payment_methods &&
          group_types == o.group_types &&
          display_name == o.display_name &&
          processing_time_seconds == o.processing_time_seconds &&
          min_withdrawal_amount == o.min_withdrawal_amount &&
          max_withdrawal_amount == o.max_withdrawal_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, symbol, network_confirmations, sort_order, crypto_address_link, crypto_transaction_link, push_payment_methods, group_types, display_name, processing_time_seconds, min_withdrawal_amount, max_withdrawal_amount].hash
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
        klass = CoinbasePro.const_get(type)
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