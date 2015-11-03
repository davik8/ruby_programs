def add_vehicle (my_inventory, vehicle, stock)
	if my_inventory.has_key?(vehicle)
		puts "Sorry, that vehicle is already your inventory."
	else
		my_inventory[vehicle]=stock
	end
end

def remove_vehicle (my_inventory, vehicle)
	my_inventory.delete(vehicle)
	puts "You have removed #{vehicle.capitalize} from your inventory"
end

def inventory_edit (my_inventory, vehicle)
	if my_inventory.has_key?(vehicle)
		count = my_inventory[vehicle]

		if count <=1
			puts "\n There is #{count} #{vehicle.capitalize} in stock"
		else
			puts "\n There is #{count} #{vehicle.capitalize}'s in stock"
		end

		puts "Did you sell or buy any #{vehicle.capitalize}'s \n 1. Sell \n 2. Buy"
		choice = gets.chomp

		while choice != "1" && choice != "2"
			puts "Please enter 1 for Sell or 2 for Buy"
			choice = gets.chomp
		end

		case choice
		when "1"
			puts "Please enter how many you sold"
			sold = gets.chomp.to_i
			while sold > count
				puts "You only have #{count} #{vehicle.capitalize}'s in stock, please enter correct number sold"
				sold = gets.chomp.to.i	
			end
			count -= sold
			my_inventory[vehicle] = count
		when "2"
			puts "Please enter how many you bought"
			bought = gets.chomp.to_i
			count += bought
			my_inventory[vehicle] = count
		end

		if count > 1
			puts "There are now #{count} #{vehicle.capitalize}'s in stock.\n"
		else puts "There is #{count} #{vehicle.capitalize} in stock.\n"
		end
	else
		puts "\n Sorry, you did not choose a vehicle in your inventory"
	end
end

def list_inventory(my_inventory)
	count = 0
	my_inventory.each do |key, value|
		count += 1
		if value > 1
			puts "\n#{count}.  There are #{value} #{key.capitalize}'s in stock."
		else 
			puts "\n#{count}.  There is #{value} #{key.capitalize} in stock."
		end
	end
end

my_inventory = {}

puts "Welcome to Inventory Tracker"
puts "Please add vehicle:"
vehicle = gets.chomp.downcase
puts "Enter how many you have in stock:"
stock = gets.chomp.to_i

add_vehicle(my_inventory, vehicle, stock)

while true
	puts "\nPlease select an option:"
	puts "1. Add or Remove a Vehicle"
	puts "2. Edit Inventory"
	puts "3. list_inventory"
	puts "Enter 'Exit' to leave the Inventory Program\n"
	choice = gets.chomp


	case choice
	when "1"
		puts "Please Select an Option:"
		puts "1. Add New Vehicle"
		puts "2. Remove existing Vehicle"
		choice = gets.chomp
			if choice == "1"
				puts "Please enter name of vehicle"
				vehicle = gets.chomp.downcase
				puts "Enter how many you have in stock"
				stock = gets.chomp.to_i
				add_vehicle(my_inventory, vehicle, stock)
			elsif choice == "2"
				puts "Please enter the name of the vehicle you would like to remove"
				puts my_inventory.keys
				vehicle = gets.chomp.downcase
				remove_vehicle(my_inventory, vehicle)
			end
	when "2"
		puts "Please enter a vehicle to edit"
		puts my_inventory.keys
		vehicle = gets.chomp.downcase
		inventory_edit(my_inventory, vehicle)
	when "3"
		list_inventory(my_inventory)
	when "Exit", "exit"
		break
	end
end
