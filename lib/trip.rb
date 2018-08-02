class Trip
#Creates new trips with a drivers name, minutes, and miles

attr_accessor :name, :minutes, :miles
  def initialize(name, minutes, miles)
    @name = name
    @minutes = minutes
    @miles = miles
  end

  
#Checks a trip's mph to ensure it falls between 5 and 100
  def speed_check
    if ((@miles/@minutes) * 60) >=5 &&  ((@miles / @minutes) * 60) <= 100
      return true
    else
      return false
    end
  end
  
end