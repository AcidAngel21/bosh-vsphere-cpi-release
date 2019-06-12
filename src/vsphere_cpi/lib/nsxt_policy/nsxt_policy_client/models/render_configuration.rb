=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # Render configuration to be applied to the widget.
  class RenderConfiguration
    # The color to use when rendering an entity. For example, set color as 'RED' to render a portion of donut in red.
    attr_accessor :color

    # If the condition is met then the rendering specified for the condition will be applied. Examples of expression syntax are provided under 'example_request' section of 'CreateWidgetConfiguration' API.
    attr_accessor :condition

    # If specified, overrides the field value. This can be used to display a meaningful value in situations where field value is not available or not configured.
    attr_accessor :display_value

    # Icons to be applied at dashboard for widgets and UI elements.
    attr_accessor :icons

    # Multi-line text to be shown on tooltip while hovering over the UI element if the condition is met.
    attr_accessor :tooltip

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
        :'color' => :'color',
        :'condition' => :'condition',
        :'display_value' => :'display_value',
        :'icons' => :'icons',
        :'tooltip' => :'tooltip'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'String',
        :'condition' => :'String',
        :'display_value' => :'String',
        :'icons' => :'Array<Icon>',
        :'tooltip' => :'Array<Tooltip>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.has_key?(:'display_value')
        self.display_value = attributes[:'display_value']
      end

      if attributes.has_key?(:'icons')
        if (value = attributes[:'icons']).is_a?(Array)
          self.icons = value
        end
      end

      if attributes.has_key?(:'tooltip')
        if (value = attributes[:'tooltip']).is_a?(Array)
          self.tooltip = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@condition.nil? && @condition.to_s.length > 1024
        invalid_properties.push('invalid value for "condition", the character length must be smaller than or equal to 1024.')
      end

      if !@display_value.nil? && @display_value.to_s.length > 255
        invalid_properties.push('invalid value for "display_value", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      color_validator = EnumAttributeValidator.new('String', ['GREY', 'DARK_GREY', 'LIGHT_GREY', 'SKY_BLUE', 'BLUE', 'GREEN', 'YELLOW', 'RED', 'DARK_RED'])
      return false unless color_validator.valid?(@color)
      return false if !@condition.nil? && @condition.to_s.length > 1024
      return false if !@display_value.nil? && @display_value.to_s.length > 255
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color Object to be assigned
    def color=(color)
      validator = EnumAttributeValidator.new('String', ['GREY', 'DARK_GREY', 'LIGHT_GREY', 'SKY_BLUE', 'BLUE', 'GREEN', 'YELLOW', 'RED', 'DARK_RED'])
      unless validator.valid?(color)
        fail ArgumentError, 'invalid value for "color", must be one of #{validator.allowable_values}.'
      end
      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] condition Value to be assigned
    def condition=(condition)
      if !condition.nil? && condition.to_s.length > 1024
        fail ArgumentError, 'invalid value for "condition", the character length must be smaller than or equal to 1024.'
      end

      @condition = condition
    end

    # Custom attribute writer method with validation
    # @param [Object] display_value Value to be assigned
    def display_value=(display_value)
      if !display_value.nil? && display_value.to_s.length > 255
        fail ArgumentError, 'invalid value for "display_value", the character length must be smaller than or equal to 255.'
      end

      @display_value = display_value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color == o.color &&
          condition == o.condition &&
          display_value == o.display_value &&
          icons == o.icons &&
          tooltip == o.tooltip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color, condition, display_value, icons, tooltip].hash
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
