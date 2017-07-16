# EsiClient::CharacterApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id**](CharacterApi.md#get_characters_character_id) | **GET** /characters/{character_id}/ | Get character&#39;s public information
[**get_characters_character_id_agents_research**](CharacterApi.md#get_characters_character_id_agents_research) | **GET** /characters/{character_id}/agents_research/ | Get agents research
[**get_characters_character_id_blueprints**](CharacterApi.md#get_characters_character_id_blueprints) | **GET** /characters/{character_id}/blueprints/ | Get blueprints
[**get_characters_character_id_chat_channels**](CharacterApi.md#get_characters_character_id_chat_channels) | **GET** /characters/{character_id}/chat_channels/ | Get chat channels
[**get_characters_character_id_corporationhistory**](CharacterApi.md#get_characters_character_id_corporationhistory) | **GET** /characters/{character_id}/corporationhistory/ | Get corporation history
[**get_characters_character_id_medals**](CharacterApi.md#get_characters_character_id_medals) | **GET** /characters/{character_id}/medals/ | Get medals
[**get_characters_character_id_portrait**](CharacterApi.md#get_characters_character_id_portrait) | **GET** /characters/{character_id}/portrait/ | Get character portraits
[**get_characters_character_id_roles**](CharacterApi.md#get_characters_character_id_roles) | **GET** /characters/{character_id}/roles/ | Get character corporation roles
[**get_characters_character_id_standings**](CharacterApi.md#get_characters_character_id_standings) | **GET** /characters/{character_id}/standings/ | Get standings
[**get_characters_names**](CharacterApi.md#get_characters_names) | **GET** /characters/names/ | Get character names
[**post_characters_affiliation**](CharacterApi.md#post_characters_affiliation) | **POST** /characters/affiliation/ | Character affiliation
[**post_characters_character_id_cspa**](CharacterApi.md#post_characters_character_id_cspa) | **POST** /characters/{character_id}/cspa/ | Calculate a CSPA charge cost


# **get_characters_character_id**
> GetCharactersCharacterIdOk get_characters_character_id(character_id, opts)

Get character's public information

Public information about a character  --- Alternate route: `/v4/characters/{character_id}/`  Alternate route: `/dev/characters/{character_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character's public information
  result = api_instance.get_characters_character_id(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdOk**](GetCharactersCharacterIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_agents_research**
> Array&lt;GetCharactersCharacterIdAgentsResearch200Ok&gt; get_characters_character_id_agents_research(character_id, opts)

Get agents research

Return a list of agents research information for a character. The formula for finding the current research points with an agent is: currentPoints = remainderPoints + pointsPerDay * days(currentTime - researchStartDate)  --- Alternate route: `/v1/characters/{character_id}/agents_research/`  Alternate route: `/legacy/characters/{character_id}/agents_research/`  Alternate route: `/dev/characters/{character_id}/agents_research/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get agents research
  result = api_instance.get_characters_character_id_agents_research(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_agents_research: #{e}"
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

[**Array&lt;GetCharactersCharacterIdAgentsResearch200Ok&gt;**](GetCharactersCharacterIdAgentsResearch200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_blueprints**
> Array&lt;GetCharactersCharacterIdBlueprints200Ok&gt; get_characters_character_id_blueprints(character_id, opts)

Get blueprints

Return a list of blueprints the character has  --- Alternate route: `/v1/characters/{character_id}/blueprints/`  Alternate route: `/legacy/characters/{character_id}/blueprints/`  Alternate route: `/dev/characters/{character_id}/blueprints/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get blueprints
  result = api_instance.get_characters_character_id_blueprints(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_blueprints: #{e}"
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

[**Array&lt;GetCharactersCharacterIdBlueprints200Ok&gt;**](GetCharactersCharacterIdBlueprints200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_chat_channels**
> Array&lt;GetCharactersCharacterIdChatChannels200Ok&gt; get_characters_character_id_chat_channels(character_id, opts)

Get chat channels

Return chat channels that a character is the owner or an operator of  --- Alternate route: `/v1/characters/{character_id}/chat_channels/`  Alternate route: `/legacy/characters/{character_id}/chat_channels/`  Alternate route: `/dev/characters/{character_id}/chat_channels/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get chat channels
  result = api_instance.get_characters_character_id_chat_channels(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_chat_channels: #{e}"
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

[**Array&lt;GetCharactersCharacterIdChatChannels200Ok&gt;**](GetCharactersCharacterIdChatChannels200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_corporationhistory**
> Array&lt;GetCharactersCharacterIdCorporationhistory200Ok&gt; get_characters_character_id_corporationhistory(character_id, opts)

Get corporation history

Get a list of all the corporations a character has been a member of  --- Alternate route: `/v1/characters/{character_id}/corporationhistory/`  Alternate route: `/legacy/characters/{character_id}/corporationhistory/`  Alternate route: `/dev/characters/{character_id}/corporationhistory/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation history
  result = api_instance.get_characters_character_id_corporationhistory(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_corporationhistory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdCorporationhistory200Ok&gt;**](GetCharactersCharacterIdCorporationhistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_medals**
> Array&lt;GetCharactersCharacterIdMedals200Ok&gt; get_characters_character_id_medals(character_id, opts)

Get medals

Return a list of medals the character has  --- Alternate route: `/v1/characters/{character_id}/medals/`  Alternate route: `/legacy/characters/{character_id}/medals/`  Alternate route: `/dev/characters/{character_id}/medals/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get medals
  result = api_instance.get_characters_character_id_medals(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_medals: #{e}"
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

[**Array&lt;GetCharactersCharacterIdMedals200Ok&gt;**](GetCharactersCharacterIdMedals200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_portrait**
> GetCharactersCharacterIdPortraitOk get_characters_character_id_portrait(character_id, opts)

Get character portraits

Get portrait urls for a character  --- Alternate route: `/v2/characters/{character_id}/portrait/`  Alternate route: `/dev/characters/{character_id}/portrait/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character portraits
  result = api_instance.get_characters_character_id_portrait(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_portrait: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdPortraitOk**](GetCharactersCharacterIdPortraitOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_roles**
> Array&lt;String&gt; get_characters_character_id_roles(character_id, opts)

Get character corporation roles

Returns a character's corporation roles  --- Alternate route: `/v1/characters/{character_id}/roles/`  Alternate route: `/legacy/characters/{character_id}/roles/`  Alternate route: `/dev/characters/{character_id}/roles/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character corporation roles
  result = api_instance.get_characters_character_id_roles(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_roles: #{e}"
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

**Array&lt;String&gt;**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_standings**
> Array&lt;GetCharactersCharacterIdStandings200Ok&gt; get_characters_character_id_standings(character_id, opts)

Get standings

Return character standings from agents, NPC corporations, and factions  --- Alternate route: `/v1/characters/{character_id}/standings/`  Alternate route: `/legacy/characters/{character_id}/standings/`  Alternate route: `/dev/characters/{character_id}/standings/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get standings
  result = api_instance.get_characters_character_id_standings(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_character_id_standings: #{e}"
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

[**Array&lt;GetCharactersCharacterIdStandings200Ok&gt;**](GetCharactersCharacterIdStandings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_names**
> Array&lt;GetCharactersNames200Ok&gt; get_characters_names(character_ids, opts)

Get character names

Resolve a set of character IDs to character names  --- Alternate route: `/v1/characters/names/`  Alternate route: `/legacy/characters/names/`  Alternate route: `/dev/characters/names/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CharacterApi.new

character_ids = [56] # Array<Integer> | A comma separated list of character IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character names
  result = api_instance.get_characters_names(character_ids, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of character IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersNames200Ok&gt;**](GetCharactersNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_affiliation**
> Array&lt;PostCharactersAffiliation200Ok&gt; post_characters_affiliation(characters, opts)

Character affiliation

Bulk lookup of character IDs to corporation, alliance and faction  --- Alternate route: `/v1/characters/affiliation/`  Alternate route: `/legacy/characters/affiliation/`  Alternate route: `/dev/characters/affiliation/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CharacterApi.new

characters = [EsiClient::Array<Integer>.new] # Array<Integer> | The character IDs to fetch affiliations for

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Character affiliation
  result = api_instance.post_characters_affiliation(characters, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->post_characters_affiliation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characters** | **Array&lt;Integer&gt;**| The character IDs to fetch affiliations for | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;PostCharactersAffiliation200Ok&gt;**](PostCharactersAffiliation200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_cspa**
> PostCharactersCharacterIdCspaCreated post_characters_character_id_cspa(character_idcharacters, opts)

Calculate a CSPA charge cost

Takes a source character ID in the url and a set of target character ID's in the body, returns a CSPA charge cost  --- Alternate route: `/v3/characters/{character_id}/cspa/`  Alternate route: `/legacy/characters/{character_id}/cspa/`  Alternate route: `/dev/characters/{character_id}/cspa/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

characters = EsiClient::PostCharactersCharacterIdCspaCharacters.new # PostCharactersCharacterIdCspaCharacters | The target characters to calculate the charge for

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Calculate a CSPA charge cost
  result = api_instance.post_characters_character_id_cspa(character_idcharacters, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CharacterApi->post_characters_character_id_cspa: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **characters** | [**PostCharactersCharacterIdCspaCharacters**](PostCharactersCharacterIdCspaCharacters.md)| The target characters to calculate the charge for | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostCharactersCharacterIdCspaCreated**](PostCharactersCharacterIdCspaCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



