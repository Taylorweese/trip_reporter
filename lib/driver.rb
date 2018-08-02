require_relative 'trip'
class Driver
#Class for creating a Driver with their name, drive time in minutes, and miles
#All new drivers are pushed to an all_drivers class variable
  
attr_accessor :name, :minutes, :miles
@@all_drivers = []
  def initialize(name, minutes, miles)
    @name = name
    @minutes = minutes
    @miles = miles
    @@all_drivers << self
  end
  
  #adds minutes and miles to an existing driver's minutes and miles  
  def update_driver(minutes, miles)
    @minutes += minutes
    @miles += miles
  end
  
  #sorts through all drivers to find a match with driver on the current line being parsed.  Calls the update_driver method on that driver  
  def self.driver_check(current_driver, minutes, miles)
    @@all_drivers.each do |driver|
      if driver.name == current_driver
        driver.update_driver(minutes, miles)
        return true
      end
    end
  end
  
  #sorts through all drivers and orders them in descending order by miles
  #outputs a drivers name, total miles, and average miles per hour
  def self.report
    sorted = @@all_drivers.sort_by{ |driver| driver.miles }.reverse  
      sorted.each do |driver|
        if driver.miles !=0
          puts "#{driver.name}: #{driver.miles.to_i} miles @ #{((driver.miles.to_f)/(driver.minutes.to_f / 60)).round} mph"
        else
          puts "#{driver.name}: 0 miles"
        end
      end
  end
   
end