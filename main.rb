def caesar_cipher (message, factor)
  result = ''

  message.each_char do |letter|
    original_code = letter.ord 
    result += original_code.to_s
  end

  result
end

p caesar_cipher("What a string!", 5)