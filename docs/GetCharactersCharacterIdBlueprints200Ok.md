# EsiClient::GetCharactersCharacterIdBlueprints200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_id** | **Integer** | Unique ID for this item. The ID of an item is stable if that item is not repackaged, stacked, detached from a stack, assembled, or otherwise altered. If an item is changed in one of these ways, then the ID will also change (see notes below). | 
**location_flag** | **String** | Indicates something about this item&#39;s storage location. The flag is used to differentiate between hangar divisions, drone bay, fitting location, and similar. | 
**location_id** | **Integer** | References a solar system, station or itemID if this blueprint is located within a container. If an itemID the Character - AssetList API must be queried to find the container using the itemID, from which the correct location of the Blueprint can be derived. | 
**material_efficiency** | **Integer** | Material Efficiency Level of the blueprint, can be any integer between 0 and 10. | 
**quantity** | **Integer** | Typically will be -1 or -2 designating a singleton item, where -1 is an original and -2 is a copy. It can be a positive integer if it is a stack of blueprint originals fresh from the market (no activities performed on them yet). | 
**runs** | **Integer** | Number of runs remaining if the blueprint is a copy, -1 if it is an original. | 
**time_efficiency** | **Integer** | Time Efficiency Level of the blueprint, can be any even integer between 0 and 20. | 
**type_id** | **Integer** | type_id integer | 


