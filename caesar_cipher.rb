def caesar_cipher(text, shift)
    shifted_string = text.chars.map do |char|
        if char =~ /[a-z]/ # Check if the character is a lowercase letter
          ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
        elsif char =~ /[A-Z]/ # Check if the character is an uppercase letter
          ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
        else
          char # Non-alphabetic characters remain unchanged
        end
      end
      shifted_string.join
end


puts caesar_cipher("hello world!", 4) # all lower case
puts caesar_cipher("HELLO WORLD!", 4) # all upper case
puts caesar_cipher("Hello World!", 4) # upper and lower case
puts caesar_cipher("1234", 4) # Doesn't change numbers
