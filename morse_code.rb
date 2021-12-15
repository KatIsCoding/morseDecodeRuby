def decode_char(code_char)
  code = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
          '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
          '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
          '-.--', '--..']
  alphabeth = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

  index = code.find_index(code_char)
  alphabeth[index]
end
