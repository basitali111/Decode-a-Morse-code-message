
CODE = {
    "A" => ".-", 
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => '.',      
    "F" => '..-.',
    "G" => '--.',    
    "H" => '....',   
    "I" => '..',
    "J" => '.---',   
    "K" => '-.-',    
    "L" => '.-..',
    "M" => '--',
    "N" => '-.',
    "O" => '---',
    "P" => '.--.',
    "Q" => '--.-',
    "R" => '.-.',
    "S" => '...',
    "T" => '-',
    "U" => '..-',
    "V" => '...-',
    "W" => '.--',
    "X" => '-..-',
    "Y" => '-.--',
    "Z" => '--..'
}
=begin
Create a method to decode a Morse code character, takes a string parameter, 
and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").
=end
def decode_char (morce_code)
    @character = CODE.key(morce_code)
    @character
 end

 puts decode_char ".-"

 =begin
Create a method to decode an entire word in Morse code, takes a string parameter, 
and return the string representation. Every character in a 
word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").
=end
def decode_entire_word_helper (morce_code)
    @characters = morce_code.split(" ")
    @join_character = ""
    @characters.each do |n|
        @join_character += decode_char(n)
      end
      puts "#@join_character"
 end

 def decode_word (entire_word)
    decode_entire_word_helper(entire_word)
 end

 decode_word "-- -.--"

=begin
Create a method to decode the entire message in Morse code, takes a string parameter, 
and return the string representation. Every word will be separated by 3 spaces (e.g. decode("-- -.--   -. .- -- .")
=end

def decode(entire_message)
    @characters = entire_message.split('   ')
    @characters.each do |n|
        decode_entire_word_helper(n)
    end
  end

 decode "-- -.--   -. .- -- ."
