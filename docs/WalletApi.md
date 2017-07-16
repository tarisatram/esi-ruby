# EsiClient::WalletApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_wallet**](WalletApi.md#get_characters_character_id_wallet) | **GET** /characters/{character_id}/wallet/ | Get a character&#39;s wallet balance
[**get_characters_character_id_wallet_journal**](WalletApi.md#get_characters_character_id_wallet_journal) | **GET** /characters/{character_id}/wallet/journal/ | Get character wallet journal
[**get_characters_character_id_wallet_transactions**](WalletApi.md#get_characters_character_id_wallet_transactions) | **GET** /characters/{character_id}/wallet/transactions/ | Get wallet transactions
[**get_characters_character_id_wallets**](WalletApi.md#get_characters_character_id_wallets) | **GET** /characters/{character_id}/wallets/ | List wallets and balances
[**get_characters_character_id_wallets_journal**](WalletApi.md#get_characters_character_id_wallets_journal) | **GET** /characters/{character_id}/wallets/journal/ | Get character wallet journal


# **get_characters_character_id_wallet**
> Float get_characters_character_id_wallet(character_id, opts)

Get a character's wallet balance

Returns a character's wallet balance  --- Alternate route: `/v1/characters/{character_id}/wallet/`  Alternate route: `/legacy/characters/{character_id}/wallet/`  Alternate route: `/dev/characters/{character_id}/wallet/`  --- This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get a character's wallet balance
  result = api_instance.get_characters_character_id_wallet(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet: #{e}"
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

**Float**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallet_journal**
> Array&lt;GetCharactersCharacterIdWalletJournal200Ok&gt; get_characters_character_id_wallet_journal(character_id, opts)

Get character wallet journal

Retrieve character wallet journal  --- Alternate route: `/v1/characters/{character_id}/wallet/journal/`  Alternate route: `/legacy/characters/{character_id}/wallet/journal/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character wallet journal
  result = api_instance.get_characters_character_id_wallet_journal(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show journal entries happened before the transaction referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdWalletJournal200Ok&gt;**](GetCharactersCharacterIdWalletJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallet_transactions**
> Array&lt;GetCharactersCharacterIdWalletTransactions200Ok&gt; get_characters_character_id_wallet_transactions(character_id, opts)

Get wallet transactions

Get wallet transactions of a character  --- Alternate route: `/v1/characters/{character_id}/wallet/transactions/`  Alternate route: `/legacy/characters/{character_id}/wallet/transactions/`  Alternate route: `/dev/characters/{character_id}/wallet/transactions/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show transactions happened before the one referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get wallet transactions
  result = api_instance.get_characters_character_id_wallet_transactions(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallet_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show transactions happened before the one referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdWalletTransactions200Ok&gt;**](GetCharactersCharacterIdWalletTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallets**
> Array&lt;GetCharactersCharacterIdWallets200Ok&gt; get_characters_character_id_wallets(character_id, opts)

List wallets and balances

List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  --- Alternate route: `/v1/characters/{character_id}/wallets/`  Alternate route: `/legacy/characters/{character_id}/wallets/`  --- This route is cached for up to 120 seconds  --- Warning: Since a character has only 1 wallet, this route will be moved to /characters/{character_id}/wallet, this route will be removed on 2017-07-31.

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List wallets and balances
  result = api_instance.get_characters_character_id_wallets(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallets: #{e}"
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

[**Array&lt;GetCharactersCharacterIdWallets200Ok&gt;**](GetCharactersCharacterIdWallets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_character_id_wallets_journal**
> Array&lt;GetCharactersCharacterIdWalletsJournal200Ok&gt; get_characters_character_id_wallets_journal(character_id, opts)

Get character wallet journal

Retrieve character wallet journal  --- Alternate route: `/v1/characters/{character_id}/wallets/journal/`  Alternate route: `/legacy/characters/{character_id}/wallets/journal/`  --- This route is cached for up to 3600 seconds  --- Warning: Since a character has only 1 wallet, this route will be moved to /characters/{character_id}/wallet/journal, this route will be removed on 2017-07-31.

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character wallet journal
  result = api_instance.get_characters_character_id_wallets_journal(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling WalletApi->get_characters_character_id_wallets_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_id** | **Integer**| Only show journal entries happened before the transaction referenced by this id | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdWalletsJournal200Ok&gt;**](GetCharactersCharacterIdWalletsJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



