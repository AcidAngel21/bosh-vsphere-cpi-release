=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # IPSec VPN tunnel traffic statistics.
  class IpSecVpnTunnelTrafficStatistics
    # Total number of incoming bytes on inbound Security association. 
    attr_accessor :bytes_in

    # Total number of outgoing bytes on outbound Security association. 
    attr_accessor :bytes_out

    # Total number of packets dropped due to decryption failures. 
    attr_accessor :decryption_failures

    # Total number of incoming packets dropped on inbound security association. 
    attr_accessor :dropped_packets_in

    # Total number of outgoing packets dropped on outbound security association. 
    attr_accessor :dropped_packets_out

    # Total number of packets dropped because of failure in encryption. 
    attr_accessor :encryption_failures

    # Total number of packets dropped due to integrity failures. 
    attr_accessor :integrity_failures

    # Tunnel local subnet in IPv4 CIDR Block format. 
    attr_accessor :local_subnet

    # Number of packets dropped because of no matching policy is available. 
    attr_accessor :nomatching_policy_errors

    # Total number of incoming packets on inbound Security association. 
    attr_accessor :packets_in

    # Total number of outgoing packets on outbound Security association. 
    attr_accessor :packets_out

    # Total number of incoming packets dropped on inbound Security association. 
    attr_accessor :packets_received_other_error

    # Total number of packets dropped while sending for any reason. 
    attr_accessor :packets_sent_other_error

    # Tunnel peer subnet in IPv4 CIDR Block format. 
    attr_accessor :peer_subnet

    # Total number of packets dropped due to replay check on that Security association. 
    attr_accessor :replay_errors

    # Totoal number of security association mismatch errors on incoming packets. 
    attr_accessor :sa_mismatch_errors_in

    # Totoal number of security association mismatch errors on outgoing packets. 
    attr_accessor :sa_mismatch_errors_out

    # Total number of packets dropped while sending due to overflow in sequence number. 
    attr_accessor :seq_number_overflow_error

    # Gives the detailed reason about the tunnel when it is down. If tunnel is UP tunnel down reason will be empty. 
    attr_accessor :tunnel_down_reason

    # Specifies the status of tunnel, if it is UP/DOWN. 
    attr_accessor :tunnel_status

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
        :'bytes_in' => :'bytes_in',
        :'bytes_out' => :'bytes_out',
        :'decryption_failures' => :'decryption_failures',
        :'dropped_packets_in' => :'dropped_packets_in',
        :'dropped_packets_out' => :'dropped_packets_out',
        :'encryption_failures' => :'encryption_failures',
        :'integrity_failures' => :'integrity_failures',
        :'local_subnet' => :'local_subnet',
        :'nomatching_policy_errors' => :'nomatching_policy_errors',
        :'packets_in' => :'packets_in',
        :'packets_out' => :'packets_out',
        :'packets_received_other_error' => :'packets_received_other_error',
        :'packets_sent_other_error' => :'packets_sent_other_error',
        :'peer_subnet' => :'peer_subnet',
        :'replay_errors' => :'replay_errors',
        :'sa_mismatch_errors_in' => :'sa_mismatch_errors_in',
        :'sa_mismatch_errors_out' => :'sa_mismatch_errors_out',
        :'seq_number_overflow_error' => :'seq_number_overflow_error',
        :'tunnel_down_reason' => :'tunnel_down_reason',
        :'tunnel_status' => :'tunnel_status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bytes_in' => :'Integer',
        :'bytes_out' => :'Integer',
        :'decryption_failures' => :'Integer',
        :'dropped_packets_in' => :'Integer',
        :'dropped_packets_out' => :'Integer',
        :'encryption_failures' => :'Integer',
        :'integrity_failures' => :'Integer',
        :'local_subnet' => :'String',
        :'nomatching_policy_errors' => :'Integer',
        :'packets_in' => :'Integer',
        :'packets_out' => :'Integer',
        :'packets_received_other_error' => :'Integer',
        :'packets_sent_other_error' => :'Integer',
        :'peer_subnet' => :'String',
        :'replay_errors' => :'Integer',
        :'sa_mismatch_errors_in' => :'Integer',
        :'sa_mismatch_errors_out' => :'Integer',
        :'seq_number_overflow_error' => :'Integer',
        :'tunnel_down_reason' => :'String',
        :'tunnel_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'bytes_in')
        self.bytes_in = attributes[:'bytes_in']
      end

      if attributes.has_key?(:'bytes_out')
        self.bytes_out = attributes[:'bytes_out']
      end

      if attributes.has_key?(:'decryption_failures')
        self.decryption_failures = attributes[:'decryption_failures']
      end

      if attributes.has_key?(:'dropped_packets_in')
        self.dropped_packets_in = attributes[:'dropped_packets_in']
      end

      if attributes.has_key?(:'dropped_packets_out')
        self.dropped_packets_out = attributes[:'dropped_packets_out']
      end

      if attributes.has_key?(:'encryption_failures')
        self.encryption_failures = attributes[:'encryption_failures']
      end

      if attributes.has_key?(:'integrity_failures')
        self.integrity_failures = attributes[:'integrity_failures']
      end

      if attributes.has_key?(:'local_subnet')
        self.local_subnet = attributes[:'local_subnet']
      end

      if attributes.has_key?(:'nomatching_policy_errors')
        self.nomatching_policy_errors = attributes[:'nomatching_policy_errors']
      end

      if attributes.has_key?(:'packets_in')
        self.packets_in = attributes[:'packets_in']
      end

      if attributes.has_key?(:'packets_out')
        self.packets_out = attributes[:'packets_out']
      end

      if attributes.has_key?(:'packets_received_other_error')
        self.packets_received_other_error = attributes[:'packets_received_other_error']
      end

      if attributes.has_key?(:'packets_sent_other_error')
        self.packets_sent_other_error = attributes[:'packets_sent_other_error']
      end

      if attributes.has_key?(:'peer_subnet')
        self.peer_subnet = attributes[:'peer_subnet']
      end

      if attributes.has_key?(:'replay_errors')
        self.replay_errors = attributes[:'replay_errors']
      end

      if attributes.has_key?(:'sa_mismatch_errors_in')
        self.sa_mismatch_errors_in = attributes[:'sa_mismatch_errors_in']
      end

      if attributes.has_key?(:'sa_mismatch_errors_out')
        self.sa_mismatch_errors_out = attributes[:'sa_mismatch_errors_out']
      end

      if attributes.has_key?(:'seq_number_overflow_error')
        self.seq_number_overflow_error = attributes[:'seq_number_overflow_error']
      end

      if attributes.has_key?(:'tunnel_down_reason')
        self.tunnel_down_reason = attributes[:'tunnel_down_reason']
      end

      if attributes.has_key?(:'tunnel_status')
        self.tunnel_status = attributes[:'tunnel_status']
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
      tunnel_status_validator = EnumAttributeValidator.new('String', ['UP', 'DOWN'])
      return false unless tunnel_status_validator.valid?(@tunnel_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tunnel_status Object to be assigned
    def tunnel_status=(tunnel_status)
      validator = EnumAttributeValidator.new('String', ['UP', 'DOWN'])
      unless validator.valid?(tunnel_status)
        fail ArgumentError, 'invalid value for "tunnel_status", must be one of #{validator.allowable_values}.'
      end
      @tunnel_status = tunnel_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bytes_in == o.bytes_in &&
          bytes_out == o.bytes_out &&
          decryption_failures == o.decryption_failures &&
          dropped_packets_in == o.dropped_packets_in &&
          dropped_packets_out == o.dropped_packets_out &&
          encryption_failures == o.encryption_failures &&
          integrity_failures == o.integrity_failures &&
          local_subnet == o.local_subnet &&
          nomatching_policy_errors == o.nomatching_policy_errors &&
          packets_in == o.packets_in &&
          packets_out == o.packets_out &&
          packets_received_other_error == o.packets_received_other_error &&
          packets_sent_other_error == o.packets_sent_other_error &&
          peer_subnet == o.peer_subnet &&
          replay_errors == o.replay_errors &&
          sa_mismatch_errors_in == o.sa_mismatch_errors_in &&
          sa_mismatch_errors_out == o.sa_mismatch_errors_out &&
          seq_number_overflow_error == o.seq_number_overflow_error &&
          tunnel_down_reason == o.tunnel_down_reason &&
          tunnel_status == o.tunnel_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bytes_in, bytes_out, decryption_failures, dropped_packets_in, dropped_packets_out, encryption_failures, integrity_failures, local_subnet, nomatching_policy_errors, packets_in, packets_out, packets_received_other_error, packets_sent_other_error, peer_subnet, replay_errors, sa_mismatch_errors_in, sa_mismatch_errors_out, seq_number_overflow_error, tunnel_down_reason, tunnel_status].hash
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
