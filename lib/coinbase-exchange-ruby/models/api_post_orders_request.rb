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
  class ApiPostOrdersRequest
    # create order on a specific `profile_id`. If none is passed, defaults to `default` profile.
    attr_accessor :profile_id

    attr_accessor :type

    attr_accessor :side

    # Book on which to place an order
    attr_accessor :product_id

    attr_accessor :stp

    attr_accessor :stop

    # Price threshold at which a `stop` order will be placed on the book
    attr_accessor :stop_price

    # Price per unit of cryptocurrency - required for `limit`/`stop` orders
    attr_accessor :price

    # Amount of base currency to buy or sell - required for `limit`/`stop` orders and `market` `sell`s
    attr_accessor :size

    # Amount of quote currency to buy - required for `market` `buy`s
    attr_accessor :funds

    attr_accessor :time_in_force

    attr_accessor :cancel_after

    # If true, order will only execute as a `maker` order
    attr_accessor :post_only

    # Optional Order ID selected by the user or the frontend client to identify their order
    attr_accessor :client_oid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'profile_id' => :'profile_id',
        :'type' => :'type',
        :'side' => :'side',
        :'product_id' => :'product_id',
        :'stp' => :'stp',
        :'stop' => :'stop',
        :'stop_price' => :'stop_price',
        :'price' => :'price',
        :'size' => :'size',
        :'funds' => :'funds',
        :'time_in_force' => :'time_in_force',
        :'cancel_after' => :'cancel_after',
        :'post_only' => :'post_only',
        :'client_oid' => :'client_oid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'profile_id' => :'String',
        :'type' => :'ApiOrderType',
        :'side' => :'ApiOrderSide',
        :'product_id' => :'String',
        :'stp' => :'ApiOrderStpFlag',
        :'stop' => :'ApiOrderStop',
        :'stop_price' => :'String',
        :'price' => :'String',
        :'size' => :'String',
        :'funds' => :'String',
        :'time_in_force' => :'ApiOrderTimeInForce',
        :'cancel_after' => :'ApiOrderCancelAfter',
        :'post_only' => :'Boolean',
        :'client_oid' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CoinbasePro::ApiPostOrdersRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CoinbasePro::ApiPostOrdersRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'profile_id')
        self.profile_id = attributes[:'profile_id']
      else
        self.profile_id = 'default profile_id'
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'limit'
      end

      if attributes.key?(:'side')
        self.side = attributes[:'side']
      else
        self.side = 'buy'
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'stp')
        self.stp = attributes[:'stp']
      else
        self.stp = 'dc'
      end

      if attributes.key?(:'stop')
        self.stop = attributes[:'stop']
      else
        self.stop = 'loss'
      end

      if attributes.key?(:'stop_price')
        self.stop_price = attributes[:'stop_price']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'funds')
        self.funds = attributes[:'funds']
      end

      if attributes.key?(:'time_in_force')
        self.time_in_force = attributes[:'time_in_force']
      else
        self.time_in_force = 'GTC'
      end

      if attributes.key?(:'cancel_after')
        self.cancel_after = attributes[:'cancel_after']
      else
        self.cancel_after = 'min'
      end

      if attributes.key?(:'post_only')
        self.post_only = attributes[:'post_only']
      else
        self.post_only = false
      end

      if attributes.key?(:'client_oid')
        self.client_oid = attributes[:'client_oid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @side.nil?
        invalid_properties.push('invalid value for "side", side cannot be nil.')
      end

      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @side.nil?
      return false if @product_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          profile_id == o.profile_id &&
          type == o.type &&
          side == o.side &&
          product_id == o.product_id &&
          stp == o.stp &&
          stop == o.stop &&
          stop_price == o.stop_price &&
          price == o.price &&
          size == o.size &&
          funds == o.funds &&
          time_in_force == o.time_in_force &&
          cancel_after == o.cancel_after &&
          post_only == o.post_only &&
          client_oid == o.client_oid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [profile_id, type, side, product_id, stp, stop, stop_price, price, size, funds, time_in_force, cancel_after, post_only, client_oid].hash
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
