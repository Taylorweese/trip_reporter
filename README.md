# **Trip Reporter**

The goal of this project was to create a program that accepts a text input file containing various driving records and returns a summarization of all the drivers and their relative trips.  I chose to make a Driver object the primary piece of this project, creating new instances of the Driver class with each new "Driver" line of the input file. I then incrementally add trip information to each driver when their name was mentioned in a specific trip input line.  Initially, I chose to run the program with only the Driver class but refactored to include a Trip class.  While the Trip class was not entirely necessary, I decided to include it so the final output could easily be refactored to include information such as a Driver's total number of trips, a driver's longest trip, fastest trip, etc.  I chose to store each Driver inside a class variable array so I could easily loop through all drivers at the end.  I understand that class variables are not considered good practice when applied in Rails, so this specific piece would likely need changed if the project were to be implemented in Rails in the future.  


# **Setup**
Insure Ruby 2.4.0 or greater is installed (via RVM or other)

# **Running the Tests**
To run the tests, cd into the spec folder and run the rspec command on the test files.  Example: 'rspec driver_spec.rb'


# **Usage**
This script accepts input from the command line. To run the Trip Reporter, add the txt file into the project then run the reporter.rb file with the name of the input txt file immediately following on the command line. 

# ** Example usage from the command line (assuming txt added to lib folder): **
ruby reporter.rb 'yourfilename'.txt

# ** Problem Statement **
Let's write some code to track driving history for people.

The code will process an input file. You can either choose to accept the input via stdin (e.g. cat input.txt | ruby yourcode.rb), or as a file name given on the command line (e.g. ruby yourcode.rb input.txt).

Each line in the input file will start with a command. There are two possible commands.

The first command is Driver, which will register a new Driver in the app. Example:

Driver Dan

The second command is Trip, which will record a trip attributed to a driver. The line will be space delimited with the following fields: the command (Trip), driver name, start time, stop time, miles driven. Times will be given in the format of hours:minutes. We'll use a 24-hour clock and will assume that drivers never drive past midnight (the start time will always be before the end time). Example:

Trip Dan 07:15 07:45 17.3

Discard any trips that average a speed of less than 5 mph or greater than 100 mph.

Generate a report containing each driver with total miles driven and average speed. Sort the output by most miles driven to least. Round miles and miles per hour to the nearest integer.

Example input:

Driver Dan
Driver Alex
Driver Bob
Trip Dan 07:15 07:45 17.3
Trip Dan 06:12 06:32 12.9
Trip Alex 12:01 13:16 42.0
Expected output:

Alex: 42 miles @ 34 mph
Dan: 30 miles @ 36 mph
Bob: 0 miles
