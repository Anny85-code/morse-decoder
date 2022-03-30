def morse(key)
  data = {
    '.-' => 'A', '-...' => 'B',
    '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V',
    '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  data[key] || ' '
end

def decode_char(morse)
  message = ''
  words = morse.split('   ')
  words.each do |word|
    chars = word.split
    chars.each do |char|
      message += morse(char)
    end
    message += ' '
  end
  message
end

puts('Enter your morse message: ')

morse_message = gets.chomp

puts "Your message is: #{decode_char(morse_message)}"
