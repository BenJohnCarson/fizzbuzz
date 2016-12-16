require "fizzbuzz"

describe "fizzbuzz" do
    it "returns fizz when passed 3" do
        expect(fizzbuzz(3)).to eq "fizz"
    end
    
    it "returns input when not 3" do
        expect(fizzbuzz(2)).to eq 2
    end
    
    it "returns 3 if number is a multiple of 3" do
        (1..20).each do |n|
            if n % 3 == 0
                expect(fizzbuzz(n)).to eq "fizz"
            end
        end
    end
end