require 'rspec'
require 'rspec/autorun'
require_relative 'dogs_data'

describe 'Dog Hash' do
  it "returns the dog's name from the hash" do
    expect(DOG[:cattle_dog][:preferences].first[:name]).to eq("Harleigh")
  end
end
