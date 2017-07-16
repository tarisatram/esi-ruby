# EsiClient::UniverseApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_universe_bloodlines**](UniverseApi.md#get_universe_bloodlines) | **GET** /universe/bloodlines/ | Get bloodlines
[**get_universe_categories**](UniverseApi.md#get_universe_categories) | **GET** /universe/categories/ | Get item categories
[**get_universe_categories_category_id**](UniverseApi.md#get_universe_categories_category_id) | **GET** /universe/categories/{category_id}/ | Get item category information
[**get_universe_constellations**](UniverseApi.md#get_universe_constellations) | **GET** /universe/constellations/ | Get constellations
[**get_universe_constellations_constellation_id**](UniverseApi.md#get_universe_constellations_constellation_id) | **GET** /universe/constellations/{constellation_id}/ | Get constellation information
[**get_universe_factions**](UniverseApi.md#get_universe_factions) | **GET** /universe/factions/ | Get factions
[**get_universe_graphics**](UniverseApi.md#get_universe_graphics) | **GET** /universe/graphics/ | Get graphics
[**get_universe_graphics_graphic_id**](UniverseApi.md#get_universe_graphics_graphic_id) | **GET** /universe/graphics/{graphic_id}/ | Get graphic information
[**get_universe_groups**](UniverseApi.md#get_universe_groups) | **GET** /universe/groups/ | Get item groups
[**get_universe_groups_group_id**](UniverseApi.md#get_universe_groups_group_id) | **GET** /universe/groups/{group_id}/ | Get item group information
[**get_universe_moons_moon_id**](UniverseApi.md#get_universe_moons_moon_id) | **GET** /universe/moons/{moon_id}/ | Get moon information
[**get_universe_planets_planet_id**](UniverseApi.md#get_universe_planets_planet_id) | **GET** /universe/planets/{planet_id}/ | Get planet information
[**get_universe_races**](UniverseApi.md#get_universe_races) | **GET** /universe/races/ | Get character races
[**get_universe_regions**](UniverseApi.md#get_universe_regions) | **GET** /universe/regions/ | Get regions
[**get_universe_regions_region_id**](UniverseApi.md#get_universe_regions_region_id) | **GET** /universe/regions/{region_id}/ | Get region information
[**get_universe_stargates_stargate_id**](UniverseApi.md#get_universe_stargates_stargate_id) | **GET** /universe/stargates/{stargate_id}/ | Get stargate information
[**get_universe_stations_station_id**](UniverseApi.md#get_universe_stations_station_id) | **GET** /universe/stations/{station_id}/ | Get station information
[**get_universe_structures**](UniverseApi.md#get_universe_structures) | **GET** /universe/structures/ | List all public structures
[**get_universe_structures_structure_id**](UniverseApi.md#get_universe_structures_structure_id) | **GET** /universe/structures/{structure_id}/ | Get structure information
[**get_universe_system_jumps**](UniverseApi.md#get_universe_system_jumps) | **GET** /universe/system_jumps/ | Get system jumps
[**get_universe_system_kills**](UniverseApi.md#get_universe_system_kills) | **GET** /universe/system_kills/ | Get system kills
[**get_universe_systems**](UniverseApi.md#get_universe_systems) | **GET** /universe/systems/ | Get solar systems
[**get_universe_systems_system_id**](UniverseApi.md#get_universe_systems_system_id) | **GET** /universe/systems/{system_id}/ | Get solar system information
[**get_universe_types**](UniverseApi.md#get_universe_types) | **GET** /universe/types/ | Get types
[**get_universe_types_type_id**](UniverseApi.md#get_universe_types_type_id) | **GET** /universe/types/{type_id}/ | Get type information
[**post_universe_names**](UniverseApi.md#post_universe_names) | **POST** /universe/names/ | Get names and categories for a set of ID&#39;s


# **get_universe_bloodlines**
> Array&lt;GetUniverseBloodlines200Ok&gt; get_universe_bloodlines(opts)

Get bloodlines

Get a list of bloodlines  --- Alternate route: `/v1/universe/bloodlines/`  Alternate route: `/legacy/universe/bloodlines/`  Alternate route: `/dev/universe/bloodlines/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get bloodlines
  result = api_instance.get_universe_bloodlines(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_bloodlines: #{e}"
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

[**Array&lt;GetUniverseBloodlines200Ok&gt;**](GetUniverseBloodlines200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_categories**
> Array&lt;Integer&gt; get_universe_categories(opts)

Get item categories

Get a list of item categories  --- Alternate route: `/v1/universe/categories/`  Alternate route: `/legacy/universe/categories/`  Alternate route: `/dev/universe/categories/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item categories
  result = api_instance.get_universe_categories(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_categories: #{e}"
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



# **get_universe_categories_category_id**
> GetUniverseCategoriesCategoryIdOk get_universe_categories_category_id(category_id, opts)

Get item category information

Get information of an item category  --- Alternate route: `/v1/universe/categories/{category_id}/`  Alternate route: `/legacy/universe/categories/{category_id}/`  Alternate route: `/dev/universe/categories/{category_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

category_id = 56 # Integer | An Eve item category ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item category information
  result = api_instance.get_universe_categories_category_id(category_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_categories_category_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **Integer**| An Eve item category ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseCategoriesCategoryIdOk**](GetUniverseCategoriesCategoryIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_constellations**
> Array&lt;Integer&gt; get_universe_constellations(opts)

Get constellations

Get a list of constellations  --- Alternate route: `/v1/universe/constellations/`  Alternate route: `/legacy/universe/constellations/`  Alternate route: `/dev/universe/constellations/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get constellations
  result = api_instance.get_universe_constellations(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_constellations: #{e}"
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



# **get_universe_constellations_constellation_id**
> GetUniverseConstellationsConstellationIdOk get_universe_constellations_constellation_id(constellation_id, opts)

Get constellation information

Get information on a constellation  --- Alternate route: `/v1/universe/constellations/{constellation_id}/`  Alternate route: `/legacy/universe/constellations/{constellation_id}/`  Alternate route: `/dev/universe/constellations/{constellation_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

constellation_id = 56 # Integer | constellation_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get constellation information
  result = api_instance.get_universe_constellations_constellation_id(constellation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_constellations_constellation_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **constellation_id** | **Integer**| constellation_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseConstellationsConstellationIdOk**](GetUniverseConstellationsConstellationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_factions**
> Array&lt;GetUniverseFactions200Ok&gt; get_universe_factions(opts)

Get factions

Get a list of factions  --- Alternate route: `/v1/universe/factions/`  Alternate route: `/legacy/universe/factions/`  Alternate route: `/dev/universe/factions/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get factions
  result = api_instance.get_universe_factions(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_factions: #{e}"
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

[**Array&lt;GetUniverseFactions200Ok&gt;**](GetUniverseFactions200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_graphics**
> Array&lt;Integer&gt; get_universe_graphics(opts)

Get graphics

Get a list of graphics  --- Alternate route: `/v1/universe/graphics/`  Alternate route: `/legacy/universe/graphics/`  Alternate route: `/dev/universe/graphics/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get graphics
  result = api_instance.get_universe_graphics(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_graphics: #{e}"
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



# **get_universe_graphics_graphic_id**
> GetUniverseGraphicsGraphicIdOk get_universe_graphics_graphic_id(graphic_id, opts)

Get graphic information

Get information on a graphic  --- Alternate route: `/v1/universe/graphics/{graphic_id}/`  Alternate route: `/legacy/universe/graphics/{graphic_id}/`  Alternate route: `/dev/universe/graphics/{graphic_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

graphic_id = 56 # Integer | graphic_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get graphic information
  result = api_instance.get_universe_graphics_graphic_id(graphic_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_graphics_graphic_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graphic_id** | **Integer**| graphic_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseGraphicsGraphicIdOk**](GetUniverseGraphicsGraphicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_groups**
> Array&lt;Integer&gt; get_universe_groups(opts)

Get item groups

Get a list of item groups  --- Alternate route: `/v1/universe/groups/`  Alternate route: `/legacy/universe/groups/`  Alternate route: `/dev/universe/groups/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page of results to return
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item groups
  result = api_instance.get_universe_groups(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_groups_group_id**
> GetUniverseGroupsGroupIdOk get_universe_groups_group_id(group_id, opts)

Get item group information

Get information on an item group  --- Alternate route: `/v1/universe/groups/{group_id}/`  Alternate route: `/legacy/universe/groups/{group_id}/`  Alternate route: `/dev/universe/groups/{group_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

group_id = 56 # Integer | An Eve item group ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item group information
  result = api_instance.get_universe_groups_group_id(group_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_groups_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| An Eve item group ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseGroupsGroupIdOk**](GetUniverseGroupsGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_moons_moon_id**
> GetUniverseMoonsMoonIdOk get_universe_moons_moon_id(moon_id, opts)

Get moon information

Get information on a moon  --- Alternate route: `/v1/universe/moons/{moon_id}/`  Alternate route: `/legacy/universe/moons/{moon_id}/`  Alternate route: `/dev/universe/moons/{moon_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

moon_id = 56 # Integer | moon_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get moon information
  result = api_instance.get_universe_moons_moon_id(moon_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_moons_moon_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moon_id** | **Integer**| moon_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseMoonsMoonIdOk**](GetUniverseMoonsMoonIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_planets_planet_id**
> GetUniversePlanetsPlanetIdOk get_universe_planets_planet_id(planet_id, opts)

Get planet information

Get information on a planet  --- Alternate route: `/v1/universe/planets/{planet_id}/`  Alternate route: `/legacy/universe/planets/{planet_id}/`  Alternate route: `/dev/universe/planets/{planet_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

planet_id = 56 # Integer | planet_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get planet information
  result = api_instance.get_universe_planets_planet_id(planet_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_planets_planet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planet_id** | **Integer**| planet_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniversePlanetsPlanetIdOk**](GetUniversePlanetsPlanetIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_races**
> Array&lt;GetUniverseRaces200Ok&gt; get_universe_races(opts)

Get character races

Get a list of character races  --- Alternate route: `/v1/universe/races/`  Alternate route: `/legacy/universe/races/`  Alternate route: `/dev/universe/races/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character races
  result = api_instance.get_universe_races(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_races: #{e}"
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

[**Array&lt;GetUniverseRaces200Ok&gt;**](GetUniverseRaces200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_regions**
> Array&lt;Integer&gt; get_universe_regions(opts)

Get regions

Get a list of regions  --- Alternate route: `/v1/universe/regions/`  Alternate route: `/legacy/universe/regions/`  Alternate route: `/dev/universe/regions/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get regions
  result = api_instance.get_universe_regions(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_regions: #{e}"
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



# **get_universe_regions_region_id**
> GetUniverseRegionsRegionIdOk get_universe_regions_region_id(region_id, opts)

Get region information

Get information on a region  --- Alternate route: `/v1/universe/regions/{region_id}/`  Alternate route: `/legacy/universe/regions/{region_id}/`  Alternate route: `/dev/universe/regions/{region_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

region_id = 56 # Integer | region_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get region information
  result = api_instance.get_universe_regions_region_id(region_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_regions_region_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| region_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseRegionsRegionIdOk**](GetUniverseRegionsRegionIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_stargates_stargate_id**
> GetUniverseStargatesStargateIdOk get_universe_stargates_stargate_id(stargate_id, opts)

Get stargate information

Get information on a stargate  --- Alternate route: `/v1/universe/stargates/{stargate_id}/`  Alternate route: `/legacy/universe/stargates/{stargate_id}/`  Alternate route: `/dev/universe/stargates/{stargate_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

stargate_id = 56 # Integer | stargate_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get stargate information
  result = api_instance.get_universe_stargates_stargate_id(stargate_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_stargates_stargate_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stargate_id** | **Integer**| stargate_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseStargatesStargateIdOk**](GetUniverseStargatesStargateIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_stations_station_id**
> GetUniverseStationsStationIdOk get_universe_stations_station_id(station_id, opts)

Get station information

Get information on a station  --- Alternate route: `/v2/universe/stations/{station_id}/`  Alternate route: `/dev/universe/stations/{station_id}/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

station_id = 56 # Integer | station_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get station information
  result = api_instance.get_universe_stations_station_id(station_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_stations_station_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **station_id** | **Integer**| station_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseStationsStationIdOk**](GetUniverseStationsStationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_structures**
> Array&lt;Integer&gt; get_universe_structures(opts)

List all public structures

List all public structures  --- Alternate route: `/v1/universe/structures/`  Alternate route: `/legacy/universe/structures/`  Alternate route: `/dev/universe/structures/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List all public structures
  result = api_instance.get_universe_structures(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_structures: #{e}"
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



# **get_universe_structures_structure_id**
> GetUniverseStructuresStructureIdOk get_universe_structures_structure_id(structure_id, opts)

Get structure information

Returns information on requested structure, if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.  --- Alternate route: `/v1/universe/structures/{structure_id}/`  Alternate route: `/legacy/universe/structures/{structure_id}/`  Alternate route: `/dev/universe/structures/{structure_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::UniverseApi.new

structure_id = 789 # Integer | An Eve structure ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get structure information
  result = api_instance.get_universe_structures_structure_id(structure_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_structures_structure_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| An Eve structure ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseStructuresStructureIdOk**](GetUniverseStructuresStructureIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_system_jumps**
> Array&lt;GetUniverseSystemJumps200Ok&gt; get_universe_system_jumps(opts)

Get system jumps

Get the number of jumps in solar systems within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with jumps will be listed  --- Alternate route: `/v1/universe/system_jumps/`  Alternate route: `/legacy/universe/system_jumps/`  Alternate route: `/dev/universe/system_jumps/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get system jumps
  result = api_instance.get_universe_system_jumps(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_system_jumps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetUniverseSystemJumps200Ok&gt;**](GetUniverseSystemJumps200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_system_kills**
> Array&lt;GetUniverseSystemKills200Ok&gt; get_universe_system_kills(opts)

Get system kills

Get the number of ship, pod and NPC kills per solar system within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with kills will be listed  --- Alternate route: `/v1/universe/system_kills/`  Alternate route: `/legacy/universe/system_kills/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get system kills
  result = api_instance.get_universe_system_kills(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_system_kills: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetUniverseSystemKills200Ok&gt;**](GetUniverseSystemKills200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_systems**
> Array&lt;Integer&gt; get_universe_systems(opts)

Get solar systems

Get a list of solar systems  --- Alternate route: `/v1/universe/systems/`  Alternate route: `/legacy/universe/systems/`  Alternate route: `/dev/universe/systems/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get solar systems
  result = api_instance.get_universe_systems(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_systems: #{e}"
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



# **get_universe_systems_system_id**
> GetUniverseSystemsSystemIdOk get_universe_systems_system_id(system_id, opts)

Get solar system information

Get information on a solar system  --- Alternate route: `/v2/universe/systems/{system_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

system_id = 56 # Integer | system_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get solar system information
  result = api_instance.get_universe_systems_system_id(system_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_systems_system_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_id** | **Integer**| system_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseSystemsSystemIdOk**](GetUniverseSystemsSystemIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_types**
> Array&lt;Integer&gt; get_universe_types(opts)

Get types

Get a list of type ids  --- Alternate route: `/v1/universe/types/`  Alternate route: `/legacy/universe/types/`  Alternate route: `/dev/universe/types/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page of results to return
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get types
  result = api_instance.get_universe_types(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_types_type_id**
> GetUniverseTypesTypeIdOk get_universe_types_type_id(type_id, opts)

Get type information

Get information on a type  --- Alternate route: `/v2/universe/types/{type_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

type_id = 56 # Integer | An Eve item type ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get type information
  result = api_instance.get_universe_types_type_id(type_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_types_type_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **Integer**| An Eve item type ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseTypesTypeIdOk**](GetUniverseTypesTypeIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_universe_names**
> Array&lt;PostUniverseNames200Ok&gt; post_universe_names(ids, opts)

Get names and categories for a set of ID's

Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types.  --- Alternate route: `/v2/universe/names/`  Alternate route: `/dev/universe/names/` 

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::UniverseApi.new

ids = [EsiClient::Array<Integer>.new] # Array<Integer> | The ids to resolve

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get names and categories for a set of ID's
  result = api_instance.post_universe_names(ids, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling UniverseApi->post_universe_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **Array&lt;Integer&gt;**| The ids to resolve | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;PostUniverseNames200Ok&gt;**](PostUniverseNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



