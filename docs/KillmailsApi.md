# EsiClient::KillmailsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_killmails_recent**](KillmailsApi.md#get_characters_character_id_killmails_recent) | **GET** /characters/{character_id}/killmails/recent/ | List kills and losses
[**get_killmails_killmail_id_killmail_hash**](KillmailsApi.md#get_killmails_killmail_id_killmail_hash) | **GET** /killmails/{killmail_id}/{killmail_hash}/ | Get a single killmail


# **get_characters_character_id_killmails_recent**
> Array&lt;GetCharactersCharacterIdKillmailsRecent200Ok&gt; get_characters_character_id_killmails_recent(character_id, opts)

List kills and losses

Return a list of character's recent kills and losses  --- Alternate route: `/v1/characters/{character_id}/killmails/recent/`  Alternate route: `/legacy/characters/{character_id}/killmails/recent/`  Alternate route: `/dev/characters/{character_id}/killmails/recent/`  --- This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::KillmailsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  max_count: 50, # Integer | How many killmails to return at maximum
  max_kill_id: 56, # Integer | Only return killmails with ID smaller than this. 
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List kills and losses
  result = api_instance.get_characters_character_id_killmails_recent(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling KillmailsApi->get_characters_character_id_killmails_recent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **max_count** | **Integer**| How many killmails to return at maximum | [optional] [default to 50]
 **max_kill_id** | **Integer**| Only return killmails with ID smaller than this.  | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdKillmailsRecent200Ok&gt;**](GetCharactersCharacterIdKillmailsRecent200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_killmails_killmail_id_killmail_hash**
> GetKillmailsKillmailIdKillmailHashOk get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts)

Get a single killmail

Return a single killmail from its ID and hash  --- Alternate route: `/v1/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/legacy/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/dev/killmails/{killmail_id}/{killmail_hash}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::KillmailsApi.new

killmail_hash = "killmail_hash_example" # String | The killmail hash for verification

killmail_id = 56 # Integer | The killmail ID to be queried

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get a single killmail
  result = api_instance.get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling KillmailsApi->get_killmails_killmail_id_killmail_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **killmail_hash** | **String**| The killmail hash for verification | 
 **killmail_id** | **Integer**| The killmail ID to be queried | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetKillmailsKillmailIdKillmailHashOk**](GetKillmailsKillmailIdKillmailHashOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



