MORSE_CODE_DICTIONARY = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z',
  '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9'
}.freeze

# Method to decode a single Morse code character
def decode_char(morse_char)
  MORSE_CODE_DICTIONARY[morse_char]
end

# Method to decode a Morse code word
def decode_word(morse_word)
  morse_word.split.map { |morse_chararacter| decode_char(morse_chararacter) }.join
end

# Method to decode a Morse code message
def decode_msg(morse_msg)
  morse_msg.split('   ').map { |morse_term| decode_word(morse_term) }.join(' ')
end
