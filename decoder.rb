require_relative "dictionary.rb"

include Dictionary

def decode_char(morse)
    message = ''
    words = morse.split('   ')
    words.each do |word|
       chars = word.split(' ')
       chars.each do |char|
            message += Dictionary.morse_dictionary(char)
       end
       message += ' '
     end
    return message;
end

puts("Enter your morse message: ")

morse_message = gets.chomp();

puts(decode_char(morse_message))
