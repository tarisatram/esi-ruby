# EsiClient::LoyaltyApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_loyalty_points**](LoyaltyApi.md#get_characters_character_id_loyalty_points) | **GET** /characters/{character_id}/loyalty/points/ | Get loyalty points
[**get_loyalty_stores_corporation_id_offers**](LoyaltyApi.md#get_loyalty_stores_corporation_id_offers) | **GET** /loyalty/stores/{corporation_id}/offers/ | List loyalty store offers


# **get_characters_character_id_loyalty_points**
> Array&lt;GetCharactersCharacterIdLoyaltyPoints200Ok&gt; get_characters_character_id_loyalty_points(character_id, opts)

Get loyalty points

Return a list of loyalty points for all corporations the character has worked for  --- Alternate route: `/v1/characters/{character_id}/loyalty/points/`  Alternate route: `/legacy/characters/{character_id}/loyalty/points/`  Alternate route: `/dev/characters/{character_id}/loyalty/points/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::LoyaltyApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get loyalty points
  result = api_instance.get_characters_character_id_loyalty_points(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling LoyaltyApi->get_characters_character_id_loyalty_points: #{e}"
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

[**Array&lt;GetCharactersCharacterIdLoyaltyPoints200Ok&gt;**](GetCharactersCharacterIdLoyaltyPoints200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_loyalty_stores_corporation_id_offers**
> Array&lt;GetLoyaltyStoresCorporationIdOffers200Ok&gt; get_loyalty_stores_corporation_id_offers(corporation_id, opts)

List loyalty store offers

Return a list of offers from a specific corporation's loyalty store  --- Alternate route: `/v1/loyalty/stores/{corporation_id}/offers/`  Alternate route: `/legacy/loyalty/stores/{corporation_id}/offers/`  Alternate route: `/dev/loyalty/stores/{corporation_id}/offers/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::LoyaltyApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List loyalty store offers
  result = api_instance.get_loyalty_stores_corporation_id_offers(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling LoyaltyApi->get_loyalty_stores_corporation_id_offers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetLoyaltyStoresCorporationIdOffers200Ok&gt;**](GetLoyaltyStoresCorporationIdOffers200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



