# EsiClient::AssetsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_assets**](AssetsApi.md#get_characters_character_id_assets) | **GET** /characters/{character_id}/assets/ | Get character assets


# **get_characters_character_id_assets**
> Array&lt;GetCharactersCharacterIdAssets200Ok&gt; get_characters_character_id_assets(character_id, opts)

Get character assets

Return a list of the characters assets  --- Alternate route: `/v1/characters/{character_id}/assets/`  Alternate route: `/legacy/characters/{character_id}/assets/`  Alternate route: `/dev/characters/{character_id}/assets/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::AssetsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character assets
  result = api_instance.get_characters_character_id_assets(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling AssetsApi->get_characters_character_id_assets: #{e}"
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

[**Array&lt;GetCharactersCharacterIdAssets200Ok&gt;**](GetCharactersCharacterIdAssets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



