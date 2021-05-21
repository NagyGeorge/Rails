dial_book = {
    'newyork' => '212',
    'newbrunswick' => '732',
    'edison' => '908',
    'plainsboro' => '609',
    'sanfrancisco' => '301',
    'miami' => '305',
    'paloalto' => '650',
    'evanston' => '847',
    'orlando' => '407',
    'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each {|k, v| return v if k == key}
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  
  puts
  puts get_city_names(dial_book)
  puts
  
  puts "Which city do you want the area code for?"
  city_answer = gets.chomp.downcase
  
  city_verifier = get_city_names(dial_book)
  if city_verifier.include?(city_answer)
    print "The area code for #{city_answer} is #{get_area_code(dial_book, city_answer)}"
  else
    puts
    puts "Error"
    puts
  end
end
