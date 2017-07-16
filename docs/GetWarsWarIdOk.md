# EsiClient::GetWarsWarIdOk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggressor** | [**GetWarsWarIdAggressor**](GetWarsWarIdAggressor.md) |  | [optional] 
**allies** | [**Array&lt;GetWarsWarIdAlly&gt;**](GetWarsWarIdAlly.md) | allied corporations or alliances, each object contains either corporation_id or alliance_id | [optional] 
**declared** | **DateTime** | Time that the war was declared | 
**defender** | [**GetWarsWarIdDefender**](GetWarsWarIdDefender.md) |  | [optional] 
**finished** | **DateTime** | Time the war ended and shooting was no longer allowed | [optional] 
**id** | **Integer** | ID of the specified war | 
**mutual** | **BOOLEAN** | Was the war declared mutual by both parties | 
**open_for_allies** | **BOOLEAN** | Is the war currently open for allies or not | 
**retracted** | **DateTime** | Time the war was retracted but both sides could still shoot each other | [optional] 
**started** | **DateTime** | Time when the war started and both sides could shoot each other | [optional] 


