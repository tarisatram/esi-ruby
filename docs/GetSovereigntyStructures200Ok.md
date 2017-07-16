# EsiClient::GetSovereigntyStructures200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alliance_id** | **Integer** | The alliance that owns the structure.  | 
**solar_system_id** | **Integer** | Solar system in which the structure is located.  | 
**structure_id** | **Integer** | Unique item ID for this structure. | 
**structure_type_id** | **Integer** | A reference to the type of structure this is.  | 
**vulnerability_occupancy_level** | **Float** | The occupancy level for the next or current vulnerability window. This takes into account all development indexes and capital system bonuses. Also known as Activity Defense Multiplier from in the client. It increases the time that attackers must spend using their entosis links on the structure.  | [optional] 
**vulnerable_end_time** | **DateTime** | The time at which the next or current vulnerability window ends. At the end of a vulnerability window the next window is recalculated and locked in along with the vulnerabilityOccupancyLevel. If the structure is not in 100% entosis control of the defender, it will go in to &#39;overtime&#39; and stay vulnerable for as long as that situation persists. Only once the defenders have 100% entosis control and has the vulnerableEndTime passed does the vulnerability interval expire and a new one is calculated.  | [optional] 
**vulnerable_start_time** | **DateTime** | The next time at which the structure will become vulnerable. Or the start time of the current window if current time is between this and vulnerableEndTime.  | [optional] 


