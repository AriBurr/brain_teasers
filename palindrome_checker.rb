def palindrome()

  while true

    puts "Please enter word to create a palindrome:"
    word = gets.chomp.downcase

    word_arr = word.gsub(" ", "").split("")
    checker = word_arr.join("")
    reverse_arr = []

    reverse_arr.push(word_arr.pop) until word_arr.length === 0

    new_word = reverse_arr.join("")

    if new_word == checker
      puts "You made a palindrome! Congrats!"
    else
      puts "Not a palindrome! Sorry!"
      palindrome
    end

  end

  exit

end

palindrome
