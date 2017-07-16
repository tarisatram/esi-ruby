# EsiClient::MarketApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_orders**](MarketApi.md#get_characters_character_id_orders) | **GET** /characters/{character_id}/orders/ | List orders from a character
[**get_markets_groups**](MarketApi.md#get_markets_groups) | **GET** /markets/groups/ | Get item groups
[**get_markets_groups_market_group_id**](MarketApi.md#get_markets_groups_market_group_id) | **GET** /markets/groups/{market_group_id}/ | Get item group information
[**get_markets_prices**](MarketApi.md#get_markets_prices) | **GET** /markets/prices/ | List market prices
[**get_markets_region_id_history**](MarketApi.md#get_markets_region_id_history) | **GET** /markets/{region_id}/history/ | List historical market statistics in a region
[**get_markets_region_id_orders**](MarketApi.md#get_markets_region_id_orders) | **GET** /markets/{region_id}/orders/ | List orders in a region
[**get_markets_structures_structure_id**](MarketApi.md#get_markets_structures_structure_id) | **GET** /markets/structures/{structure_id}/ | List orders in a structure


# **get_characters_character_id_orders**
> Array&lt;GetCharactersCharacterIdOrders200Ok&gt; get_characters_character_id_orders(character_id, opts)

List orders from a character

List market orders placed by a character  --- Alternate route: `/v1/characters/{character_id}/orders/`  Alternate route: `/legacy/characters/{character_id}/orders/`  Alternate route: `/dev/characters/{character_id}/orders/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::MarketApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders from a character
  result = api_instance.get_characters_character_id_orders(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_characters_character_id_orders: #{e}"
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

[**Array&lt;GetCharactersCharacterIdOrders200Ok&gt;**](GetCharactersCharacterIdOrders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_groups**
> Array&lt;Integer&gt; get_markets_groups(opts)

Get item groups

Get a list of item groups  --- Alternate route: `/v1/markets/groups/`  Alternate route: `/legacy/markets/groups/`  Alternate route: `/dev/markets/groups/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::MarketApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item groups
  result = api_instance.get_markets_groups(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_groups_market_group_id**
> GetMarketsGroupsMarketGroupIdOk get_markets_groups_market_group_id(market_group_id, opts)

Get item group information

Get information on an item group  --- Alternate route: `/v1/markets/groups/{market_group_id}/`  Alternate route: `/legacy/markets/groups/{market_group_id}/`  Alternate route: `/dev/markets/groups/{market_group_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::MarketApi.new

market_group_id = 56 # Integer | An Eve item group ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item group information
  result = api_instance.get_markets_groups_market_group_id(market_group_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_groups_market_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market_group_id** | **Integer**| An Eve item group ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetMarketsGroupsMarketGroupIdOk**](GetMarketsGroupsMarketGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_prices**
> Array&lt;GetMarketsPrices200Ok&gt; get_markets_prices(opts)

List market prices

Return a list of prices  --- Alternate route: `/v1/markets/prices/`  Alternate route: `/legacy/markets/prices/`  Alternate route: `/dev/markets/prices/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::MarketApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List market prices
  result = api_instance.get_markets_prices(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsPrices200Ok&gt;**](GetMarketsPrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_history**
> Array&lt;GetMarketsRegionIdHistory200Ok&gt; get_markets_region_id_history(region_id, type_id, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  --- Alternate route: `/v1/markets/{region_id}/history/`  Alternate route: `/legacy/markets/{region_id}/history/`  Alternate route: `/dev/markets/{region_id}/history/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::MarketApi.new

region_id = 56 # Integer | Return statistics in this region

type_id = 56 # Integer | Return statistics for this type

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List historical market statistics in a region
  result = api_instance.get_markets_region_id_history(region_id, type_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **type_id** | **Integer**| Return statistics for this type | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdHistory200Ok&gt;**](GetMarketsRegionIdHistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_region_id_orders**
> Array&lt;GetMarketsRegionIdOrders200Ok&gt; get_markets_region_id_orders(order_type, region_id, opts)

List orders in a region

Return a list of orders in a region  --- Alternate route: `/v1/markets/{region_id}/orders/`  Alternate route: `/legacy/markets/{region_id}/orders/`  Alternate route: `/dev/markets/{region_id}/orders/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::MarketApi.new

order_type = "all" # String | Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.

region_id = 56 # Integer | Return orders in this region

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page of results to return
  type_id: 56, # Integer | Return orders only for this type
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders in a region
  result = api_instance.get_markets_region_id_orders(order_type, region_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_type** | **String**| Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. | [default to all]
 **region_id** | **Integer**| Return orders in this region | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **type_id** | **Integer**| Return orders only for this type | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdOrders200Ok&gt;**](GetMarketsRegionIdOrders200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_markets_structures_structure_id**
> Array&lt;GetMarketsStructuresStructureId200Ok&gt; get_markets_structures_structure_id(structure_id, opts)

List orders in a structure

Return all orders in a structure  --- Alternate route: `/v1/markets/structures/{structure_id}/`  Alternate route: `/legacy/markets/structures/{structure_id}/`  Alternate route: `/dev/markets/structures/{structure_id}/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::MarketApi.new

structure_id = 789 # Integer | Return orders in this structure

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page of results to return
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders in a structure
  result = api_instance.get_markets_structures_structure_id(structure_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling MarketApi->get_markets_structures_structure_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| Return orders in this structure | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsStructuresStructureId200Ok&gt;**](GetMarketsStructuresStructureId200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



