# EsiClient::DogmaApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dogma_attributes**](DogmaApi.md#get_dogma_attributes) | **GET** /dogma/attributes/ | Get attributes
[**get_dogma_attributes_attribute_id**](DogmaApi.md#get_dogma_attributes_attribute_id) | **GET** /dogma/attributes/{attribute_id}/ | Get attribute information
[**get_dogma_effects**](DogmaApi.md#get_dogma_effects) | **GET** /dogma/effects/ | Get effects
[**get_dogma_effects_effect_id**](DogmaApi.md#get_dogma_effects_effect_id) | **GET** /dogma/effects/{effect_id}/ | Get effect information


# **get_dogma_attributes**
> Array&lt;Integer&gt; get_dogma_attributes(opts)

Get attributes

Get a list of dogma attribute ids  --- Alternate route: `/v1/dogma/attributes/`  Alternate route: `/legacy/dogma/attributes/`  Alternate route: `/dev/dogma/attributes/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::DogmaApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get attributes
  result = api_instance.get_dogma_attributes(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling DogmaApi->get_dogma_attributes: #{e}"
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



# **get_dogma_attributes_attribute_id**
> GetDogmaAttributesAttributeIdOk get_dogma_attributes_attribute_id(attribute_id, opts)

Get attribute information

Get information on a dogma attribute  --- Alternate route: `/v1/dogma/attributes/{attribute_id}/`  Alternate route: `/legacy/dogma/attributes/{attribute_id}/`  Alternate route: `/dev/dogma/attributes/{attribute_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::DogmaApi.new

attribute_id = 56 # Integer | A dogma attribute ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get attribute information
  result = api_instance.get_dogma_attributes_attribute_id(attribute_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling DogmaApi->get_dogma_attributes_attribute_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **Integer**| A dogma attribute ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetDogmaAttributesAttributeIdOk**](GetDogmaAttributesAttributeIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dogma_effects**
> Array&lt;Integer&gt; get_dogma_effects(opts)

Get effects

Get a list of dogma effect ids  --- Alternate route: `/v1/dogma/effects/`  Alternate route: `/legacy/dogma/effects/`  Alternate route: `/dev/dogma/effects/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::DogmaApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get effects
  result = api_instance.get_dogma_effects(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling DogmaApi->get_dogma_effects: #{e}"
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



# **get_dogma_effects_effect_id**
> GetDogmaEffectsEffectIdOk get_dogma_effects_effect_id(effect_id, opts)

Get effect information

Get information on a dogma effect  --- Alternate route: `/v1/dogma/effects/{effect_id}/`  Alternate route: `/legacy/dogma/effects/{effect_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::DogmaApi.new

effect_id = 56 # Integer | A dogma effect ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get effect information
  result = api_instance.get_dogma_effects_effect_id(effect_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling DogmaApi->get_dogma_effects_effect_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **effect_id** | **Integer**| A dogma effect ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetDogmaEffectsEffectIdOk**](GetDogmaEffectsEffectIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



