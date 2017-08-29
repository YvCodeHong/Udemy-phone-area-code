dial_book = {
  "London" => "W1",
  "Manchester" => "M10",
  "Newcastle" => "N34",
  "Cardiff" => "C34",
  "Liverpool" => "L79",
  "Norwich" => "N78",
  "Peterbourgh" => "P78",
  "Durham" => "D78",
  "Sheffield" => "S78",
  "York" => "Y10"
}
def get_city_names(somehash)
  somehash.each { |k, v| puts k }
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"

  answer = gets.chomp
  if answer != "Y"
    break
  end
  puts "Which city do you want to lookup?"
  get_city_names(dial_book)
  puts "Enter your selection"
  city = gets.chomp

  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "You entered a city name not in the dictionary"
  end

end
