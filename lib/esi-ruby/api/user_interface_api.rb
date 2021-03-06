=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module EsiClient
  class UserInterfaceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set Autopilot Waypoint
    # Set a solar system as autopilot waypoint  --- Alternate route: `/v2/ui/autopilot/waypoint/`  Alternate route: `/dev/ui/autopilot/waypoint/` 
    # @param add_to_beginning Whether this solar system should be added to the beginning of all waypoints
    # @param clear_other_waypoints Whether clean other waypoints beforing adding this one
    # @param destination_id The destination to travel to, can be solar system, station or structure&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def post_ui_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, opts = {})
      post_ui_autopilot_waypoint_with_http_info(add_to_beginning, clear_other_waypoints, destination_id, opts)
      return nil
    end

    # Set Autopilot Waypoint
    # Set a solar system as autopilot waypoint  --- Alternate route: &#x60;/v2/ui/autopilot/waypoint/&#x60;  Alternate route: &#x60;/dev/ui/autopilot/waypoint/&#x60; 
    # @param add_to_beginning Whether this solar system should be added to the beginning of all waypoints
    # @param clear_other_waypoints Whether clean other waypoints beforing adding this one
    # @param destination_id The destination to travel to, can be solar system, station or structure&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_ui_autopilot_waypoint_with_http_info(add_to_beginning, clear_other_waypoints, destination_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserInterfaceApi.post_ui_autopilot_waypoint ..."
      end
      # verify the required parameter 'add_to_beginning' is set
      fail ArgumentError, "Missing the required parameter 'add_to_beginning' when calling UserInterfaceApi.post_ui_autopilot_waypoint" if add_to_beginning.nil?
      # verify the required parameter 'clear_other_waypoints' is set
      fail ArgumentError, "Missing the required parameter 'clear_other_waypoints' when calling UserInterfaceApi.post_ui_autopilot_waypoint" if clear_other_waypoints.nil?
      # verify the required parameter 'destination_id' is set
      fail ArgumentError, "Missing the required parameter 'destination_id' when calling UserInterfaceApi.post_ui_autopilot_waypoint" if destination_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/ui/autopilot/waypoint/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'add_to_beginning'] = add_to_beginning
      query_params[:'clear_other_waypoints'] = clear_other_waypoints
      query_params[:'destination_id'] = destination_id
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserInterfaceApi#post_ui_autopilot_waypoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open Contract Window
    # Open the contract window inside the client  --- Alternate route: `/v1/ui/openwindow/contract/`  Alternate route: `/legacy/ui/openwindow/contract/`  Alternate route: `/dev/ui/openwindow/contract/` 
    # @param contract_id The contract to open
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def post_ui_openwindow_contract(contract_id, opts = {})
      post_ui_openwindow_contract_with_http_info(contract_id, opts)
      return nil
    end

    # Open Contract Window
    # Open the contract window inside the client  --- Alternate route: &#x60;/v1/ui/openwindow/contract/&#x60;  Alternate route: &#x60;/legacy/ui/openwindow/contract/&#x60;  Alternate route: &#x60;/dev/ui/openwindow/contract/&#x60; 
    # @param contract_id The contract to open
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_ui_openwindow_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserInterfaceApi.post_ui_openwindow_contract ..."
      end
      # verify the required parameter 'contract_id' is set
      fail ArgumentError, "Missing the required parameter 'contract_id' when calling UserInterfaceApi.post_ui_openwindow_contract" if contract_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/ui/openwindow/contract/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'contract_id'] = contract_id
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserInterfaceApi#post_ui_openwindow_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open Information Window
    # Open the information window for a character, corporation or alliance inside the client  --- Alternate route: `/v1/ui/openwindow/information/`  Alternate route: `/legacy/ui/openwindow/information/`  Alternate route: `/dev/ui/openwindow/information/` 
    # @param target_id The target to open
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def post_ui_openwindow_information(target_id, opts = {})
      post_ui_openwindow_information_with_http_info(target_id, opts)
      return nil
    end

    # Open Information Window
    # Open the information window for a character, corporation or alliance inside the client  --- Alternate route: &#x60;/v1/ui/openwindow/information/&#x60;  Alternate route: &#x60;/legacy/ui/openwindow/information/&#x60;  Alternate route: &#x60;/dev/ui/openwindow/information/&#x60; 
    # @param target_id The target to open
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_ui_openwindow_information_with_http_info(target_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserInterfaceApi.post_ui_openwindow_information ..."
      end
      # verify the required parameter 'target_id' is set
      fail ArgumentError, "Missing the required parameter 'target_id' when calling UserInterfaceApi.post_ui_openwindow_information" if target_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/ui/openwindow/information/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'target_id'] = target_id
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserInterfaceApi#post_ui_openwindow_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open Market Details
    # Open the market details window for a specific typeID inside the client  --- Alternate route: `/v1/ui/openwindow/marketdetails/`  Alternate route: `/legacy/ui/openwindow/marketdetails/`  Alternate route: `/dev/ui/openwindow/marketdetails/` 
    # @param type_id The item type to open in market window
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def post_ui_openwindow_marketdetails(type_id, opts = {})
      post_ui_openwindow_marketdetails_with_http_info(type_id, opts)
      return nil
    end

    # Open Market Details
    # Open the market details window for a specific typeID inside the client  --- Alternate route: &#x60;/v1/ui/openwindow/marketdetails/&#x60;  Alternate route: &#x60;/legacy/ui/openwindow/marketdetails/&#x60;  Alternate route: &#x60;/dev/ui/openwindow/marketdetails/&#x60; 
    # @param type_id The item type to open in market window
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_ui_openwindow_marketdetails_with_http_info(type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserInterfaceApi.post_ui_openwindow_marketdetails ..."
      end
      # verify the required parameter 'type_id' is set
      fail ArgumentError, "Missing the required parameter 'type_id' when calling UserInterfaceApi.post_ui_openwindow_marketdetails" if type_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/ui/openwindow/marketdetails/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'type_id'] = type_id
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserInterfaceApi#post_ui_openwindow_marketdetails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open New Mail Window
    # Open the New Mail window, according to settings from the request if applicable  --- Alternate route: `/v1/ui/openwindow/newmail/`  Alternate route: `/legacy/ui/openwindow/newmail/`  Alternate route: `/dev/ui/openwindow/newmail/` 
    # @param new_mail The details of mail to create
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [nil]
    def post_ui_openwindow_newmail(new_mail, opts = {})
      post_ui_openwindow_newmail_with_http_info(new_mail, opts)
      return nil
    end

    # Open New Mail Window
    # Open the New Mail window, according to settings from the request if applicable  --- Alternate route: &#x60;/v1/ui/openwindow/newmail/&#x60;  Alternate route: &#x60;/legacy/ui/openwindow/newmail/&#x60;  Alternate route: &#x60;/dev/ui/openwindow/newmail/&#x60; 
    # @param new_mail The details of mail to create
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_ui_openwindow_newmail_with_http_info(new_mail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserInterfaceApi.post_ui_openwindow_newmail ..."
      end
      # verify the required parameter 'new_mail' is set
      fail ArgumentError, "Missing the required parameter 'new_mail' when calling UserInterfaceApi.post_ui_openwindow_newmail" if new_mail.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/ui/openwindow/newmail/".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(new_mail)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserInterfaceApi#post_ui_openwindow_newmail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
