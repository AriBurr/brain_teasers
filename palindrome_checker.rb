def palindrome()
  puts "Please enter word to create a palindrome:"
  word = gets.chomp.downcase

  word_arr = word.split("")
  cleaned_up_arr = word_arr.delete_if { |x| x == (" ") }
  checker = cleaned_up_arr.join("")
  reverse_arr = []

  reverse_arr.push(cleaned_up_arr.pop) until cleaned_up_arr.length === 0

  new_word = reverse_arr.join("")

  if new_word == checker
    puts "You made a palindrome! Congrats!"
  else
    puts "Not a palindrome! Sorry!"
    exit
  end

end

palindrome()
