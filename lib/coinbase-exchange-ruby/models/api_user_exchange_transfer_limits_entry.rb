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
  class ApiUserExchangeTransferLimitsEntry
    attr_accessor :buy

    attr_accessor :sell

    attr_accessor :exchange_withdraw

    attr_accessor :ach

    attr_accessor :ach_no_balance

    attr_accessor :credit_debit_card

    attr_accessor :secure3d_buy

    attr_accessor :paypal_buy

    attr_accessor :paypal_withdrawal

    attr_accessor :ideal_deposit

    attr_accessor :sofort_deposit

    attr_accessor :instant_ach_withdrawal

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'buy' => :'buy',
        :'sell' => :'sell',
        :'exchange_withdraw' => :'exchange_withdraw',
        :'ach' => :'ach',
        :'ach_no_balance' => :'ach_no_balance',
        :'credit_debit_card' => :'credit_debit_card',
        :'secure3d_buy' => :'secure3d_buy',
        :'paypal_buy' => :'paypal_buy',
        :'paypal_withdrawal' => :'paypal_withdrawal',
        :'ideal_deposit' => :'ideal_deposit',
        :'sofort_deposit' => :'sofort_deposit',
        :'instant_ach_withdrawal' => :'instant_ach_withdrawal'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'buy' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'sell' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'exchange_withdraw' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'ach' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'ach_no_balance' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'credit_debit_card' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'secure3d_buy' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'paypal_buy' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'paypal_withdrawal' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'ideal_deposit' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'sofort_deposit' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>',
        :'instant_ach_withdrawal' => :'Hash<String, ApiUserExchangeTransferLimitsForCurrency>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CoinbasePro::ApiUserExchangeTransferLimitsEntry` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CoinbasePro::ApiUserExchangeTransferLimitsEntry`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'buy')
        if (value = attributes[:'buy']).is_a?(Hash)
          self.buy = value
        end
      end

      if attributes.key?(:'sell')
        if (value = attributes[:'sell']).is_a?(Hash)
          self.sell = value
        end
      end

      if attributes.key?(:'exchange_withdraw')
        if (value = attributes[:'exchange_withdraw']).is_a?(Hash)
          self.exchange_withdraw = value
        end
      end

      if attributes.key?(:'ach')
        if (value = attributes[:'ach']).is_a?(Hash)
          self.ach = value
        end
      end

      if attributes.key?(:'ach_no_balance')
        if (value = attributes[:'ach_no_balance']).is_a?(Hash)
          self.ach_no_balance = value
        end
      end

      if attributes.key?(:'credit_debit_card')
        if (value = attributes[:'credit_debit_card']).is_a?(Hash)
          self.credit_debit_card = value
        end
      end

      if attributes.key?(:'secure3d_buy')
        if (value = attributes[:'secure3d_buy']).is_a?(Hash)
          self.secure3d_buy = value
        end
      end

      if attributes.key?(:'paypal_buy')
        if (value = attributes[:'paypal_buy']).is_a?(Hash)
          self.paypal_buy = value
        end
      end

      if attributes.key?(:'paypal_withdrawal')
        if (value = attributes[:'paypal_withdrawal']).is_a?(Hash)
          self.paypal_withdrawal = value
        end
      end

      if attributes.key?(:'ideal_deposit')
        if (value = attributes[:'ideal_deposit']).is_a?(Hash)
          self.ideal_deposit = value
        end
      end

      if attributes.key?(:'sofort_deposit')
        if (value = attributes[:'sofort_deposit']).is_a?(Hash)
          self.sofort_deposit = value
        end
      end

      if attributes.key?(:'instant_ach_withdrawal')
        if (value = attributes[:'instant_ach_withdrawal']).is_a?(Hash)
          self.instant_ach_withdrawal = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @exchange_withdraw.nil?
        invalid_properties.push('invalid value for "exchange_withdraw", exchange_withdraw cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @exchange_withdraw.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          buy == o.buy &&
          sell == o.sell &&
          exchange_withdraw == o.exchange_withdraw &&
          ach == o.ach &&
          ach_no_balance == o.ach_no_balance &&
          credit_debit_card == o.credit_debit_card &&
          secure3d_buy == o.secure3d_buy &&
          paypal_buy == o.paypal_buy &&
          paypal_withdrawal == o.paypal_withdrawal &&
          ideal_deposit == o.ideal_deposit &&
          sofort_deposit == o.sofort_deposit &&
          instant_ach_withdrawal == o.instant_ach_withdrawal
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [buy, sell, exchange_withdraw, ach, ach_no_balance, credit_debit_card, secure3d_buy, paypal_buy, paypal_withdrawal, ideal_deposit, sofort_deposit, instant_ach_withdrawal].hash
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