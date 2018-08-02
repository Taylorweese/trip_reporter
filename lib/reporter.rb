require_relative 'driver'
require_relative 'trip'
require 'time'

#opens exactly one input file from the command line
if ARGV.length != 1
  puts "Please pass the name of exactly one file"
  exit;
end

file = ARGV[0]
open_file = open file

#Parses through file line by line and splits line into array called items
#Assigns local variables to items within the items array
open_file.each do |line|
  items = line.split
  current_driver = items[1]
    if items[0] == "Driver"
      Driver.new(current_driver, 0, 0)
    else
      start_time = Time.parse(items[2])
      end_time = Time.parse(items[3])
      minutes = (end_time - start_time)/60
      miles = items[4].to_f
      new_trip = Trip.new(current_driver, minutes, miles) 
        if new_trip.speed_check 
          Driver.driver_check(current_driver, minutes, miles)
        end
    end   
end

open_file.close
Driver.report
