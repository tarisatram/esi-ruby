# EsiClient::GetCharactersCharacterIdWalletsJournal200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | Transaction amount. Positive when value transferred to the first party. Negative otherwise | [optional] 
**argument_name** | **String** | argument_name string | [optional] 
**argument_value** | **Integer** | argument_value integer | [optional] 
**balance** | **Float** | Wallet balance after transaction occurred | [optional] 
**date** | **DateTime** | Date and time of transaction | 
**first_party_id** | **Integer** | first_party_id integer | [optional] 
**first_party_type** | **String** | first_party_type string | [optional] 
**reason** | **String** | reason string | [optional] 
**ref_id** | **Integer** | Unique journal reference ID | 
**ref_type_id** | **Integer** | Transaction type | 
**second_party_id** | **Integer** | second_party_id integer | [optional] 
**second_party_type** | **String** | second_party_type string | [optional] 
**tax_amount** | **Float** | Tax amount received for tax related transactions | [optional] 
**tax_reciever_id** | **Integer** | For tax related transactions, gives the corporation ID of the entity receiving the tax | [optional] 


