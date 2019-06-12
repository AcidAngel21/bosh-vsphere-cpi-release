=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # Pool member.
  class LBPoolMember
    # Member admin state.
    attr_accessor :admin_state

    # Backup servers are typically configured with a sorry page indicating to the user that the application is currently unavailable. While the pool is active (a specified minimum number of pool members are active) BACKUP members are skipped during server selection. When the pool is inactive, incoming connections are sent to only the BACKUP member(s). 
    attr_accessor :backup_member

    # Pool member name.
    attr_accessor :display_name

    # Pool member IP address.
    attr_accessor :ip_address

    # To ensure members are not overloaded, connections to a member can be capped by the load balancer. When a member reaches this limit, it is skipped during server selection. If it is not specified, it means that connections are unlimited. 
    attr_accessor :max_concurrent_connections

    # If port is specified, all connections will be sent to this port. Only single port is supported. If unset, the same port the client connected to will be used, it could be overrode by default_pool_member_port setting in virtual server. The port should not specified for port range case. 
    attr_accessor :port

    # Pool member weight is used for WEIGHTED_ROUND_ROBIN balancing algorithm. The weight value would be ignored in other algorithms. 
    attr_accessor :weight

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
        :'admin_state' => :'admin_state',
        :'backup_member' => :'backup_member',
        :'display_name' => :'display_name',
        :'ip_address' => :'ip_address',
        :'max_concurrent_connections' => :'max_concurrent_connections',
        :'port' => :'port',
        :'weight' => :'weight'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'admin_state' => :'String',
        :'backup_member' => :'BOOLEAN',
        :'display_name' => :'String',
        :'ip_address' => :'String',
        :'max_concurrent_connections' => :'Integer',
        :'port' => :'String',
        :'weight' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'admin_state')
        self.admin_state = attributes[:'admin_state']
      else
        self.admin_state = 'ENABLED'
      end

      if attributes.has_key?(:'backup_member')
        self.backup_member = attributes[:'backup_member']
      else
        self.backup_member = false
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'max_concurrent_connections')
        self.max_concurrent_connections = attributes[:'max_concurrent_connections']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      else
        self.weight = 1
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ip_address.nil?
        invalid_properties.push('invalid value for "ip_address", ip_address cannot be nil.')
      end

      if !@max_concurrent_connections.nil? && @max_concurrent_connections > 2147483647
        invalid_properties.push('invalid value for "max_concurrent_connections", must be smaller than or equal to 2147483647.')
      end

      if !@max_concurrent_connections.nil? && @max_concurrent_connections < 1
        invalid_properties.push('invalid value for "max_concurrent_connections", must be greater than or equal to 1.')
      end

      if !@weight.nil? && @weight > 256
        invalid_properties.push('invalid value for "weight", must be smaller than or equal to 256.')
      end

      if !@weight.nil? && @weight < 1
        invalid_properties.push('invalid value for "weight", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      admin_state_validator = EnumAttributeValidator.new('String', ['ENABLED', 'DISABLED', 'GRACEFUL_DISABLED'])
      return false unless admin_state_validator.valid?(@admin_state)
      return false if @ip_address.nil?
      return false if !@max_concurrent_connections.nil? && @max_concurrent_connections > 2147483647
      return false if !@max_concurrent_connections.nil? && @max_concurrent_connections < 1
      return false if !@weight.nil? && @weight > 256
      return false if !@weight.nil? && @weight < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] admin_state Object to be assigned
    def admin_state=(admin_state)
      validator = EnumAttributeValidator.new('String', ['ENABLED', 'DISABLED', 'GRACEFUL_DISABLED'])
      unless validator.valid?(admin_state)
        fail ArgumentError, 'invalid value for "admin_state", must be one of #{validator.allowable_values}.'
      end
      @admin_state = admin_state
    end

    # Custom attribute writer method with validation
    # @param [Object] max_concurrent_connections Value to be assigned
    def max_concurrent_connections=(max_concurrent_connections)
      if !max_concurrent_connections.nil? && max_concurrent_connections > 2147483647
        fail ArgumentError, 'invalid value for "max_concurrent_connections", must be smaller than or equal to 2147483647.'
      end

      if !max_concurrent_connections.nil? && max_concurrent_connections < 1
        fail ArgumentError, 'invalid value for "max_concurrent_connections", must be greater than or equal to 1.'
      end

      @max_concurrent_connections = max_concurrent_connections
    end

    # Custom attribute writer method with validation
    # @param [Object] weight Value to be assigned
    def weight=(weight)
      if !weight.nil? && weight > 256
        fail ArgumentError, 'invalid value for "weight", must be smaller than or equal to 256.'
      end

      if !weight.nil? && weight < 1
        fail ArgumentError, 'invalid value for "weight", must be greater than or equal to 1.'
      end

      @weight = weight
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          admin_state == o.admin_state &&
          backup_member == o.backup_member &&
          display_name == o.display_name &&
          ip_address == o.ip_address &&
          max_concurrent_connections == o.max_concurrent_connections &&
          port == o.port &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [admin_state, backup_member, display_name, ip_address, max_concurrent_connections, port, weight].hash
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
