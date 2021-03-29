require "spec_helper"
require "greeting.rb"

RSpec.describe Greeting do
  describe "#hello" do
    it "return 'Hello world'" do
      greeting = described_class.new

      expect(greeting.hello).to eql("Hello world")
    end
  end
  # tag focus pour effectuer seulement le test qui a ce tag avec rspec --tag focus
  describe "#bye", :focus do
    it "return 'Good bye Guillaume !'" do
      greeting = described_class.new

      expect(greeting.bye("Guillaume")).to eql("Good bye Guillaume !")
    end
  end
end
