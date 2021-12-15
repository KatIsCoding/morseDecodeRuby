def decode_char(code_char)
  code = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
          '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
          '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
          '-.--', '--..']
  alphabeth = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

  index = code.find_index(code_char)
  alphabeth[index]
end


def decode_word(word)
  word = word.split(' ')
  out = ""
  word.each {|char| 
    if char == '/'
      out += " "  
    else
      out += decode_char(char)
    end
  }
  return out
end

def decode(sentence)
  sentence = sentence.split('   ')
  out = ""
  sentence.each {|word| out += decode_word(word) + " "}
  return out
end

print decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")

