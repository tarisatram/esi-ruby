=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module EsiClient
  class OpportunitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a character's completed tasks
    # Return a list of tasks finished by a character  --- Alternate route: `/v1/characters/{character_id}/opportunities/`  Alternate route: `/legacy/characters/{character_id}/opportunities/`  Alternate route: `/dev/characters/{character_id}/opportunities/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdOpportunities200Ok>]
    def get_characters_character_id_opportunities(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_opportunities_with_http_info(character_id, opts)
      return data
    end

    # Get a character&#39;s completed tasks
    # Return a list of tasks finished by a character  --- Alternate route: &#x60;/v1/characters/{character_id}/opportunities/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/opportunities/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/opportunities/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdOpportunities200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdOpportunities200Ok> data, response status code and response headers
    def get_characters_character_id_opportunities_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.get_characters_character_id_opportunities ..."
      end
      # verify the required parameter 'character_id' is set
      fail ArgumentError, "Missing the required parameter 'character_id' when calling OpportunitiesApi.get_characters_character_id_opportunities" if character_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/characters/{character_id}/opportunities/".sub('{format}','json').sub('{' + 'character_id' + '}', character_id.to_s)

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
        :return_type => 'Array<GetCharactersCharacterIdOpportunities200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_characters_character_id_opportunities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get opportunities groups
    # Return a list of opportunities groups  --- Alternate route: `/v1/opportunities/groups/`  Alternate route: `/legacy/opportunities/groups/`  Alternate route: `/dev/opportunities/groups/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_opportunities_groups(opts = {})
      data, _status_code, _headers = get_opportunities_groups_with_http_info(opts)
      return data
    end

    # Get opportunities groups
    # Return a list of opportunities groups  --- Alternate route: &#x60;/v1/opportunities/groups/&#x60;  Alternate route: &#x60;/legacy/opportunities/groups/&#x60;  Alternate route: &#x60;/dev/opportunities/groups/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_opportunities_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.get_opportunities_groups ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/opportunities/groups/".sub('{format}','json')

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
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get opportunities group
    # Return information of an opportunities group  --- Alternate route: `/v1/opportunities/groups/{group_id}/`  Alternate route: `/legacy/opportunities/groups/{group_id}/`  Alternate route: `/dev/opportunities/groups/{group_id}/`  --- This route expires daily at 11:05
    # @param group_id ID of an opportunities group
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :language Language to use in the response (default to en-us)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetOpportunitiesGroupsGroupIdOk]
    def get_opportunities_groups_group_id(group_id, opts = {})
      data, _status_code, _headers = get_opportunities_groups_group_id_with_http_info(group_id, opts)
      return data
    end

    # Get opportunities group
    # Return information of an opportunities group  --- Alternate route: &#x60;/v1/opportunities/groups/{group_id}/&#x60;  Alternate route: &#x60;/legacy/opportunities/groups/{group_id}/&#x60;  Alternate route: &#x60;/dev/opportunities/groups/{group_id}/&#x60;  --- This route expires daily at 11:05
    # @param group_id ID of an opportunities group
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :language Language to use in the response
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetOpportunitiesGroupsGroupIdOk, Fixnum, Hash)>] GetOpportunitiesGroupsGroupIdOk data, response status code and response headers
    def get_opportunities_groups_group_id_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.get_opportunities_groups_group_id ..."
      end
      # verify the required parameter 'group_id' is set
      fail ArgumentError, "Missing the required parameter 'group_id' when calling OpportunitiesApi.get_opportunities_groups_group_id" if group_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if opts[:'language'] && !['de', 'en-us', 'fr', 'ja', 'ru', 'zh'].include?(opts[:'language'])
        fail ArgumentError, 'invalid value for "language", must be one of de, en-us, fr, ja, ru, zh'
      end
      # resource path
      local_var_path = "/opportunities/groups/{group_id}/".sub('{format}','json').sub('{' + 'group_id' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
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
        :return_type => 'GetOpportunitiesGroupsGroupIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities_groups_group_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get opportunities tasks
    # Return a list of opportunities tasks  --- Alternate route: `/v1/opportunities/tasks/`  Alternate route: `/legacy/opportunities/tasks/`  Alternate route: `/dev/opportunities/tasks/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_opportunities_tasks(opts = {})
      data, _status_code, _headers = get_opportunities_tasks_with_http_info(opts)
      return data
    end

    # Get opportunities tasks
    # Return a list of opportunities tasks  --- Alternate route: &#x60;/v1/opportunities/tasks/&#x60;  Alternate route: &#x60;/legacy/opportunities/tasks/&#x60;  Alternate route: &#x60;/dev/opportunities/tasks/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_opportunities_tasks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.get_opportunities_tasks ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/opportunities/tasks/".sub('{format}','json')

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
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get opportunities task
    # Return information of an opportunities task  --- Alternate route: `/v1/opportunities/tasks/{task_id}/`  Alternate route: `/legacy/opportunities/tasks/{task_id}/`  Alternate route: `/dev/opportunities/tasks/{task_id}/`  --- This route expires daily at 11:05
    # @param task_id ID of an opportunities task
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetOpportunitiesTasksTaskIdOk]
    def get_opportunities_tasks_task_id(task_id, opts = {})
      data, _status_code, _headers = get_opportunities_tasks_task_id_with_http_info(task_id, opts)
      return data
    end

    # Get opportunities task
    # Return information of an opportunities task  --- Alternate route: &#x60;/v1/opportunities/tasks/{task_id}/&#x60;  Alternate route: &#x60;/legacy/opportunities/tasks/{task_id}/&#x60;  Alternate route: &#x60;/dev/opportunities/tasks/{task_id}/&#x60;  --- This route expires daily at 11:05
    # @param task_id ID of an opportunities task
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetOpportunitiesTasksTaskIdOk, Fixnum, Hash)>] GetOpportunitiesTasksTaskIdOk data, response status code and response headers
    def get_opportunities_tasks_task_id_with_http_info(task_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.get_opportunities_tasks_task_id ..."
      end
      # verify the required parameter 'task_id' is set
      fail ArgumentError, "Missing the required parameter 'task_id' when calling OpportunitiesApi.get_opportunities_tasks_task_id" if task_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/opportunities/tasks/{task_id}/".sub('{format}','json').sub('{' + 'task_id' + '}', task_id.to_s)

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
        :return_type => 'GetOpportunitiesTasksTaskIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities_tasks_task_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
