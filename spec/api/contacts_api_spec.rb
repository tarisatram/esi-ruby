=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for EsiRuby::ContactsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @instance = EsiRuby::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instact of ContactsApi' do
      expect(@instance).to be_instance_of(EsiRuby::ContactsApi)
    end
  end

  # unit tests for delete_characters_character_id_contacts
  # Delete contacts
  # Bulk delete contacts  --- Alternate route: &#x60;/v1/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contacts/&#x60; 
  # @param character_id An EVE character ID
  # @param contact_ids A list of contacts to delete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_characters_character_id_contacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_contacts
  # Get contacts
  # Return contacts of a character  --- Alternate route: &#x60;/v1/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/contacts/&#x60;  --- This route is cached for up to 300 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :page Which page of results to return
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdContacts200Ok>]
  describe 'get_characters_character_id_contacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_contacts_labels
  # Get contact labels
  # Return custom labels for contacts the character defined  --- Alternate route: &#x60;/v1/characters/{character_id}/contacts/labels/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contacts/labels/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/contacts/labels/&#x60;  --- This route is cached for up to 300 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdContactsLabels200Ok>]
  describe 'get_characters_character_id_contacts_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_characters_character_id_contacts
  # Add contacts
  # Bulk add contacts with same settings  --- Alternate route: &#x60;/v1/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/contacts/&#x60; 
  # @param character_id An EVE character ID
  # @param contact_ids A list of contacts to add
  # @param standing Standing for the new contact
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :label_id Add a custom label to the new contact
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [BOOLEAN] :watched Whether the new contact should be watched, note this is only effective on characters
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'post_characters_character_id_contacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_characters_character_id_contacts
  # Edit contacts
  # Bulk edit contacts with same settings  --- Alternate route: &#x60;/v1/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/contacts/&#x60;  Alternate route: &#x60;/dev/characters/{character_id}/contacts/&#x60; 
  # @param character_id An EVE character ID
  # @param contact_ids A list of contacts to edit
  # @param standing Standing for the contact
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :label_id Add a custom label to the contact, use 0 for clearing label
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [BOOLEAN] :watched Whether the contact should be watched, note this is only effective on characters
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_characters_character_id_contacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
