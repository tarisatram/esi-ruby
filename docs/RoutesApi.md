# EsiClient::RoutesApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_route_origin_destination**](RoutesApi.md#get_route_origin_destination) | **GET** /route/{origin}/{destination}/ | Get route


# **get_route_origin_destination**
> Array&lt;Integer&gt; get_route_origin_destination(destination, origin, opts)

Get route

Get the systems between origin and destination  --- Alternate route: `/legacy/route/{origin}/{destination}/`  Alternate route: `/dev/route/{origin}/{destination}/`  Alternate route: `/v1/route/{origin}/{destination}/`  --- This route is cached for up to 86400 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::RoutesApi.new

destination = 56 # Integer | destination solar system ID

origin = 56 # Integer | origin solar system ID

opts = { 
  avoid: [56], # Array<Integer> | avoid solar system ID(s)
  connections: [EsiClient::Array<Integer>.new], # Array<Array<Integer>> | connected solar system pairs
  datasource: "tranquility", # String | The server name you would like data from
  flag: "shortest", # String | route security preference
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get route
  result = api_instance.get_route_origin_destination(destination, origin, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling RoutesApi->get_route_origin_destination: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination** | **Integer**| destination solar system ID | 
 **origin** | **Integer**| origin solar system ID | 
 **avoid** | [**Array&lt;Integer&gt;**](Integer.md)| avoid solar system ID(s) | [optional] 
 **connections** | [**Array&lt;Array&lt;Integer&gt;&gt;**](Array&lt;Integer&gt;.md)| connected solar system pairs | [optional] 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **flag** | **String**| route security preference | [optional] [default to shortest]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



