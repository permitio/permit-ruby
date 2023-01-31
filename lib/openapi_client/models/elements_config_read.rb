=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  class ElementsConfigRead
    # A URL-friendly name of the elements_config (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the elements_config.
    attr_accessor :key

    # Unique id of the elements_config
    attr_accessor :id

    # Unique id of the organization that the elements_config belongs to.
    attr_accessor :organization_id

    # Unique id of the project that the elements_config belongs to.
    attr_accessor :project_id

    # Unique id of the environment that the elements_config belongs to.
    attr_accessor :environment_id

    # Date and time when the elements_config was created (ISO_8601 format).
    attr_accessor :created_at

    # Date and time when the elements_config was last updated/modified (ISO_8601 format).
    attr_accessor :updated_at

    attr_accessor :is_active

    # The name of the elements_config
    attr_accessor :name

    # The type of the elements interface, e.g: user management
    attr_accessor :elements_type

    # Obj with the options of the elements interface, e.g: primary color
    attr_accessor :settings

    # Obj with levels as keys and role ids as values
    attr_accessor :roles_to_levels

    attr_accessor :webhook

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'key' => :'key',
        :'id' => :'id',
        :'organization_id' => :'organization_id',
        :'project_id' => :'project_id',
        :'environment_id' => :'environment_id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'is_active' => :'is_active',
        :'name' => :'name',
        :'elements_type' => :'elements_type',
        :'settings' => :'settings',
        :'roles_to_levels' => :'roles_to_levels',
        :'webhook' => :'webhook'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'key' => :'String',
        :'id' => :'String',
        :'organization_id' => :'String',
        :'project_id' => :'String',
        :'environment_id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'is_active' => :'Boolean',
        :'name' => :'String',
        :'elements_type' => :'ElementsType',
        :'settings' => :'Hash<String, Settings>',
        :'roles_to_levels' => :'Hash<String, Array<PermissionLevelRoleRead>>',
        :'webhook' => :'WebhookRead'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ElementsConfigRead` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ElementsConfigRead`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'environment_id')
        self.environment_id = attributes[:'environment_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'elements_type')
        self.elements_type = attributes[:'elements_type']
      end

      if attributes.key?(:'settings')
        if (value = attributes[:'settings']).is_a?(Hash)
          self.settings = value
        end
      end

      if attributes.key?(:'roles_to_levels')
        if (value = attributes[:'roles_to_levels']).is_a?(Hash)
          self.roles_to_levels = value
        end
      end

      if attributes.key?(:'webhook')
        self.webhook = attributes[:'webhook']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @key.nil?
        invalid_properties.push('invalid value for "key", key cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @organization_id.nil?
        invalid_properties.push('invalid value for "organization_id", organization_id cannot be nil.')
      end

      if @project_id.nil?
        invalid_properties.push('invalid value for "project_id", project_id cannot be nil.')
      end

      if @environment_id.nil?
        invalid_properties.push('invalid value for "environment_id", environment_id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @is_active.nil?
        invalid_properties.push('invalid value for "is_active", is_active cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @elements_type.nil?
        invalid_properties.push('invalid value for "elements_type", elements_type cannot be nil.')
      end

      if @settings.nil?
        invalid_properties.push('invalid value for "settings", settings cannot be nil.')
      end

      if @roles_to_levels.nil?
        invalid_properties.push('invalid value for "roles_to_levels", roles_to_levels cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @key.nil?
      return false if @id.nil?
      return false if @organization_id.nil?
      return false if @project_id.nil?
      return false if @environment_id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @is_active.nil?
      return false if @name.nil?
      return false if @elements_type.nil?
      return false if @settings.nil?
      return false if @roles_to_levels.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          key == o.key &&
          id == o.id &&
          organization_id == o.organization_id &&
          project_id == o.project_id &&
          environment_id == o.environment_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          is_active == o.is_active &&
          name == o.name &&
          elements_type == o.elements_type &&
          settings == o.settings &&
          roles_to_levels == o.roles_to_levels &&
          webhook == o.webhook
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [key, id, organization_id, project_id, environment_id, created_at, updated_at, is_active, name, elements_type, settings, roles_to_levels, webhook].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
        klass = OpenapiClient.const_get(type)
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
