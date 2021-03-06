=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module EsiClient
  class StatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve the uptime and player counts
    # EVE Server status  --- Alternate route: `/v1/status/`  Alternate route: `/legacy/status/`  Alternate route: `/dev/status/`  --- This route is cached for up to 30 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetStatusOk]
    def get_status(opts = {})
      data, _status_code, _headers = get_status_with_http_info(opts)
      return data
    end

    # Retrieve the uptime and player counts
    # EVE Server status  --- Alternate route: &#x60;/v1/status/&#x60;  Alternate route: &#x60;/legacy/status/&#x60;  Alternate route: &#x60;/dev/status/&#x60;  --- This route is cached for up to 30 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetStatusOk, Fixnum, Hash)>] GetStatusOk data, response status code and response headers
    def get_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatusApi.get_status ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/status/".sub('{format}','json')

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
        :return_type => 'GetStatusOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusApi#get_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
