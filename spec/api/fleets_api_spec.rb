=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for EsiRuby::FleetsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FleetsApi' do
  before do
    # run before each test
    @instance = EsiRuby::FleetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FleetsApi' do
    it 'should create an instact of FleetsApi' do
      expect(@instance).to be_instance_of(EsiRuby::FleetsApi)
    end
  end

  # unit tests for delete_fleets_fleet_id_members_member_id
  # Kick fleet member
  # Kick a fleet member  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/members/{member_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/members/{member_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/members/{member_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param member_id The character ID of a member in this fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_fleets_fleet_id_members_member_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_fleets_fleet_id_squads_squad_id
  # Delete fleet squad
  # Delete a fleet squad, only empty squads can be deleted  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/squads/{squad_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/squads/{squad_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/squads/{squad_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param squad_id The squad to delete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_fleets_fleet_id_squads_squad_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_fleets_fleet_id_wings_wing_id
  # Delete fleet wing
  # Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/wings/{wing_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/wings/{wing_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/wings/{wing_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param wing_id The wing to delete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_fleets_fleet_id_wings_wing_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fleets_fleet_id
  # Get fleet information
  # Return details about a fleet  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/&#x60;  --- This route is cached for up to 5 seconds
  # @param fleet_id ID for a fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetFleetsFleetIdOk]
  describe 'get_fleets_fleet_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fleets_fleet_id_members
  # Get fleet members
  # Return information about fleet members  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/members/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/members/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/members/&#x60;  --- This route is cached for up to 5 seconds
  # @param fleet_id ID for a fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :language Language to use in the response
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetFleetsFleetIdMembers200Ok>]
  describe 'get_fleets_fleet_id_members test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fleets_fleet_id_wings
  # Get fleet wings
  # Return information about wings in a fleet  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/wings/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/wings/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/wings/&#x60;  --- This route is cached for up to 5 seconds
  # @param fleet_id ID for a fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :language Language to use in the response
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetFleetsFleetIdWings200Ok>]
  describe 'get_fleets_fleet_id_wings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_fleets_fleet_id_members
  # Create fleet invitation
  # Invite a character into the fleet, if a character has a CSPA charge set, it is not possible to invite them to the fleet using ESI  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/members/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/members/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/members/&#x60; 
  # @param fleet_id ID for a fleet
  # @param invitation Details of the invitation
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'post_fleets_fleet_id_members test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_fleets_fleet_id_wings
  # Create fleet wing
  # Create a new wing in a fleet  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/wings/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/wings/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/wings/&#x60; 
  # @param fleet_id ID for a fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [PostFleetsFleetIdWingsCreated]
  describe 'post_fleets_fleet_id_wings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_fleets_fleet_id_wings_wing_id_squads
  # Create fleet squad
  # Create a new squad in a fleet  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/wings/{wing_id}/squads/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/wings/{wing_id}/squads/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/wings/{wing_id}/squads/&#x60; 
  # @param fleet_id ID for a fleet
  # @param wing_id The wing_id to create squad in
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [PostFleetsFleetIdWingsWingIdSquadsCreated]
  describe 'post_fleets_fleet_id_wings_wing_id_squads test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_fleets_fleet_id
  # Update fleet
  # Update settings about a fleet  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param new_settings What to update for this fleet
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_fleets_fleet_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_fleets_fleet_id_members_member_id
  # Move fleet member
  # Move a fleet member around  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/members/{member_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/members/{member_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/members/{member_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param member_id The character ID of a member in this fleet
  # @param movement Details of the invitation
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_fleets_fleet_id_members_member_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_fleets_fleet_id_squads_squad_id
  # Rename fleet squad
  # Rename a fleet squad  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/squads/{squad_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/squads/{squad_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/squads/{squad_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param naming New name of the squad
  # @param squad_id The squad to rename
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_fleets_fleet_id_squads_squad_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_fleets_fleet_id_wings_wing_id
  # Rename fleet wing
  # Rename a fleet wing  --- Alternate route: &#x60;/v1/fleets/{fleet_id}/wings/{wing_id}/&#x60;  Alternate route: &#x60;/legacy/fleets/{fleet_id}/wings/{wing_id}/&#x60;  Alternate route: &#x60;/dev/fleets/{fleet_id}/wings/{wing_id}/&#x60; 
  # @param fleet_id ID for a fleet
  # @param naming New name of the wing
  # @param wing_id The wing to rename
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_fleets_fleet_id_wings_wing_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
