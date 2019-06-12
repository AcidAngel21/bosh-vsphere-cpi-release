=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  class LBPoolStatus
    # Alarm information details.
    attr_accessor :alarm

    # Policy Path referencing the enforcement point where the info is fetched. 
    attr_accessor :enforcement_point_path

    attr_accessor :resource_type

    # Timestamp when the data was last updated.
    attr_accessor :last_update_timestamp

    # Status of load balancer pool members.
    attr_accessor :members

    # Load balancer pool object path.
    attr_accessor :pool_path

    # UP means that all primary members are in UP status. PARTIALLY_UP means that some(not all) primary members are in UP status, the number of these active members is larger or equal to certain number(min_active_members) which is defined in LBPool. When there are no backup members which are in the UP status, the number(min_active_members) would be ignored. PRIMARY_DOWN means that less than certain(min_active_members) primary members are in UP status but backup members are in UP status, connections to this pool would be dispatched to backup members. DOWN means that all primary and backup members are DOWN. DETACHED means that the pool is not bound to any virtual server. UNKOWN means that no status reported from transport-nodes. The associated load balancer service may be working(or not working). 
    attr_accessor :status

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
        :'alarm' => :'alarm',
        :'enforcement_point_path' => :'enforcement_point_path',
        :'resource_type' => :'resource_type',
        :'last_update_timestamp' => :'last_update_timestamp',
        :'members' => :'members',
        :'pool_path' => :'pool_path',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alarm' => :'PolicyRuntimeAlarm',
        :'enforcement_point_path' => :'String',
        :'resource_type' => :'String',
        :'last_update_timestamp' => :'Integer',
        :'members' => :'Array<LBPoolMemberStatus>',
        :'pool_path' => :'String',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alarm')
        self.alarm = attributes[:'alarm']
      end

      if attributes.has_key?(:'enforcement_point_path')
        self.enforcement_point_path = attributes[:'enforcement_point_path']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'last_update_timestamp')
        self.last_update_timestamp = attributes[:'last_update_timestamp']
      end

      if attributes.has_key?(:'members')
        if (value = attributes[:'members']).is_a?(Array)
          self.members = value
        end
      end

      if attributes.has_key?(:'pool_path')
        self.pool_path = attributes[:'pool_path']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resource_type.nil?
      status_validator = EnumAttributeValidator.new('String', ['UP', 'PARTIALLY_UP', 'PRIMARY_DOWN', 'DOWN', 'DETACHED', 'UNKNOWN'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['UP', 'PARTIALLY_UP', 'PRIMARY_DOWN', 'DOWN', 'DETACHED', 'UNKNOWN'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alarm == o.alarm &&
          enforcement_point_path == o.enforcement_point_path &&
          resource_type == o.resource_type &&
          last_update_timestamp == o.last_update_timestamp &&
          members == o.members &&
          pool_path == o.pool_path &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alarm, enforcement_point_path, resource_type, last_update_timestamp, members, pool_path, status].hash
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
