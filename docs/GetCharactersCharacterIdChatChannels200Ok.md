# EsiClient::GetCharactersCharacterIdChatChannels200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | [**Array&lt;GetCharactersCharacterIdChatChannelsAllowed&gt;**](GetCharactersCharacterIdChatChannelsAllowed.md) | allowed array | 
**blocked** | [**Array&lt;GetCharactersCharacterIdChatChannelsBlocked&gt;**](GetCharactersCharacterIdChatChannelsBlocked.md) | blocked array | 
**channel_id** | **Integer** | Unique channel ID. Always negative for player-created channels. Permanent (CCP created) channels have a positive ID, but don&#39;t appear in the API | 
**comparison_key** | **String** | Normalized, unique string used to compare channel names | 
**has_password** | **BOOLEAN** | Whether this is a password protected channel | 
**motd** | **String** | Message of the day for this channel | 
**muted** | [**Array&lt;GetCharactersCharacterIdChatChannelsMuted&gt;**](GetCharactersCharacterIdChatChannelsMuted.md) | muted array | 
**name** | **String** | Displayed name of channel | 
**operators** | [**Array&lt;GetCharactersCharacterIdChatChannelsOperator&gt;**](GetCharactersCharacterIdChatChannelsOperator.md) | operators array | 
**owner_id** | **Integer** | owner_id integer | 


