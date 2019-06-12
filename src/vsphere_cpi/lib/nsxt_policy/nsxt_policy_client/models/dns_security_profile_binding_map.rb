=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module NSXTPolicyClient
  # This entity will be used to establish association between DNS security profile and Group. With this entity, user can specify intent for applying DNS security profile profile to particular Group. 
  class DnsSecurityProfileBindingMap
    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Link to this resource
    attr_accessor :_self

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Timestamp of resource creation
    attr_accessor :_create_time

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Description of this resource
    attr_accessor :description

    # Defaults to ID if not set
    attr_accessor :display_name

    # Unique identifier of this resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # Path of its parent
    attr_accessor :parent_path

    # Absolute path of this object
    attr_accessor :path

    # Path relative from its parent
    attr_accessor :relative_path

    # subtree for this type within policy tree containing nested elements. 
    attr_accessor :children

    # Intent objects are not directly deleted from the system when a delete is invoked on them. They are marked for deletion and only when all the realized entities for that intent object gets deleted, the intent object is deleted. Objects that are marked for deletion are not returned in GET call. One can use the search API to get these objects. 
    attr_accessor :marked_for_delete

    # PolicyPath of associated Profile
    attr_accessor :profile_path

    # Sequence number used to resolve conflicts betweeen two profiles applied on the same group. Lower sequence number takes higher precedence. Two binding maps applied to the same profile must have the same sequence number. User defined sequence numbers range from 1 through 100,000. System defined sequence numbers range from 100,001 through 200,000. 
    attr_accessor :sequence_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_self' => :'_self',
        :'_revision' => :'_revision',
        :'_create_time' => :'_create_time',
        :'_create_user' => :'_create_user',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'_protection' => :'_protection',
        :'_system_owned' => :'_system_owned',
        :'description' => :'description',
        :'display_name' => :'display_name',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'tags' => :'tags',
        :'parent_path' => :'parent_path',
        :'path' => :'path',
        :'relative_path' => :'relative_path',
        :'children' => :'children',
        :'marked_for_delete' => :'marked_for_delete',
        :'profile_path' => :'profile_path',
        :'sequence_number' => :'sequence_number'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_self' => :'SelfResourceLink',
        :'_revision' => :'Integer',
        :'_create_time' => :'Integer',
        :'_create_user' => :'String',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'_protection' => :'String',
        :'_system_owned' => :'BOOLEAN',
        :'description' => :'String',
        :'display_name' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'tags' => :'Array<Tag>',
        :'parent_path' => :'String',
        :'path' => :'String',
        :'relative_path' => :'String',
        :'children' => :'Array<ChildPolicyConfigResource>',
        :'marked_for_delete' => :'BOOLEAN',
        :'profile_path' => :'String',
        :'sequence_number' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'parent_path')
        self.parent_path = attributes[:'parent_path']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'relative_path')
        self.relative_path = attributes[:'relative_path']
      end

      if attributes.has_key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.has_key?(:'marked_for_delete')
        self.marked_for_delete = attributes[:'marked_for_delete']
      else
        self.marked_for_delete = false
      end

      if attributes.has_key?(:'profile_path')
        self.profile_path = attributes[:'profile_path']
      end

      if attributes.has_key?(:'sequence_number')
        self.sequence_number = attributes[:'sequence_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1024.')
      end

      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if @profile_path.nil?
        invalid_properties.push('invalid value for "profile_path", profile_path cannot be nil.')
      end

      if !@sequence_number.nil? && @sequence_number > 100000
        invalid_properties.push('invalid value for "sequence_number", must be smaller than or equal to 100000.')
      end

      if !@sequence_number.nil? && @sequence_number < 1
        invalid_properties.push('invalid value for "sequence_number", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if @profile_path.nil?
      return false if !@sequence_number.nil? && @sequence_number > 100000
      return false if !@sequence_number.nil? && @sequence_number < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1024.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "display_name", the character length must be smaller than or equal to 255.'
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence_number Value to be assigned
    def sequence_number=(sequence_number)
      if !sequence_number.nil? && sequence_number > 100000
        fail ArgumentError, 'invalid value for "sequence_number", must be smaller than or equal to 100000.'
      end

      if !sequence_number.nil? && sequence_number < 1
        fail ArgumentError, 'invalid value for "sequence_number", must be greater than or equal to 1.'
      end

      @sequence_number = sequence_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          _schema == o._schema &&
          _self == o._self &&
          _revision == o._revision &&
          _create_time == o._create_time &&
          _create_user == o._create_user &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          _protection == o._protection &&
          _system_owned == o._system_owned &&
          description == o.description &&
          display_name == o.display_name &&
          id == o.id &&
          resource_type == o.resource_type &&
          tags == o.tags &&
          parent_path == o.parent_path &&
          path == o.path &&
          relative_path == o.relative_path &&
          children == o.children &&
          marked_for_delete == o.marked_for_delete &&
          profile_path == o.profile_path &&
          sequence_number == o.sequence_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_links, _schema, _self, _revision, _create_time, _create_user, _last_modified_time, _last_modified_user, _protection, _system_owned, description, display_name, id, resource_type, tags, parent_path, path, relative_path, children, marked_for_delete, profile_path, sequence_number].hash
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
