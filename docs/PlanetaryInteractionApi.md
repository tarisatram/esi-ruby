# EsiClient::PlanetaryInteractionApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_planets**](PlanetaryInteractionApi.md#get_characters_character_id_planets) | **GET** /characters/{character_id}/planets/ | Get colonies
[**get_characters_character_id_planets_planet_id**](PlanetaryInteractionApi.md#get_characters_character_id_planets_planet_id) | **GET** /characters/{character_id}/planets/{planet_id}/ | Get colony layout
[**get_universe_schematics_schematic_id**](PlanetaryInteractionApi.md#get_universe_schematics_schematic_id) | **GET** /universe/schematics/{schematic_id}/ | Get schematic information


# **get_characters_character_id_planets**
> Array&lt;GetCharactersCharacterIdPlanets200Ok&gt; get_characters_character_id_planets(character_id, opts)

Get colonies

Returns a list of all planetary colonies owned by a character.  --- Alternate route: `/v1/characters/{character_id}/planets/`  Alternate route: `/legacy/characters/{character_id}/planets/`  Alternate route: `/dev/characters/{character_id}/planets/`  --- This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::PlanetaryInteractionApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get colonies
  result = api_instance.get_characters_character_id_planets(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_characters_character_id_planets: #{e}"
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

[**Array&lt;GetCharactersCharacterIdPlanets200Ok&gt;**](GetCharactersCharacterIdPlanets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_planets_planet_id**
> GetCharactersCharacterIdPlanetsPlanetIdOk get_characters_character_id_planets_planet_id(character_idplanet_id, opts)

Get colony layout

Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information will not update until this criteria is met.  --- Alternate route: `/v2/characters/{character_id}/planets/{planet_id}/`  --- This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::PlanetaryInteractionApi.new

character_id = 56 # Integer | An EVE character ID

planet_id = 56 # Integer | Planet id of the target planet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get colony layout
  result = api_instance.get_characters_character_id_planets_planet_id(character_idplanet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **planet_id** | **Integer**| Planet id of the target planet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdPlanetsPlanetIdOk**](GetCharactersCharacterIdPlanetsPlanetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_schematics_schematic_id**
> GetUniverseSchematicsSchematicIdOk get_universe_schematics_schematic_id(schematic_id, opts)

Get schematic information

Get information on a planetary factory schematic  --- Alternate route: `/v1/universe/schematics/{schematic_id}/`  Alternate route: `/legacy/universe/schematics/{schematic_id}/`  Alternate route: `/dev/universe/schematics/{schematic_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::PlanetaryInteractionApi.new

schematic_id = 56 # Integer | A PI schematic ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get schematic information
  result = api_instance.get_universe_schematics_schematic_id(schematic_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schematic_id** | **Integer**| A PI schematic ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseSchematicsSchematicIdOk**](GetUniverseSchematicsSchematicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



