=begin
#Geocoding and Search API v7

#This document describes the Geocoding and Search API.

The version of the OpenAPI document: 7.83

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for HereClient::Supplier
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe HereClient::Supplier do
  let(:instance) { HereClient::Supplier.new }

  describe 'test an instance of Supplier' do
    it 'should create an instance of Supplier' do
      expect(instance).to be_instance_of(HereClient::Supplier)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["core", "yelp", "tripadvisor", "parkopedia", "venues", "vinfast", "ryd", "booking.com", "nsr"])
      # validator.allowable_values.each do |value|
      #   expect { instance.id = value }.not_to raise_error
      # end
    end
  end

end
