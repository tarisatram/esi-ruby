=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module EsiClient
  class LocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get character location
    # Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable.  --- Alternate route: `/v1/characters/{character_id}/location/`  Alternate route: `/legacy/characters/{character_id}/location/`  Alternate route: `/dev/characters/{character_id}/location/`  --- This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdLocationOk]
    def get_characters_character_id_location(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_location_with_http_info(character_id, opts)
      return data
    end

    # Get character location
    # Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable.  --- Alternate route: &#x60;/v1/characters/{character_id}/location/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/location/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/location/&#x60;  --- This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdLocationOk, Fixnum, Hash)>] GetCharactersCharacterIdLocationOk data, response status code and response headers
    def get_characters_character_id_location_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationApi.get_characters_character_id_location ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_location" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/location/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCharactersCharacterIdLocationOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get character online
    # Checks if the character is currently online  --- Alternate route: `/v1/characters/{character_id}/online/`  Alternate route: `/legacy/characters/{character_id}/online/`  --- This route is cached for up to 60 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [BOOLEAN]
    def get_characters_character_id_online(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_online_with_http_info(character_id, opts)
      return data
    end

    # Get character online
    # Checks if the character is currently online  --- Alternate route: &#x60;/v1/characters/{character_id}/online/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/online/&#x60;  --- This route is cached for up to 60 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(BOOLEAN, Fixnum, Hash)>] BOOLEAN data, response status code and response headers
    def get_characters_character_id_online_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationApi.get_characters_character_id_online ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_online" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/online/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BOOLEAN')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get current ship
    # Get the current ship type, name and id  --- Alternate route: `/v1/characters/{character_id}/ship/`  Alternate route: `/legacy/characters/{character_id}/ship/`  Alternate route: `/dev/characters/{character_id}/ship/`  --- This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdShipOk]
    def get_characters_character_id_ship(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_ship_with_http_info(character_id, opts)
      return data
    end

    # Get current ship
    # Get the current ship type, name and id  --- Alternate route: &#x60;/v1/characters/{character_id}/ship/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/ship/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/ship/&#x60;  --- This route is cached for up to 5 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdShipOk, Fixnum, Hash)>] GetCharactersCharacterIdShipOk data, response status code and response headers
    def get_characters_character_id_ship_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationApi.get_characters_character_id_ship ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_ship" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/ship/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCharactersCharacterIdShipOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
