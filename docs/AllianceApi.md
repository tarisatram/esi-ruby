# EsiClient::AllianceApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_alliances**](AllianceApi.md#get_alliances) | **GET** /alliances/ | List all alliances
[**get_alliances_alliance_id**](AllianceApi.md#get_alliances_alliance_id) | **GET** /alliances/{alliance_id}/ | Get alliance information
[**get_alliances_alliance_id_corporations**](AllianceApi.md#get_alliances_alliance_id_corporations) | **GET** /alliances/{alliance_id}/corporations/ | List alliance&#39;s corporations
[**get_alliances_alliance_id_icons**](AllianceApi.md#get_alliances_alliance_id_icons) | **GET** /alliances/{alliance_id}/icons/ | Get alliance icon
[**get_alliances_names**](AllianceApi.md#get_alliances_names) | **GET** /alliances/names/ | Get alliance names


# **get_alliances**
> Array&lt;Integer&gt; get_alliances(opts)

List all alliances

List all active player alliances  --- Alternate route: `/v1/alliances/`  Alternate route: `/legacy/alliances/`  Alternate route: `/dev/alliances/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::AllianceApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List all alliances
  result = api_instance.get_alliances(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliances_alliance_id**
> GetAlliancesAllianceIdOk get_alliances_alliance_id(alliance_id, opts)

Get alliance information

Public information about an alliance  --- Alternate route: `/v2/alliances/{alliance_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance information
  result = api_instance.get_alliances_alliance_id(alliance_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetAlliancesAllianceIdOk**](GetAlliancesAllianceIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliances_alliance_id_corporations**
> Array&lt;Integer&gt; get_alliances_alliance_id_corporations(alliance_id, opts)

List alliance's corporations

List all current member corporations of an alliance  --- Alternate route: `/v1/alliances/{alliance_id}/corporations/`  Alternate route: `/legacy/alliances/{alliance_id}/corporations/`  Alternate route: `/dev/alliances/{alliance_id}/corporations/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List alliance's corporations
  result = api_instance.get_alliances_alliance_id_corporations(alliance_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id_corporations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliances_alliance_id_icons**
> GetAlliancesAllianceIdIconsOk get_alliances_alliance_id_icons(alliance_id, opts)

Get alliance icon

Get the icon urls for a alliance  --- Alternate route: `/v1/alliances/{alliance_id}/icons/`  Alternate route: `/legacy/alliances/{alliance_id}/icons/`  Alternate route: `/dev/alliances/{alliance_id}/icons/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance icon
  result = api_instance.get_alliances_alliance_id_icons(alliance_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id_icons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetAlliancesAllianceIdIconsOk**](GetAlliancesAllianceIdIconsOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliances_names**
> Array&lt;GetAlliancesNames200Ok&gt; get_alliances_names(alliance_ids, opts)

Get alliance names

Resolve a set of alliance IDs to alliance names  --- Alternate route: `/v1/alliances/names/`  Alternate route: `/legacy/alliances/names/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::AllianceApi.new

alliance_ids = [56] # Array<Integer> | A comma separated list of alliance IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance names
  result = api_instance.get_alliances_names(alliance_ids, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of alliance IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetAlliancesNames200Ok&gt;**](GetAlliancesNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



