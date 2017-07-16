# EsiClient::SkillsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_attributes**](SkillsApi.md#get_characters_character_id_attributes) | **GET** /characters/{character_id}/attributes/ | Get character attributes
[**get_characters_character_id_skillqueue**](SkillsApi.md#get_characters_character_id_skillqueue) | **GET** /characters/{character_id}/skillqueue/ | Get character&#39;s skill queue
[**get_characters_character_id_skills**](SkillsApi.md#get_characters_character_id_skills) | **GET** /characters/{character_id}/skills/ | Get character skills


# **get_characters_character_id_attributes**
> GetCharactersCharacterIdAttributesOk get_characters_character_id_attributes(character_id, opts)

Get character attributes

Return attributes of a character  --- Alternate route: `/v1/characters/{character_id}/attributes/`  Alternate route: `/legacy/characters/{character_id}/attributes/`  Alternate route: `/dev/characters/{character_id}/attributes/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::SkillsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character attributes
  result = api_instance.get_characters_character_id_attributes(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling SkillsApi->get_characters_character_id_attributes: #{e}"
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

[**GetCharactersCharacterIdAttributesOk**](GetCharactersCharacterIdAttributesOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_skillqueue**
> Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt; get_characters_character_id_skillqueue(character_id, opts)

Get character's skill queue

List the configured skill queue for the given character  --- Alternate route: `/v2/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/dev/characters/{character_id}/skillqueue/`  --- This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::SkillsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character's skill queue
  result = api_instance.get_characters_character_id_skillqueue(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling SkillsApi->get_characters_character_id_skillqueue: #{e}"
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

[**Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt;**](GetCharactersCharacterIdSkillqueue200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_skills**
> GetCharactersCharacterIdSkillsOk get_characters_character_id_skills(character_id, opts)

Get character skills

List all trained skills for the given character  --- Alternate route: `/v3/characters/{character_id}/skills/`  --- This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::SkillsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character skills
  result = api_instance.get_characters_character_id_skills(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling SkillsApi->get_characters_character_id_skills: #{e}"
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

[**GetCharactersCharacterIdSkillsOk**](GetCharactersCharacterIdSkillsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



