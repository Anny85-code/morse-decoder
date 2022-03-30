require_relative 'dictionary'

include Dictionary

def decode_char(morse)
  message = ''
  words = morse.split('   ')
  words.each do |word|
    chars = word.split
    chars.each do |char|
      message += Dictionary.morse(char) || ' '
    end
    message += ' '
  end
 message
end

puts('Enter your morse message: ')

morse_message = gets.chomp;

puts(decode_char(morse_message))
