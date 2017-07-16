# EsiClient::FleetsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_fleets_fleet_id_members_member_id**](FleetsApi.md#delete_fleets_fleet_id_members_member_id) | **DELETE** /fleets/{fleet_id}/members/{member_id}/ | Kick fleet member
[**delete_fleets_fleet_id_squads_squad_id**](FleetsApi.md#delete_fleets_fleet_id_squads_squad_id) | **DELETE** /fleets/{fleet_id}/squads/{squad_id}/ | Delete fleet squad
[**delete_fleets_fleet_id_wings_wing_id**](FleetsApi.md#delete_fleets_fleet_id_wings_wing_id) | **DELETE** /fleets/{fleet_id}/wings/{wing_id}/ | Delete fleet wing
[**get_fleets_fleet_id**](FleetsApi.md#get_fleets_fleet_id) | **GET** /fleets/{fleet_id}/ | Get fleet information
[**get_fleets_fleet_id_members**](FleetsApi.md#get_fleets_fleet_id_members) | **GET** /fleets/{fleet_id}/members/ | Get fleet members
[**get_fleets_fleet_id_wings**](FleetsApi.md#get_fleets_fleet_id_wings) | **GET** /fleets/{fleet_id}/wings/ | Get fleet wings
[**post_fleets_fleet_id_members**](FleetsApi.md#post_fleets_fleet_id_members) | **POST** /fleets/{fleet_id}/members/ | Create fleet invitation
[**post_fleets_fleet_id_wings**](FleetsApi.md#post_fleets_fleet_id_wings) | **POST** /fleets/{fleet_id}/wings/ | Create fleet wing
[**post_fleets_fleet_id_wings_wing_id_squads**](FleetsApi.md#post_fleets_fleet_id_wings_wing_id_squads) | **POST** /fleets/{fleet_id}/wings/{wing_id}/squads/ | Create fleet squad
[**put_fleets_fleet_id**](FleetsApi.md#put_fleets_fleet_id) | **PUT** /fleets/{fleet_id}/ | Update fleet
[**put_fleets_fleet_id_members_member_id**](FleetsApi.md#put_fleets_fleet_id_members_member_id) | **PUT** /fleets/{fleet_id}/members/{member_id}/ | Move fleet member
[**put_fleets_fleet_id_squads_squad_id**](FleetsApi.md#put_fleets_fleet_id_squads_squad_id) | **PUT** /fleets/{fleet_id}/squads/{squad_id}/ | Rename fleet squad
[**put_fleets_fleet_id_wings_wing_id**](FleetsApi.md#put_fleets_fleet_id_wings_wing_id) | **PUT** /fleets/{fleet_id}/wings/{wing_id}/ | Rename fleet wing


# **delete_fleets_fleet_id_members_member_id**
> delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)

Kick fleet member

Kick a fleet member  --- Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/dev/fleets/{fleet_id}/members/{member_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Kick fleet member
  api_instance.delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_members_member_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
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



# **delete_fleets_fleet_id_squads_squad_id**
> delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)

Delete fleet squad

Delete a fleet squad, only empty squads can be deleted  --- Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/dev/fleets/{fleet_id}/squads/{squad_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

squad_id = 789 # Integer | The squad to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet squad
  api_instance.delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **squad_id** | **Integer**| The squad to delete | 
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



# **delete_fleets_fleet_id_wings_wing_id**
> delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)

Delete fleet wing

Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty  --- Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet wing
  api_instance.delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing to delete | 
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



# **get_fleets_fleet_id**
> GetFleetsFleetIdOk get_fleets_fleet_id(fleet_id, opts)

Get fleet information

Return details about a fleet  --- Alternate route: `/v1/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/dev/fleets/{fleet_id}/`  --- This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet information
  result = api_instance.get_fleets_fleet_id(fleet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetFleetsFleetIdOk**](GetFleetsFleetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleets_fleet_id_members**
> Array&lt;GetFleetsFleetIdMembers200Ok&gt; get_fleets_fleet_id_members(fleet_id, opts)

Get fleet members

Return information about fleet members  --- Alternate route: `/v1/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/dev/fleets/{fleet_id}/members/`  --- This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet members
  result = api_instance.get_fleets_fleet_id_members(fleet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFleetsFleetIdMembers200Ok&gt;**](GetFleetsFleetIdMembers200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleets_fleet_id_wings**
> Array&lt;GetFleetsFleetIdWings200Ok&gt; get_fleets_fleet_id_wings(fleet_id, opts)

Get fleet wings

Return information about wings in a fleet  --- Alternate route: `/v1/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/dev/fleets/{fleet_id}/wings/`  --- This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet wings
  result = api_instance.get_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->get_fleets_fleet_id_wings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFleetsFleetIdWings200Ok&gt;**](GetFleetsFleetIdWings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_fleets_fleet_id_members**
> post_fleets_fleet_id_members(fleet_id, invitation, opts)

Create fleet invitation

Invite a character into the fleet, if a character has a CSPA charge set, it is not possible to invite them to the fleet using ESI  --- Alternate route: `/v1/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/dev/fleets/{fleet_id}/members/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

invitation = EsiClient::PostFleetsFleetIdMembersInvitation.new # PostFleetsFleetIdMembersInvitation | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet invitation
  api_instance.post_fleets_fleet_id_members(fleet_id, invitation, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **invitation** | [**PostFleetsFleetIdMembersInvitation**](PostFleetsFleetIdMembersInvitation.md)| Details of the invitation | 
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



# **post_fleets_fleet_id_wings**
> PostFleetsFleetIdWingsCreated post_fleets_fleet_id_wings(fleet_id, opts)

Create fleet wing

Create a new wing in a fleet  --- Alternate route: `/v1/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/dev/fleets/{fleet_id}/wings/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet wing
  result = api_instance.post_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_wings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostFleetsFleetIdWingsCreated**](PostFleetsFleetIdWingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_fleets_fleet_id_wings_wing_id_squads**
> PostFleetsFleetIdWingsWingIdSquadsCreated post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)

Create fleet squad

Create a new squad in a fleet  --- Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/squads/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing_id to create squad in

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet squad
  result = api_instance.post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing_id to create squad in | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostFleetsFleetIdWingsWingIdSquadsCreated**](PostFleetsFleetIdWingsWingIdSquadsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_fleets_fleet_id**
> put_fleets_fleet_id(fleet_id, new_settings, opts)

Update fleet

Update settings about a fleet  --- Alternate route: `/v1/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/dev/fleets/{fleet_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

new_settings = EsiClient::PutFleetsFleetIdNewSettings.new # PutFleetsFleetIdNewSettings | What to update for this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update fleet
  api_instance.put_fleets_fleet_id(fleet_id, new_settings, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **new_settings** | [**PutFleetsFleetIdNewSettings**](PutFleetsFleetIdNewSettings.md)| What to update for this fleet | 
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



# **put_fleets_fleet_id_members_member_id**
> put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)

Move fleet member

Move a fleet member around  --- Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/dev/fleets/{fleet_id}/members/{member_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

movement = EsiClient::PutFleetsFleetIdMembersMemberIdMovement.new # PutFleetsFleetIdMembersMemberIdMovement | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Move fleet member
  api_instance.put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_members_member_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
 **movement** | [**PutFleetsFleetIdMembersMemberIdMovement**](PutFleetsFleetIdMembersMemberIdMovement.md)| Details of the invitation | 
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



# **put_fleets_fleet_id_squads_squad_id**
> put_fleets_fleet_id_squads_squad_id(fleet_id, naming, squad_id, opts)

Rename fleet squad

Rename a fleet squad  --- Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/dev/fleets/{fleet_id}/squads/{squad_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = EsiClient::PutFleetsFleetIdSquadsSquadIdNaming.new # PutFleetsFleetIdSquadsSquadIdNaming | New name of the squad

squad_id = 789 # Integer | The squad to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet squad
  api_instance.put_fleets_fleet_id_squads_squad_id(fleet_id, naming, squad_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_squads_squad_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**PutFleetsFleetIdSquadsSquadIdNaming**](PutFleetsFleetIdSquadsSquadIdNaming.md)| New name of the squad | 
 **squad_id** | **Integer**| The squad to rename | 
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



# **put_fleets_fleet_id_wings_wing_id**
> put_fleets_fleet_id_wings_wing_id(fleet_id, naming, wing_id, opts)

Rename fleet wing

Rename a fleet wing  --- Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = EsiClient::PutFleetsFleetIdWingsWingIdNaming.new # PutFleetsFleetIdWingsWingIdNaming | New name of the wing

wing_id = 789 # Integer | The wing to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet wing
  api_instance.put_fleets_fleet_id_wings_wing_id(fleet_id, naming, wing_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FleetsApi->put_fleets_fleet_id_wings_wing_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**PutFleetsFleetIdWingsWingIdNaming**](PutFleetsFleetIdWingsWingIdNaming.md)| New name of the wing | 
 **wing_id** | **Integer**| The wing to rename | 
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



