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
      converted_code = original_code + factor

      if converted_code > max    #wrap for positive factor
        extra = converted_code - max
        converted_code = min + extra -1
      elsif converted_code < min  #wrap for negative factor
        extra = min - converted_code
        converted_code = max - extra + 1
      end
      result += converted_code.chr
    end
  end

  result
end

p caesar_cipher("What a string!", 5)