=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # Schedule to specify day of the week and time to take automated backup
  class WeeklyBackupSchedule
    # Schedule type
    attr_accessor :resource_type

    # Days of week when backup is taken. 0 - Sunday, 1 - Monday, 2 - Tuesday, 3 - Wednesday ...
    attr_accessor :days_of_week

    # Time of day when backup is taken
    attr_accessor :hour_of_day

    # Time of day when backup is taken
    attr_accessor :minute_of_day

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
        :'resource_type' => :'resource_type',
        :'days_of_week' => :'days_of_week',
        :'hour_of_day' => :'hour_of_day',
        :'minute_of_day' => :'minute_of_day'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'resource_type' => :'String',
        :'days_of_week' => :'Array<Integer>',
        :'hour_of_day' => :'Integer',
        :'minute_of_day' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'days_of_week')
        if (value = attributes[:'days_of_week']).is_a?(Array)
          self.days_of_week = value
        end
      end

      if attributes.has_key?(:'hour_of_day')
        self.hour_of_day = attributes[:'hour_of_day']
      end

      if attributes.has_key?(:'minute_of_day')
        self.minute_of_day = attributes[:'minute_of_day']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @days_of_week.nil?
        invalid_properties.push('invalid value for "days_of_week", days_of_week cannot be nil.')
      end

      if @hour_of_day.nil?
        invalid_properties.push('invalid value for "hour_of_day", hour_of_day cannot be nil.')
      end

      if @hour_of_day > 23
        invalid_properties.push('invalid value for "hour_of_day", must be smaller than or equal to 23.')
      end

      if @hour_of_day < 0
        invalid_properties.push('invalid value for "hour_of_day", must be greater than or equal to 0.')
      end

      if @minute_of_day.nil?
        invalid_properties.push('invalid value for "minute_of_day", minute_of_day cannot be nil.')
      end

      if @minute_of_day > 59
        invalid_properties.push('invalid value for "minute_of_day", must be smaller than or equal to 59.')
      end

      if @minute_of_day < 0
        invalid_properties.push('invalid value for "minute_of_day", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ['WeeklyBackupSchedule', 'IntervalBackupSchedule'])
      return false unless resource_type_validator.valid?(@resource_type)
      return false if @days_of_week.nil?
      return false if @hour_of_day.nil?
      return false if @hour_of_day > 23
      return false if @hour_of_day < 0
      return false if @minute_of_day.nil?
      return false if @minute_of_day > 59
      return false if @minute_of_day < 0
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ['WeeklyBackupSchedule', 'IntervalBackupSchedule'])
      unless validator.valid?(resource_type)
        fail ArgumentError, 'invalid value for "resource_type", must be one of #{validator.allowable_values}.'
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method with validation
    # @param [Object] hour_of_day Value to be assigned
    def hour_of_day=(hour_of_day)
      if hour_of_day.nil?
        fail ArgumentError, 'hour_of_day cannot be nil'
      end

      if hour_of_day > 23
        fail ArgumentError, 'invalid value for "hour_of_day", must be smaller than or equal to 23.'
      end

      if hour_of_day < 0
        fail ArgumentError, 'invalid value for "hour_of_day", must be greater than or equal to 0.'
      end

      @hour_of_day = hour_of_day
    end

    # Custom attribute writer method with validation
    # @param [Object] minute_of_day Value to be assigned
    def minute_of_day=(minute_of_day)
      if minute_of_day.nil?
        fail ArgumentError, 'minute_of_day cannot be nil'
      end

      if minute_of_day > 59
        fail ArgumentError, 'invalid value for "minute_of_day", must be smaller than or equal to 59.'
      end

      if minute_of_day < 0
        fail ArgumentError, 'invalid value for "minute_of_day", must be greater than or equal to 0.'
      end

      @minute_of_day = minute_of_day
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resource_type == o.resource_type &&
          days_of_week == o.days_of_week &&
          hour_of_day == o.hour_of_day &&
          minute_of_day == o.minute_of_day
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [resource_type, days_of_week, hour_of_day, minute_of_day].hash
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
