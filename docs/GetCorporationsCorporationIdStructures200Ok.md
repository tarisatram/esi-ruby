# EsiClient::GetCorporationsCorporationIdStructures200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**corporation_id** | **Integer** | ID of the corporation that owns the structure | 
**current_vul** | [**Array&lt;GetCorporationsCorporationIdStructuresCurrentVul&gt;**](GetCorporationsCorporationIdStructuresCurrentVul.md) | This week&#39;s vulnerability windows, Monday is day 0 | 
**fuel_expires** | **Date** | Date on which the structure will run out of fuel | [optional] 
**next_vul** | [**Array&lt;GetCorporationsCorporationIdStructuresNextVul&gt;**](GetCorporationsCorporationIdStructuresNextVul.md) | Next week&#39;s vulnerability windows, Monday is day 0 | 
**profile_id** | **Integer** | The id of the ACL profile for this citadel | 
**services** | [**Array&lt;GetCorporationsCorporationIdStructuresService&gt;**](GetCorporationsCorporationIdStructuresService.md) | Contains a list of service upgrades, and their state | [optional] 
**state_timer_end** | **Date** | Date at which the structure will move to it&#39;s next state | [optional] 
**state_timer_start** | **Date** | Date at which the structure entered it&#39;s current state | [optional] 
**structure_id** | **Integer** | The Item ID of the structure | 
**system_id** | **Integer** | The solar system the structure is in | 
**type_id** | **Integer** | The type id of the structure | 
**unanchors_at** | **Date** | Date at which the structure will unanchor | [optional] 


