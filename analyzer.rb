# puts "enter your firstname"
# first_name = gets.chomp
# puts "enter your lastname"
# last_name = gets.chomp
# puts "welcome #{first_name} #{last_name}"
# puts "Your #{first_name} has #{first_name.length} xters and your #{last_name} has #{last_name.length} xters"
# puts "Your #{first_name} has the reverse #{first_name.reverse} xters and your #{last_name} has the reverse #{last_name.reverse} xters"
#
# first_num = gets.chomp
# second_num = gets.chomp
#
# puts "result of the multiplication = #{first_num.to_i * second_num.to_i} "


cities = {
    "abuja" => "081",
    "akure" => "082",
    "p-harcourt" => "083",
    "lokoja" => "084",
    "benue" => "085",
    "osogbo" => "086",
    "sagamu" => "087",
    "ibadan" => "088",
    "jalingo" => "089",
    "damaturu" => "090"
}


def getAreaCode (cityName, cities)

  cities.each do |city, code|
    if city == cityName
      return code
    end
  end
end

def displayCities cities
  puts "Available City Names:"

  cities.each do |city, code|
    puts city
  end
end

loop do
  puts "Do you want to lookup a city name (y/n)?"

  answer = gets.chomp
  if answer != "y"
    break
  end

  displayCities (cities)

  puts "enter the city name to display the area code"

  cityName = gets.chomp

  if cities.include?(cityName)

    result = getAreaCode(cityName, cities)

    puts "The area code for city #{cityName} is #{result}"
  else
    puts "invalid input"
    break
  end

end

