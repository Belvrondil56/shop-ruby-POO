require "Produit.rb"


RSpec.describe Produit do
    describe "#produit" do
        it "return 'Hello world'" do
            greeting = described_class.new

            expect(greeting.hello).to eql("Pommes")
        end
    end
    
end