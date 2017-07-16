# EsiClient::FittingsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_characters_character_id_fittings_fitting_id**](FittingsApi.md#delete_characters_character_id_fittings_fitting_id) | **DELETE** /characters/{character_id}/fittings/{fitting_id}/ | Delete fitting
[**get_characters_character_id_fittings**](FittingsApi.md#get_characters_character_id_fittings) | **GET** /characters/{character_id}/fittings/ | Get fittings
[**post_characters_character_id_fittings**](FittingsApi.md#post_characters_character_id_fittings) | **POST** /characters/{character_id}/fittings/ | Create fitting


# **delete_characters_character_id_fittings_fitting_id**
> delete_characters_character_id_fittings_fitting_id(character_idfitting_id, opts)

Delete fitting

Delete a fitting from a character  --- Alternate route: `/v1/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/legacy/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/dev/characters/{character_id}/fittings/{fitting_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FittingsApi.new

character_id = 56 # Integer | An EVE character ID

fitting_id = 56 # Integer | ID for a fitting of this character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fitting
  api_instance.delete_characters_character_id_fittings_fitting_id(character_idfitting_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling FittingsApi->delete_characters_character_id_fittings_fitting_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **fitting_id** | **Integer**| ID for a fitting of this character | 
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



# **get_characters_character_id_fittings**
> Array&lt;GetCharactersCharacterIdFittings200Ok&gt; get_characters_character_id_fittings(character_id, opts)

Get fittings

Return fittings of a character  --- Alternate route: `/v1/characters/{character_id}/fittings/`  Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/dev/characters/{character_id}/fittings/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FittingsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fittings
  result = api_instance.get_characters_character_id_fittings(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FittingsApi->get_characters_character_id_fittings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdFittings200Ok&gt;**](GetCharactersCharacterIdFittings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_fittings**
> PostCharactersCharacterIdFittingsCreated post_characters_character_id_fittings(character_id, opts)

Create fitting

Save a new fitting for a character  --- Alternate route: `/v1/characters/{character_id}/fittings/`  Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/dev/characters/{character_id}/fittings/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::FittingsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  fitting: EsiClient::PostCharactersCharacterIdFittingsFitting.new, # PostCharactersCharacterIdFittingsFitting | Details about the new fitting
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fitting
  result = api_instance.post_characters_character_id_fittings(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling FittingsApi->post_characters_character_id_fittings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **fitting** | [**PostCharactersCharacterIdFittingsFitting**](PostCharactersCharacterIdFittingsFitting.md)| Details about the new fitting | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostCharactersCharacterIdFittingsCreated**](PostCharactersCharacterIdFittingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



