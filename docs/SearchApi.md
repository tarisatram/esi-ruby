# EsiClient::SearchApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_search**](SearchApi.md#get_characters_character_id_search) | **GET** /characters/{character_id}/search/ | Search on a string
[**get_search**](SearchApi.md#get_search) | **GET** /search/ | Search on a string


# **get_characters_character_id_search**
> GetCharactersCharacterIdSearchOk get_characters_character_id_search(categories, character_idsearch, opts)

Search on a string

Search for entities that match a given sub-string.  --- Alternate route: `/v2/characters/{character_id}/search/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::SearchApi.new

categories = ["categories_example"] # Array<String> | Type of entities to search for

character_id = 56 # Integer | An EVE character ID

search = "search_example" # String | The string to search on

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  strict: false, # BOOLEAN | Whether the search should be a strict match
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Search on a string
  result = api_instance.get_characters_character_id_search(categories, character_idsearch, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling SearchApi->get_characters_character_id_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | [**Array&lt;String&gt;**](String.md)| Type of entities to search for | 
 **character_id** | **Integer**| An EVE character ID | 
 **search** | **String**| The string to search on | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **strict** | **BOOLEAN**| Whether the search should be a strict match | [optional] [default to false]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdSearchOk**](GetCharactersCharacterIdSearchOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_search**
> GetSearchOk get_search(categories, search, opts)

Search on a string

Search for entities that match a given sub-string.  --- Alternate route: `/v1/search/`  Alternate route: `/legacy/search/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::SearchApi.new

categories = ["categories_example"] # Array<String> | Type of entities to search for

search = "search_example" # String | The string to search on

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  strict: false, # BOOLEAN | Whether the search should be a strict match
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Search on a string
  result = api_instance.get_search(categories, search, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling SearchApi->get_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | [**Array&lt;String&gt;**](String.md)| Type of entities to search for | 
 **search** | **String**| The string to search on | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **strict** | **BOOLEAN**| Whether the search should be a strict match | [optional] [default to false]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetSearchOk**](GetSearchOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



