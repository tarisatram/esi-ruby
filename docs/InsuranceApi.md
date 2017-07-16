# EsiClient::InsuranceApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_insurance_prices**](InsuranceApi.md#get_insurance_prices) | **GET** /insurance/prices/ | List insurance levels


# **get_insurance_prices**
> Array&lt;GetInsurancePrices200Ok&gt; get_insurance_prices(opts)

List insurance levels

Return available insurance levels for all ship types  --- Alternate route: `/v1/insurance/prices/`  Alternate route: `/legacy/insurance/prices/`  Alternate route: `/dev/insurance/prices/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::InsuranceApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List insurance levels
  result = api_instance.get_insurance_prices(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling InsuranceApi->get_insurance_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetInsurancePrices200Ok&gt;**](GetInsurancePrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



