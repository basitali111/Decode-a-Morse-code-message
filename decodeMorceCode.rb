
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
