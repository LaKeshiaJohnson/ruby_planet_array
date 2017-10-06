=begin

1.Use append() to add Jupiter and Saturn at the end of the array.
2.Use the concat() method to add another array of the last two planets in our solar system to the end of the array.
3.Use insert() to add Earth, and Venus in the correct order.
4.Use append() again to add Pluto to the end of the array.
5.Now that all the planets are in the array, slice the array in order to get the rocky planets into a new list called rocky_planets.
6.Being good amateur astronomers, we know that Pluto is now a dwarf planet, so use the pop operation to remove it from the end of planet_list.

part2

Iterating over planets

Create another array containing arrays where each array will hold the name of a spacecraft that we have launched, and the names of the planet(s) that it has visited, or landed on. (e.g. ['Cassini', 'Saturn']).
Iterate over your array of planets, and inside that loop, iterate over the array of arrays. Print, for each planet, which satellites have visited.
	
=end

planet_list = ["Mercury", "Mars"]

#Append Jupiter & Saturn
planet_list.push("Jupiter", "Saturn")

#add Uranus & Neptune using concat
planet_list.concat(["Uranus", "Neptune"])

#use insert to add Earth & Venus in the correct order
planet_list.insert(1, "Venus", "Earth")

#Use append to add Pluto to the end
planet_list.push("Pluto")

#slice rocky planets into new array (Mercury, Venus, Earth, Mars)
rocky_planets = planet_list.slice(0..3)

#remove Pluto
planet_list.pop

puts "Planet List: #{planet_list}"
puts "Rocky Planets: #{rocky_planets}"

#Part 2
spacecraft_missions = [["Messenger", "Mercury"], ["Marier2", "Venus"], ["Mariner10", "Earth"], ["Viking1", "Mars"], ["Juno", "Jupiter"], ["Cassini", "Saturn"], ["Voyager2", "Uranus"], ["Voyager2", "Neptune"]]


planet_list.each do |planet|
	#puts planet
	spacecraft_missions.each do |craft|
		if planet == craft[1]
			puts " Missions: #{craft[0]} #{planet}"
		end
	end

end


