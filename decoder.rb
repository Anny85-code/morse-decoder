def vocab(check, type)
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
  if type == 1
    data[check] || ' '
  else
    ("#{data.key(check)} ") || ' '
  end
end

def decode(morse)
  message = ''
  words = morse.split('   ')
  words.each do |word|
    message += "#{chars_map(word, 1)} "
  end
  message
end

def encode(morse)
  message = ''
  words = morse.split
  if words.length > 1
    words.each do |word|
      message += chars_map(word, 0)
      message += '   '
    end
  else
    message += chars_map(morse, 0)
  end
  message
end

def chars_map(word, type)
  form = ''
  chars = type == 1 ? word.split : word.chars
  chars.each do |char|
    form += vocab(char.upcase, type)
  end
  form
end

def morse_type(input)
  puts 'Enter your message'
  morse_message = gets.chomp
  case input
  when "0"
    puts "ENCODED: #{encode(morse_message)}"
  when "1"
    puts "DECODED: #{decode(morse_message)}"
  else
    puts 'Invalid selection'
  end
end

puts 'What do you want to do ?:'
puts '(1) Enter 0 to encode morse'
puts '(2) Enter 1 to decode morse'
morse_type(gets.chomp)
