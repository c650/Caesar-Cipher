require "colored"
require_relative "./methods.rb"
puts "Input phrase to force decrypt:".red
phrase = gets.chomp
0.upto(25) do |key|
  dec = decrypt(key, phrase)
  `echo #{dec} >> ./decryption_results.txt`
  $keywords.each do |keyword|
    if dec.include? keyword
      puts dec
    end
  end
end
puts "Text file has been made in current directory."
