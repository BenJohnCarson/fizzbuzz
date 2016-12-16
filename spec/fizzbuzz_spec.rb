require "fizzbuzz"

describe "fizzbuzz" do
    it "returns fizz when passed 3" do
        expect(fizzbuzz(3)).to eq "fizz"
    end
    
    it "returns input when not multiple of 3 or 5" do
        (1..100).each do |n|
            if (n % 3 != 0) && (n % 5 != 0)
                expect(fizzbuzz(n)).to eq n
            end
        end
    end
    
    it "returns fizz if number is a multiple of 3 and not of 5" do
        (1..20).each do |n|
            if (n % 3 == 0) && (n % 5 != 0)
                expect(fizzbuzz(n)).to eq "fizz"
            end
        end
    end
    
    it "returns buzz when passed multiple of 5" do
        (1..10).each do |n|
            if n % 5 == 0
                expect(fizzbuzz(n)).to eq "buzz"
            end
        end
    end
    
    it "returns fizzbuzz when passed multiple of 3 and 5" do
        (1..20).each do |n|
            if (n % 5 == 0) && (n % 3 == 0)
                expect(fizzbuzz(n)).to eq "fizzbuzz"
            end
        end
    end
end