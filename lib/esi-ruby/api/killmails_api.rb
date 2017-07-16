=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module EsiClient
  class KillmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List kills and losses
    # Return a list of character's recent kills and losses  --- Alternate route: `/v1/characters/{character_id}/killmails/recent/`  Alternate route: `/legacy/characters/{character_id}/killmails/recent/`  Alternate route: `/dev/characters/{character_id}/killmails/recent/`  --- This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [Integer] :max_count How many killmails to return at maximum (default to 50)
    # @option opts [Integer] :max_kill_id Only return killmails with ID smaller than this. 
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdKillmailsRecent200Ok>]
    def get_characters_character_id_killmails_recent(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_killmails_recent_with_http_info(character_id, opts)
      return data
    end

    # List kills and losses
    # Return a list of character&#39;s recent kills and losses  --- Alternate route: &#x60;/v1/characters/{character_id}/killmails/recent/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/killmails/recent/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/killmails/recent/&#x60;  --- This route is cached for up to 120 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [Integer] :max_count How many killmails to return at maximum
    # @option opts [Integer] :max_kill_id Only return killmails with ID smaller than this. 
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdKillmailsRecent200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdKillmailsRecent200Ok> data, response status code and response headers
    def get_characters_character_id_killmails_recent_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: KillmailsApi.get_characters_character_id_killmails_recent ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling KillmailsApi.get_characters_character_id_killmails_recent" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if !opts[:'max_count'].nil? && opts[:'max_count'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"max_count"]" when calling KillmailsApi.get_characters_character_id_killmails_recent, must be smaller than or equal to 5000.'
      end

      # resource path
      local_var_path = "/characters/{character_id}/killmails/recent/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'max_count'] = opts[:'max_count'] if !opts[:'max_count'].nil?
      query_params[:'max_kill_id'] = opts[:'max_kill_id'] if !opts[:'max_kill_id'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdKillmailsRecent200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KillmailsApi#get_characters_character_id_killmails_recent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single killmail
    # Return a single killmail from its ID and hash  --- Alternate route: `/v1/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/legacy/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/dev/killmails/{killmail_id}/{killmail_hash}/`  --- This route is cached for up to 3600 seconds
    # @param killmail_hash The killmail hash for verification
    # @param killmail_id The killmail ID to be queried
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetKillmailsKillmailIdKillmailHashOk]
    def get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts = {})
      data, _status_code, _headers = get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, opts)
      return data
    end

    # Get a single killmail
    # Return a single killmail from its ID and hash  --- Alternate route: &#x60;/v1/killmails/{killmail_id}/{killmail_hash}/&#x60;  Alternate route: &#x60;/legacy/killmails/{killmail_id}/{killmail_hash}/&#x60;  Alternate route: &#x60;/dev/killmails/{killmail_id}/{killmail_hash}/&#x60;  --- This route is cached for up to 3600 seconds
    # @param killmail_hash The killmail hash for verification
    # @param killmail_id The killmail ID to be queried
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetKillmailsKillmailIdKillmailHashOk, Fixnum, Hash)>] GetKillmailsKillmailIdKillmailHashOk data, response status code and response headers
    def get_killmails_killmail_id_killmail_hash_with_http_info(killmail_hash, killmail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: KillmailsApi.get_killmails_killmail_id_killmail_hash ..."
      end
      # verify the required parameter 'killmail_hash' is set
      fail ArgumentError, "Missing the required parameter 'killmail_hash' when calling KillmailsApi.get_killmails_killmail_id_killmail_hash" if killmail_hash.nil?
      # verify the required parameter 'killmail_id' is set
      fail ArgumentError, "Missing the required parameter 'killmail_id' when calling KillmailsApi.get_killmails_killmail_id_killmail_hash" if killmail_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/killmails/{killmail_id}/{killmail_hash}/".sub('{format}','json').sub('{' + 'killmail_hash' + '}', killmail_hash.to_s).sub('{' + 'killmail_id' + '}', killmail_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetKillmailsKillmailIdKillmailHashOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KillmailsApi#get_killmails_killmail_id_killmail_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
