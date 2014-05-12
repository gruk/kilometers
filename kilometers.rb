# ruby project to collect daily kms driven for work
# currently it works in a very simple manner
# I'm thinking that the trips should be put into an array or a hash, probably a hash?

#defining a hash
$log = Hash.new

#defining kms variable
kms = 0

#method to gather driving data:
def gatherInfo()
	puts "Where did you drive to?"
	puts "331, prp, para, portsmouth, tval, or town?"
		dest = gets.chomp.downcase.to_sym
			if $log[dest].nil?
				puts "How many times did you make this trip?"
				times = gets.chomp.to_i
				$log[dest] = times
			else
				puts "destination already exists,would you like to update instead?"
				needupdate = gets.chomp
				if needupdate == "yes"
					update
				else
				end
			end
end

def update()
	puts "Which destination would you like to update?"
    dest = gets.chomp.to_sym
        if $log[dest].nil?
          puts "Destination not in database"
        else
          puts "How many times did you drive to #{dest} today?"
          times = gets.chomp.to_i
          $log[dest] = times
          puts "#{dest} updated to #{times}"
      end
end

#begin program:
puts "Have you been for a drive today?"
drive = gets.chomp
#begin a loop, ends when answer is not "yes"
while drive == "yes"

gatherInfo
#this is the way out of the loop:
puts "any more journeys?"
drive = gets.chomp
end
#deliver results
puts "Awesome, here's what we have for today:"
puts "Today's date m/d/y:" + Time.now.strftime("%m/%d/%Y")
puts $log



puts "You drove #{kms} kms today!"
=begin
if $log[dest] = :para
	km1 = 6
	km1 * 
elsif $log[dest] == :prp
	km1 = 6
elsif $log[dest] == :tval
	km1 = 2
elsif $log[dest] == :portsmouth
	km1 = 4
elsif $log[dest] == :town
	km1 = 10
elsif $log[dest] == :331
	km1 = 8
end
=end

=begin THE FOLLOWING IS THE OLD WORKING SCRIPT
#ask if there has been a drive
puts "Have you been for a drive today?"
#the next 5 or so lines could be a method I'm sure
drive = gets.chomp 
if drive == "yes"
#there has been a drive, find out where to
#	puts "How far did you drive?"
	puts "Where did you drive to?"
	puts "para, portsmouth, prp, or tval?"

#Should turn the following into a method so it can be reused, or perhaps I could just loop?
#define distances for the destinations
	destination = gets.chomp
	   if destination == "para"
			kms = 6
		elsif destination == "prp"
			kms = 6
		elsif destination == "tval"
			kms = 2
		elsif destination == "portsmouth"
			kms = 4
		end
#find out how many times the trip was made in integer format	
	puts "How many times did you make this trip?"
	tripCount = Integer(gets.chomp)
	
#multiply trip by the trip count, and convert kms to integer
	total = tripCount * kms.to_i
#if no drive was driven it ends the program
else puts "lets do this again tomorrow"
end

#ask if there were any other trips
puts "Any other trips?"
drive = gets.chomp
if drive == "yes"

end

#print out the total kms for the day
puts "You drove #{total} kms today!"
=end


