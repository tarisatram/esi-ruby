# EsiClient::GetCharactersCharacterIdContracts200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acceptor_id** | **Integer** | Who will accept the contract. If assignee_id is same as acceptorID then character ID else corporation ID (The contract accepted by the corporation) | 
**assignee_id** | **Integer** | ID to whom the contract is assigned, can be corporation or character ID | 
**availability** | **String** | To whom the contract is available | 
**buyout** | **Float** | Buyout price (for Auctions only) | [optional] 
**collateral** | **Float** | Collateral price (for Couriers only) | [optional] 
**contract_id** | **Integer** | contract_id integer | 
**date_accepted** | **DateTime** | Date of confirmation of contract | [optional] 
**date_completed** | **DateTime** | Date of completed of contract | [optional] 
**date_expired** | **DateTime** | Expiration date of the contract | 
**date_issued** | **DateTime** | Сreation date of the contract | 
**days_to_complete** | **Integer** | Number of days to perform the contract | [optional] 
**end_location_id** | **Integer** | End location ID (for Couriers contract) | [optional] 
**for_corporation** | **BOOLEAN** | true if the contract was issued on behalf of the issuer&#39;s corporation | 
**issuer_corporation_id** | **Integer** | Character&#39;s corporation ID for the issuer | 
**issuer_id** | **Integer** | Character ID for the issuer | 
**price** | **Float** | Price of contract (for ItemsExchange and Auctions) | [optional] 
**reward** | **Float** | Remuneration for contract (for Couriers only) | [optional] 
**start_location_id** | **Integer** | Start location ID (for Couriers contract) | [optional] 
**status** | **String** | Status of the the contract | 
**title** | **String** | Title of the contract | [optional] 
**type** | **String** | Type of the contract | 
**volume** | **Float** | Volume of items in the contract | [optional] 


