=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module EsiClient
  # 200 ok object
  class GetOpportunitiesGroupsGroupIdOk
    # The groups that are connected to this group on the opportunities map
    attr_accessor :connected_groups

    # description string
    attr_accessor :description

    # group_id integer
    attr_accessor :group_id

    # name string
    attr_accessor :name

    # notification string
    attr_accessor :notification

    # Tasks need to complete for this group
    attr_accessor :required_tasks


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'connected_groups' => :'connected_groups',
        :'description' => :'description',
        :'group_id' => :'group_id',
        :'name' => :'name',
        :'notification' => :'notification',
        :'required_tasks' => :'required_tasks'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'connected_groups' => :'Array<Integer>',
        :'description' => :'String',
        :'group_id' => :'Integer',
        :'name' => :'String',
        :'notification' => :'String',
        :'required_tasks' => :'Array<Integer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'connected_groups')
        if (value = attributes[:'connected_groups']).is_a?(Array)
          self.connected_groups = value
        end
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'notification')
        self.notification = attributes[:'notification']
      end

      if attributes.has_key?(:'required_tasks')
        if (value = attributes[:'required_tasks']).is_a?(Array)
          self.required_tasks = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @connected_groups.nil?
        invalid_properties.push("invalid value for 'connected_groups', connected_groups cannot be nil.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @group_id.nil?
        invalid_properties.push("invalid value for 'group_id', group_id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @notification.nil?
        invalid_properties.push("invalid value for 'notification', notification cannot be nil.")
      end

      if @required_tasks.nil?
        invalid_properties.push("invalid value for 'required_tasks', required_tasks cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @connected_groups.nil?
      return false if @description.nil?
      return false if @group_id.nil?
      return false if @name.nil?
      return false if @notification.nil?
      return false if @required_tasks.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          connected_groups == o.connected_groups &&
          description == o.description &&
          group_id == o.group_id &&
          name == o.name &&
          notification == o.notification &&
          required_tasks == o.required_tasks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [connected_groups, description, group_id, name, notification, required_tasks].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = EsiClient.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
