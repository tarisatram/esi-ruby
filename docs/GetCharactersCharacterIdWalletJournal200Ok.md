# EsiClient::GetCharactersCharacterIdWalletJournal200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Transaction amount. Positive when value transferred to the first party. Negative otherwise | [optional] 
**balance** | **Float** | Wallet balance after transaction occurred | [optional] 
**date** | **DateTime** | Date and time of transaction | 
**extra_info** | [**GetCharactersCharacterIdWalletJournalExtraInfo**](GetCharactersCharacterIdWalletJournalExtraInfo.md) |  | [optional] 
**first_party_id** | **Integer** | first_party_id integer | [optional] 
**first_party_type** | **String** | first_party_type string | [optional] 
**reason** | **String** | reason string | [optional] 
**ref_id** | **Integer** | Unique journal reference ID | 
**ref_type** | **String** | Transaction type, different type of transaction will populate different fields in &#x60;extra_info&#x60; | 
**second_party_id** | **Integer** | second_party_id integer | [optional] 
**second_party_type** | **String** | second_party_type string | [optional] 
**tax** | **Float** | Tax amount received for tax related transactions | [optional] 
**tax_reciever_id** | **Integer** | the corporation ID receiving any tax paid | [optional] 


