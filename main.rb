def caesar_cipher (message, factor)
  result = ''

  message.each_char do |letter|
    original_code = letter.ord 

    min = 97
    max = 122

    if letter === letter.capitalize then
      min = 65
      max = 90
    end
    
    unless original_code.between?(min, max)
      result += letter
    else
      result += original_code.to_s
    end
  end

  result
end

p caesar_cipher("What a string!", 5)