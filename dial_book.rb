dial_book = {
  "sapporo" => "011",
  "nagano" => "026",
  "tokyo" => "03",
  "kanagawa" => "045",
  "osaka" => "06"
}

def get_city_names(dial_book)
  dial_book.keys
end

def get_area_code(dial_book, key)
  dial_book[key]
end

loop do
  puts "do you want to lookup an area code?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"

  puts get_city_names(dial_book)

  puts "enter your selection"
  prompt = gets.chomp

  if dial_book.include?(prompt)
    puts "the area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "you entered a city name not in the dictionary"
  end
end
