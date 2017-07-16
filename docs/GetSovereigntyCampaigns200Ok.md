# EsiClient::GetSovereigntyCampaigns200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attackers_score** | **Float** | Score for all attacking parties, only present in Defense Events.  | [optional] 
**campaign_id** | **Integer** | Unique ID for this campaign. | 
**constellation_id** | **Integer** | The constellation in which the campaign will take place.  | 
**defender_id** | **Integer** | Defending alliance, only present in Defense Events  | [optional] 
**defender_score** | **Float** | Score for the defending alliance, only present in Defense Events.  | [optional] 
**event_type** | **String** | Type of event this campaign is for. tcu_defense, ihub_defense and station_defense are referred to as \&quot;Defense Events\&quot;, station_freeport as \&quot;Freeport Events\&quot;.  | 
**participants** | [**Array&lt;GetSovereigntyCampaignsParticipant&gt;**](GetSovereigntyCampaignsParticipant.md) | Alliance participating and their respective scores, only present in Freeport Events.  | [optional] 
**solar_system_id** | **Integer** | The solar system the structure is located in.  | 
**start_time** | **DateTime** | Time the event is scheduled to start.  | 
**structure_id** | **Integer** | The structure item ID that is related to this campaign.  | 


