=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EsiRuby::GetUniverseRegionsRegionIdNotFound
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseRegionsRegionIdNotFound' do
  before do
    # run before each test
    @instance = EsiRuby::GetUniverseRegionsRegionIdNotFound.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseRegionsRegionIdNotFound' do
    it 'should create an instact of GetUniverseRegionsRegionIdNotFound' do
      expect(@instance).to be_instance_of(EsiRuby::GetUniverseRegionsRegionIdNotFound)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

