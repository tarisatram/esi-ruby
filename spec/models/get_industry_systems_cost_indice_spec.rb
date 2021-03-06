=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EsiRuby::GetIndustrySystemsCostIndice
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetIndustrySystemsCostIndice' do
  before do
    # run before each test
    @instance = EsiRuby::GetIndustrySystemsCostIndice.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetIndustrySystemsCostIndice' do
    it 'should create an instact of GetIndustrySystemsCostIndice' do
      expect(@instance).to be_instance_of(EsiRuby::GetIndustrySystemsCostIndice)
    end
  end
  describe 'test attribute "activity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["none", "manufacturing", "researching_technology", "researching_time_efficiency", "researching_material_efficiency", "copying", "duplicating", "invention", "reverse_engineering"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.activity = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "cost_index"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

