=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  class RAConfig
    # The maximum number of hops through which packets can pass before being discarded. 
    attr_accessor :hop_limit

    # The time interval in seconds, in which the prefix is advertised as valid. 
    attr_accessor :prefix_lifetime

    # The time interval in seconds, in which the prefix is advertised as preferred. 
    attr_accessor :prefix_preferred_time

    # Interval between 2 Router advertisement in seconds. 
    attr_accessor :ra_interval

    # Router lifetime value in seconds. A value of 0 indicates the router is not a default router for the receiving end. Any other value in this field specifies the lifetime, in seconds, associated with this router as a default router. 
    attr_accessor :router_lifetime

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hop_limit' => :'hop_limit',
        :'prefix_lifetime' => :'prefix_lifetime',
        :'prefix_preferred_time' => :'prefix_preferred_time',
        :'ra_interval' => :'ra_interval',
        :'router_lifetime' => :'router_lifetime'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'hop_limit' => :'Integer',
        :'prefix_lifetime' => :'Integer',
        :'prefix_preferred_time' => :'Integer',
        :'ra_interval' => :'Integer',
        :'router_lifetime' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'hop_limit')
        self.hop_limit = attributes[:'hop_limit']
      else
        self.hop_limit = 64
      end

      if attributes.has_key?(:'prefix_lifetime')
        self.prefix_lifetime = attributes[:'prefix_lifetime']
      else
        self.prefix_lifetime = 2592000
      end

      if attributes.has_key?(:'prefix_preferred_time')
        self.prefix_preferred_time = attributes[:'prefix_preferred_time']
      else
        self.prefix_preferred_time = 604800
      end

      if attributes.has_key?(:'ra_interval')
        self.ra_interval = attributes[:'ra_interval']
      else
        self.ra_interval = 600
      end

      if attributes.has_key?(:'router_lifetime')
        self.router_lifetime = attributes[:'router_lifetime']
      else
        self.router_lifetime = 1800
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@hop_limit.nil? && @hop_limit > 255
        invalid_properties.push('invalid value for "hop_limit", must be smaller than or equal to 255.')
      end

      if !@hop_limit.nil? && @hop_limit < 1
        invalid_properties.push('invalid value for "hop_limit", must be greater than or equal to 1.')
      end

      if !@prefix_lifetime.nil? && @prefix_lifetime > 3600000
        invalid_properties.push('invalid value for "prefix_lifetime", must be smaller than or equal to 3600000.')
      end

      if !@prefix_lifetime.nil? && @prefix_lifetime < 0
        invalid_properties.push('invalid value for "prefix_lifetime", must be greater than or equal to 0.')
      end

      if !@prefix_preferred_time.nil? && @prefix_preferred_time > 3600000
        invalid_properties.push('invalid value for "prefix_preferred_time", must be smaller than or equal to 3600000.')
      end

      if !@prefix_preferred_time.nil? && @prefix_preferred_time < 0
        invalid_properties.push('invalid value for "prefix_preferred_time", must be greater than or equal to 0.')
      end

      if !@ra_interval.nil? && @ra_interval > 1800
        invalid_properties.push('invalid value for "ra_interval", must be smaller than or equal to 1800.')
      end

      if !@ra_interval.nil? && @ra_interval < 4
        invalid_properties.push('invalid value for "ra_interval", must be greater than or equal to 4.')
      end

      if !@router_lifetime.nil? && @router_lifetime > 65520
        invalid_properties.push('invalid value for "router_lifetime", must be smaller than or equal to 65520.')
      end

      if !@router_lifetime.nil? && @router_lifetime < 0
        invalid_properties.push('invalid value for "router_lifetime", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@hop_limit.nil? && @hop_limit > 255
      return false if !@hop_limit.nil? && @hop_limit < 1
      return false if !@prefix_lifetime.nil? && @prefix_lifetime > 3600000
      return false if !@prefix_lifetime.nil? && @prefix_lifetime < 0
      return false if !@prefix_preferred_time.nil? && @prefix_preferred_time > 3600000
      return false if !@prefix_preferred_time.nil? && @prefix_preferred_time < 0
      return false if !@ra_interval.nil? && @ra_interval > 1800
      return false if !@ra_interval.nil? && @ra_interval < 4
      return false if !@router_lifetime.nil? && @router_lifetime > 65520
      return false if !@router_lifetime.nil? && @router_lifetime < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] hop_limit Value to be assigned
    def hop_limit=(hop_limit)
      if !hop_limit.nil? && hop_limit > 255
        fail ArgumentError, 'invalid value for "hop_limit", must be smaller than or equal to 255.'
      end

      if !hop_limit.nil? && hop_limit < 1
        fail ArgumentError, 'invalid value for "hop_limit", must be greater than or equal to 1.'
      end

      @hop_limit = hop_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] prefix_lifetime Value to be assigned
    def prefix_lifetime=(prefix_lifetime)
      if !prefix_lifetime.nil? && prefix_lifetime > 3600000
        fail ArgumentError, 'invalid value for "prefix_lifetime", must be smaller than or equal to 3600000.'
      end

      if !prefix_lifetime.nil? && prefix_lifetime < 0
        fail ArgumentError, 'invalid value for "prefix_lifetime", must be greater than or equal to 0.'
      end

      @prefix_lifetime = prefix_lifetime
    end

    # Custom attribute writer method with validation
    # @param [Object] prefix_preferred_time Value to be assigned
    def prefix_preferred_time=(prefix_preferred_time)
      if !prefix_preferred_time.nil? && prefix_preferred_time > 3600000
        fail ArgumentError, 'invalid value for "prefix_preferred_time", must be smaller than or equal to 3600000.'
      end

      if !prefix_preferred_time.nil? && prefix_preferred_time < 0
        fail ArgumentError, 'invalid value for "prefix_preferred_time", must be greater than or equal to 0.'
      end

      @prefix_preferred_time = prefix_preferred_time
    end

    # Custom attribute writer method with validation
    # @param [Object] ra_interval Value to be assigned
    def ra_interval=(ra_interval)
      if !ra_interval.nil? && ra_interval > 1800
        fail ArgumentError, 'invalid value for "ra_interval", must be smaller than or equal to 1800.'
      end

      if !ra_interval.nil? && ra_interval < 4
        fail ArgumentError, 'invalid value for "ra_interval", must be greater than or equal to 4.'
      end

      @ra_interval = ra_interval
    end

    # Custom attribute writer method with validation
    # @param [Object] router_lifetime Value to be assigned
    def router_lifetime=(router_lifetime)
      if !router_lifetime.nil? && router_lifetime > 65520
        fail ArgumentError, 'invalid value for "router_lifetime", must be smaller than or equal to 65520.'
      end

      if !router_lifetime.nil? && router_lifetime < 0
        fail ArgumentError, 'invalid value for "router_lifetime", must be greater than or equal to 0.'
      end

      @router_lifetime = router_lifetime
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hop_limit == o.hop_limit &&
          prefix_lifetime == o.prefix_lifetime &&
          prefix_preferred_time == o.prefix_preferred_time &&
          ra_interval == o.ra_interval &&
          router_lifetime == o.router_lifetime
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [hop_limit, prefix_lifetime, prefix_preferred_time, ra_interval, router_lifetime].hash
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
