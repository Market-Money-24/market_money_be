require "rails_helper" 

RSpec.describe MarketVendor, type: :model do 
	describe "relationships" do 
		it { should belong_to(:vendor) }
		it { should belong_to(:market) }
	end
	
	describe "validations" do 
		it { should validate_presence_of(:market_id) }
		it { should validate_numericality_of(:market_id).only_integer }
		it { should validate_presence_of(:vendor_id) }
		it { should validate_numericality_of(:vendor_id).only_integer }
	end
end 