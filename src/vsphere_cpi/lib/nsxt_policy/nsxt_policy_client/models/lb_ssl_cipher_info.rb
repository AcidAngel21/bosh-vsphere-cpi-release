=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # SSL cipher
  class LbSslCipherInfo
    # SSL cipher
    attr_accessor :cipher

    # Several cipher groups might contain the same cipher suite, each cipher suite could have multiple cipher group labels. 
    attr_accessor :cipher_group_labels

    # Default SSL cipher flag
    attr_accessor :is_default

    # Secure/insecure SSL cipher flag
    attr_accessor :is_secure

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
        :'cipher' => :'cipher',
        :'cipher_group_labels' => :'cipher_group_labels',
        :'is_default' => :'is_default',
        :'is_secure' => :'is_secure'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cipher' => :'String',
        :'cipher_group_labels' => :'Array<String>',
        :'is_default' => :'BOOLEAN',
        :'is_secure' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cipher')
        self.cipher = attributes[:'cipher']
      end

      if attributes.has_key?(:'cipher_group_labels')
        if (value = attributes[:'cipher_group_labels']).is_a?(Array)
          self.cipher_group_labels = value
        end
      end

      if attributes.has_key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.has_key?(:'is_secure')
        self.is_secure = attributes[:'is_secure']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cipher.nil?
        invalid_properties.push('invalid value for "cipher", cipher cannot be nil.')
      end

      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      if @is_secure.nil?
        invalid_properties.push('invalid value for "is_secure", is_secure cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cipher.nil?
      cipher_validator = EnumAttributeValidator.new('String', ['TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA256', 'TLS_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384'])
      return false unless cipher_validator.valid?(@cipher)
      return false if @is_default.nil?
      return false if @is_secure.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cipher Object to be assigned
    def cipher=(cipher)
      validator = EnumAttributeValidator.new('String', ['TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA256', 'TLS_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384'])
      unless validator.valid?(cipher)
        fail ArgumentError, 'invalid value for "cipher", must be one of #{validator.allowable_values}.'
      end
      @cipher = cipher
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cipher == o.cipher &&
          cipher_group_labels == o.cipher_group_labels &&
          is_default == o.is_default &&
          is_secure == o.is_secure
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cipher, cipher_group_labels, is_default, is_secure].hash
    end

# Builds the object from hash
# @param [Hash] attributes Model attributes in the form of hash
# @return [Object] Returns the model itself
def build_from_hash(attributes)
  return nil unless attributes.is_a?(Hash)
  self.class.swagger_types.each_pair do |key, type|
    if type =~ /\AArray<(.*)>/i
      # check to ensure the input is an array given that the the attribute
      # is documented as an array but the input is not
      if attributes[self.class.attribute_map[key]].is_a?(Array)
        self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
      end
    elsif !attributes[self.class.attribute_map[key]].nil?
      self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
    end # or else data not found in attributes(hash), not an issue as the data can be optional
  end

  self
end

# Deserializes the data based on type
# @param string type Data type
# @param string value Value to be deserialized
# @return [Object] Deserialized data
def _deserialize(type, value)
  case type.to_sym
  when :DateTime
    DateTime.parse(value)
  when :Date
    Date.parse(value)
  when :String
    value.to_s
  when :Integer
    value.to_i
  when :Float
    value.to_f
  when :BOOLEAN
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
    # If value has resource_type - use it to deserialize
    unless value[:resource_type].nil?
      type = value[:resource_type].to_sym
    end
    temp_model = NSXTPolicyClient.const_get(type).new
    temp_model.build_from_hash(value)
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
    next if value.nil?
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
