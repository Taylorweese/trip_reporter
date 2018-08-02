require_relative 'spec_helper'
RSpec.describe Trip do

  describe ".initialize" do
    trip1 = Trip.new("Joe", 0,0)
      it "takes three parameters and returns a trip object" do
        expect(trip1).to be_an_instance_of Trip
      end
  end
 
  describe "#speed_check" do
    trip2 = Trip.new("Joe", 20,20)
      it 'returns true for trip with speed between 5 and 100mph' do
        expect(trip2.speed_check).to be(true)
      end
      
    trip3 = Trip.new("Joe", 10, 30)
      it 'returns false for a trip outside range of 5 and 100mph' do
        expect(trip3.speed_check).to be(false)
      end
  end
  
end