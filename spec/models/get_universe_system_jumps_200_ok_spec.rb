=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EsiRuby::GetUniverseSystemJumps200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetUniverseSystemJumps200Ok' do
  before do
    # run before each test
    @instance = EsiRuby::GetUniverseSystemJumps200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetUniverseSystemJumps200Ok' do
    it 'should create an instact of GetUniverseSystemJumps200Ok' do
      expect(@instance).to be_instance_of(EsiRuby::GetUniverseSystemJumps200Ok)
    end
  end
  describe 'test attribute "ship_jumps"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "system_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

