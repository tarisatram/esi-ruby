# EsiClient::ContactsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_characters_character_id_contacts**](ContactsApi.md#delete_characters_character_id_contacts) | **DELETE** /characters/{character_id}/contacts/ | Delete contacts
[**get_characters_character_id_contacts**](ContactsApi.md#get_characters_character_id_contacts) | **GET** /characters/{character_id}/contacts/ | Get contacts
[**get_characters_character_id_contacts_labels**](ContactsApi.md#get_characters_character_id_contacts_labels) | **GET** /characters/{character_id}/contacts/labels/ | Get contact labels
[**post_characters_character_id_contacts**](ContactsApi.md#post_characters_character_id_contacts) | **POST** /characters/{character_id}/contacts/ | Add contacts
[**put_characters_character_id_contacts**](ContactsApi.md#put_characters_character_id_contacts) | **PUT** /characters/{character_id}/contacts/ | Edit contacts


# **delete_characters_character_id_contacts**
> delete_characters_character_id_contacts(character_idcontact_ids, opts)

Delete contacts

Bulk delete contacts  --- Alternate route: `/v1/characters/{character_id}/contacts/`  Alternate route: `/legacy/characters/{character_id}/contacts/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContactsApi.new

character_id = 56 # Integer | An EVE character ID

contact_ids = [EsiClient::Array<Integer>.new] # Array<Integer> | A list of contacts to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete contacts
  api_instance.delete_characters_character_id_contacts(character_idcontact_ids, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling ContactsApi->delete_characters_character_id_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contact_ids** | **Array&lt;Integer&gt;**| A list of contacts to delete | 
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



# **get_characters_character_id_contacts**
> Array&lt;GetCharactersCharacterIdContacts200Ok&gt; get_characters_character_id_contacts(character_id, opts)

Get contacts

Return contacts of a character  --- Alternate route: `/v1/characters/{character_id}/contacts/`  Alternate route: `/legacy/characters/{character_id}/contacts/`  Alternate route: `/dev/characters/{character_id}/contacts/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContactsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page of results to return
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get contacts
  result = api_instance.get_characters_character_id_contacts(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContactsApi->get_characters_character_id_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContacts200Ok&gt;**](GetCharactersCharacterIdContacts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_contacts_labels**
> Array&lt;GetCharactersCharacterIdContactsLabels200Ok&gt; get_characters_character_id_contacts_labels(character_id, opts)

Get contact labels

Return custom labels for contacts the character defined  --- Alternate route: `/v1/characters/{character_id}/contacts/labels/`  Alternate route: `/legacy/characters/{character_id}/contacts/labels/`  Alternate route: `/dev/characters/{character_id}/contacts/labels/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContactsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get contact labels
  result = api_instance.get_characters_character_id_contacts_labels(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContactsApi->get_characters_character_id_contacts_labels: #{e}"
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

[**Array&lt;GetCharactersCharacterIdContactsLabels200Ok&gt;**](GetCharactersCharacterIdContactsLabels200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_characters_character_id_contacts**
> Array&lt;Integer&gt; post_characters_character_id_contacts(character_idcontact_ids, standing, opts)

Add contacts

Bulk add contacts with same settings  --- Alternate route: `/v1/characters/{character_id}/contacts/`  Alternate route: `/legacy/characters/{character_id}/contacts/`  Alternate route: `/dev/characters/{character_id}/contacts/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContactsApi.new

character_id = 56 # Integer | An EVE character ID

contact_ids = [EsiClient::Array<Integer>.new] # Array<Integer> | A list of contacts to add

standing = 3.4 # Float | Standing for the new contact

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  label_id: 0, # Integer | Add a custom label to the new contact
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  watched: false, # BOOLEAN | Whether the new contact should be watched, note this is only effective on characters
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Add contacts
  result = api_instance.post_characters_character_id_contacts(character_idcontact_ids, standing, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContactsApi->post_characters_character_id_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contact_ids** | **Array&lt;Integer&gt;**| A list of contacts to add | 
 **standing** | **Float**| Standing for the new contact | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **label_id** | **Integer**| Add a custom label to the new contact | [optional] [default to 0]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **watched** | **BOOLEAN**| Whether the new contact should be watched, note this is only effective on characters | [optional] [default to false]
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_characters_character_id_contacts**
> put_characters_character_id_contacts(character_idcontact_ids, standing, opts)

Edit contacts

Bulk edit contacts with same settings  --- Alternate route: `/v1/characters/{character_id}/contacts/`  Alternate route: `/legacy/characters/{character_id}/contacts/`  Alternate route: `/dev/characters/{character_id}/contacts/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContactsApi.new

character_id = 56 # Integer | An EVE character ID

contact_ids = [EsiClient::Array<Integer>.new] # Array<Integer> | A list of contacts to edit

standing = 3.4 # Float | Standing for the contact

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  label_id: 0, # Integer | Add a custom label to the contact, use 0 for clearing label
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  watched: false, # BOOLEAN | Whether the contact should be watched, note this is only effective on characters
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Edit contacts
  api_instance.put_characters_character_id_contacts(character_idcontact_ids, standing, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling ContactsApi->put_characters_character_id_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contact_ids** | **Array&lt;Integer&gt;**| A list of contacts to edit | 
 **standing** | **Float**| Standing for the contact | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **label_id** | **Integer**| Add a custom label to the contact, use 0 for clearing label | [optional] [default to 0]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **watched** | **BOOLEAN**| Whether the contact should be watched, note this is only effective on characters | [optional] [default to false]
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



