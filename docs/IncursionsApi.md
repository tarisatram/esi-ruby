# EsiClient::IncursionsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_incursions**](IncursionsApi.md#get_incursions) | **GET** /incursions/ | List incursions


# **get_incursions**
> Array&lt;GetIncursions200Ok&gt; get_incursions(opts)

List incursions

Return a list of current incursions  --- Alternate route: `/v1/incursions/`  Alternate route: `/legacy/incursions/`  Alternate route: `/dev/incursions/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::IncursionsApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List incursions
  result = api_instance.get_incursions(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling IncursionsApi->get_incursions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetIncursions200Ok&gt;**](GetIncursions200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



