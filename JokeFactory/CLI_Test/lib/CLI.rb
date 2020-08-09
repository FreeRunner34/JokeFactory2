require_relative './config/environment.rb'

class Cli

    puts "welcome to the Joke Factory"
    puts "I'm the Joker whats your name?"
    name = gets.chomp
    puts"lets get down to business would you like to hear a funny joke? you have two options"
    puts"What would you like to do???"
    puts"option 1: I can tell you a pretty funny Joke."
    puts "option 2: would you like to hear a Joke like no other?"
    puts "option 3: EXIT"
    users_choice = gets.chomp 
    
        if users_choice == "1"
            #tells joke 1 
            option_1 = Dad.new("http://icanhazdadjoke.com/")
            puts option_1.parse_json

        elsif users_choice == "2"
            #tells chuck norris joke 
            option_2 = Chuck.new("http://api.icndb.com/jokes/random")
            puts option_2.parse_json

        elsif users_choice == "3"
            #exits program
            puts "Sorry to see you go #{name}! See ya next time!"
        else 
            puts"Invalid Input try!! again#{name}".colorize(:blue)
        end 
end 


#input=gets.chomp

# api1 = API_dad_jokes.new
# api2 = API_chuck_norris.new

# dad_joke = api1.call_dad_joke
# chuckles = api2.call_chuck_norris_joke