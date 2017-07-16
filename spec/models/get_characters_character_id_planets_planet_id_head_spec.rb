=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EsiRuby::GetCharactersCharacterIdPlanetsPlanetIdHead
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdPlanetsPlanetIdHead' do
  before do
    # run before each test
    @instance = EsiRuby::GetCharactersCharacterIdPlanetsPlanetIdHead.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdPlanetsPlanetIdHead' do
    it 'should create an instact of GetCharactersCharacterIdPlanetsPlanetIdHead' do
      expect(@instance).to be_instance_of(EsiRuby::GetCharactersCharacterIdPlanetsPlanetIdHead)
    end
  end
  describe 'test attribute "head_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "latitude"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "longitude"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

