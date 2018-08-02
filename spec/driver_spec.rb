require_relative 'spec_helper'
RSpec.describe Driver do
    
  describe ".initialize" do
    driver = Driver.new("Kevin", 30, 30)
      it "takes three parameters and returns a Driver object" do
        expect(driver).to be_an_instance_of Driver
      end
  end
    
  describe "#name" do
    driver = Driver.new("Kevin", 30, 30)
      it "returns the drivers name" do
        expect(driver.name).to eq("Kevin")
      end
  end
    
  describe "#minutes" do
    driver = Driver.new("Kevin", 30, 30)
      it "returns the drivers total minutes" do
        expect(driver.minutes).to eq(30)
      end
  end
    
  describe "#miles" do
    driver = Driver.new("Kevin", 30, 30)
      it "returns the drivers total miles driven" do
        expect(driver.miles).to eq(30)
      end
  end
    
  describe '#update_driver' do
    driver = Driver.new("Kevin", 30, 30)
      it "updates the drivers minutes and miles" do
        driver.update_driver(10, 20)
          expect(driver.minutes).to eq(40)
          expect(driver.miles).to eq(50)
      end
  end
    
  describe '#driver_check' do
    driver = Driver.new("Kevin", 30, 30)
      it 'should call #update_driver on the appropriate driver and return true' do
        expect(Driver.driver_check("Kevin", 0, 0)).to be(true)
      end    
  end
    
end

