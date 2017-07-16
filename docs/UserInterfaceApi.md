# EsiClient::UserInterfaceApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_ui_autopilot_waypoint**](UserInterfaceApi.md#post_ui_autopilot_waypoint) | **POST** /ui/autopilot/waypoint/ | Set Autopilot Waypoint
[**post_ui_openwindow_contract**](UserInterfaceApi.md#post_ui_openwindow_contract) | **POST** /ui/openwindow/contract/ | Open Contract Window
[**post_ui_openwindow_information**](UserInterfaceApi.md#post_ui_openwindow_information) | **POST** /ui/openwindow/information/ | Open Information Window
[**post_ui_openwindow_marketdetails**](UserInterfaceApi.md#post_ui_openwindow_marketdetails) | **POST** /ui/openwindow/marketdetails/ | Open Market Details
[**post_ui_openwindow_newmail**](UserInterfaceApi.md#post_ui_openwindow_newmail) | **POST** /ui/openwindow/newmail/ | Open New Mail Window


# **post_ui_autopilot_waypoint**
> post_ui_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, opts)

Set Autopilot Waypoint

Set a solar system as autopilot waypoint  --- Alternate route: `/v2/ui/autopilot/waypoint/`  Alternate route: `/dev/ui/autopilot/waypoint/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UserInterfaceApi.new

add_to_beginning = false # BOOLEAN | Whether this solar system should be added to the beginning of all waypoints

clear_other_waypoints = false # BOOLEAN | Whether clean other waypoints beforing adding this one

destination_id = 789 # Integer | The destination to travel to, can be solar system, station or structure's id

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Set Autopilot Waypoint
  api_instance.post_ui_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling UserInterfaceApi->post_ui_autopilot_waypoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_to_beginning** | **BOOLEAN**| Whether this solar system should be added to the beginning of all waypoints | [default to false]
 **clear_other_waypoints** | **BOOLEAN**| Whether clean other waypoints beforing adding this one | [default to false]
 **destination_id** | **Integer**| The destination to travel to, can be solar system, station or structure&#39;s id | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_ui_openwindow_contract**
> post_ui_openwindow_contract(contract_id, opts)

Open Contract Window

Open the contract window inside the client  --- Alternate route: `/v1/ui/openwindow/contract/`  Alternate route: `/legacy/ui/openwindow/contract/`  Alternate route: `/dev/ui/openwindow/contract/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UserInterfaceApi.new

contract_id = 56 # Integer | The contract to open

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Contract Window
  api_instance.post_ui_openwindow_contract(contract_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling UserInterfaceApi->post_ui_openwindow_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| The contract to open | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_ui_openwindow_information**
> post_ui_openwindow_information(target_id, opts)

Open Information Window

Open the information window for a character, corporation or alliance inside the client  --- Alternate route: `/v1/ui/openwindow/information/`  Alternate route: `/legacy/ui/openwindow/information/`  Alternate route: `/dev/ui/openwindow/information/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UserInterfaceApi.new

target_id = 56 # Integer | The target to open

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Information Window
  api_instance.post_ui_openwindow_information(target_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling UserInterfaceApi->post_ui_openwindow_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_id** | **Integer**| The target to open | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_ui_openwindow_marketdetails**
> post_ui_openwindow_marketdetails(type_id, opts)

Open Market Details

Open the market details window for a specific typeID inside the client  --- Alternate route: `/v1/ui/openwindow/marketdetails/`  Alternate route: `/legacy/ui/openwindow/marketdetails/`  Alternate route: `/dev/ui/openwindow/marketdetails/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UserInterfaceApi.new

type_id = 56 # Integer | The item type to open in market window

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Market Details
  api_instance.post_ui_openwindow_marketdetails(type_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling UserInterfaceApi->post_ui_openwindow_marketdetails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **Integer**| The item type to open in market window | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_ui_openwindow_newmail**
> post_ui_openwindow_newmail(new_mail, opts)

Open New Mail Window

Open the New Mail window, according to settings from the request if applicable  --- Alternate route: `/v1/ui/openwindow/newmail/`  Alternate route: `/legacy/ui/openwindow/newmail/`  Alternate route: `/dev/ui/openwindow/newmail/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UserInterfaceApi.new

new_mail = EsiClient::PostUiOpenwindowNewmailNewMail.new # PostUiOpenwindowNewmailNewMail | The details of mail to create

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open New Mail Window
  api_instance.post_ui_openwindow_newmail(new_mail, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling UserInterfaceApi->post_ui_openwindow_newmail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_mail** | [**PostUiOpenwindowNewmailNewMail**](PostUiOpenwindowNewmailNewMail.md)| The details of mail to create | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



