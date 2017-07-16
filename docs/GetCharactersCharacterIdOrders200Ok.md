# EsiClient::GetCharactersCharacterIdOrders200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **Integer** | Wallet division for the buyer or seller of this order. Always 1000 for characters. Currently 1000 through 1006 for corporations | 
**duration** | **Integer** | Numer of days for which order is valid (starting from the issued date). An order expires at time issued + duration | 
**escrow** | **Float** | For buy orders, the amount of ISK in escrow | 
**is_buy_order** | **BOOLEAN** | True for a bid (buy) order. False for an offer (sell) order | 
**is_corp** | **BOOLEAN** | is_corp boolean | 
**issued** | **DateTime** | Date and time when this order was issued | 
**location_id** | **Integer** | ID of the location where order was placed | 
**min_volume** | **Integer** | For bids (buy orders), the minimum quantity that will be accepted in a matching offer (sell order) | 
**order_id** | **Integer** | Unique order ID | 
**price** | **Float** | Cost per unit for this order | 
**range** | **String** | Valid order range, numbers are ranges in jumps | 
**region_id** | **Integer** | ID of the region where order was placed | 
**state** | **String** | Current order state | 
**type_id** | **Integer** | The type ID of the item transacted in this order | 
**volume_remain** | **Integer** | Quantity of items still required or offered | 
**volume_total** | **Integer** | Quantity of items required or offered at time order was placed | 


