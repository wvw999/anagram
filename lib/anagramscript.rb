require('./anagram.rb')

puts " \n\n"
puts "********************************"
puts "*         Anagrammer!          *"
puts "********************************"

play = ""

until play == "n"
  print "\nTest for anagrams (y/n)? "
  play = gets.chomp
  if play.downcase == "y"
    print "\nEnter first word or phrase: "
    input_one = gets.chomp
    print "\nEnter second word or phrase to compare to first entry: "
    input_two = gets.chomp
    puts "comparing * #{input_one} * and * #{input_two} *"
    print input_one
    print input_two
    session = Ragaman.new(input_one, input_two)
    program_output = session.ragamanner()
  elsif play == "n"
    exit
  else
    print "\nThat did not seem like a Y or an N... "
  end
  puts program_output
  puts "\n\n"
end