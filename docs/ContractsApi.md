# EsiClient::ContractsApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_contracts**](ContractsApi.md#get_characters_character_id_contracts) | **GET** /characters/{character_id}/contracts/ | Get contracts
[**get_characters_character_id_contracts_contract_id_bids**](ContractsApi.md#get_characters_character_id_contracts_contract_id_bids) | **GET** /characters/{character_id}/contracts/{contract_id}/bids/ | Get contract bids
[**get_characters_character_id_contracts_contract_id_items**](ContractsApi.md#get_characters_character_id_contracts_contract_id_items) | **GET** /characters/{character_id}/contracts/{contract_id}/items/ | Get contract items


# **get_characters_character_id_contracts**
> Array&lt;GetCharactersCharacterIdContracts200Ok&gt; get_characters_character_id_contracts(character_id, opts)

Get contracts

Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  --- Alternate route: `/v1/characters/{character_id}/contracts/`  Alternate route: `/legacy/characters/{character_id}/contracts/`  Alternate route: `/dev/characters/{character_id}/contracts/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContractsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get contracts
  result = api_instance.get_characters_character_id_contracts(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts: #{e}"
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

[**Array&lt;GetCharactersCharacterIdContracts200Ok&gt;**](GetCharactersCharacterIdContracts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_contracts_contract_id_bids**
> Array&lt;GetCharactersCharacterIdContractsContractIdBids200Ok&gt; get_characters_character_id_contracts_contract_id_bids(character_idcontract_id, opts)

Get contract bids

Lists bids on a particular auction contract  --- Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/bids/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContractsApi.new

character_id = 56 # Integer | An EVE character ID

contract_id = 56 # Integer | ID of a contract

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get contract bids
  result = api_instance.get_characters_character_id_contracts_contract_id_bids(character_idcontract_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdBids200Ok&gt;**](GetCharactersCharacterIdContractsContractIdBids200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_contracts_contract_id_items**
> Array&lt;GetCharactersCharacterIdContractsContractIdItems200Ok&gt; get_characters_character_id_contracts_contract_id_items(character_idcontract_id, opts)

Get contract items

Lists Items and details of a particular contract  --- Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/items/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::ContractsApi.new

character_id = 56 # Integer | An EVE character ID

contract_id = 56 # Integer | ID of a contract

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get contract items
  result = api_instance.get_characters_character_id_contracts_contract_id_items(character_idcontract_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling ContractsApi->get_characters_character_id_contracts_contract_id_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contract_id** | **Integer**| ID of a contract | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdItems200Ok&gt;**](GetCharactersCharacterIdContractsContractIdItems200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



