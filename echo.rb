# Beginning of the echo challenge
@strings = []

def playback(convo)
  puts "You said: #{convo}"
end

def talkboy(convo)# takes in strings until user enters "done"
  puts "Ok, let's hear it!"
  convo = gets.chomp
  while convo != "done"
    @strings << convo
    convo = gets.chomp
  end
end

def yakbak #returns formatted replay of input to the @strings array
  puts "You said: #{@strings[0]}"
  @strings[1, @strings.length-2].each do |snippet|
    puts "Then, you said: #{snippet}"
  end
  puts "Finally you said: #{@strings[-1]}"
  puts "Phew! Glad you got all #{@strings.length} of those things off your chest!"
end

puts "what do you want to say?"
convo = gets.chomp
if !(convo == "Nothing!" || convo == "I have a lot to say")
  playback(convo)
elsif convo == "Nothing!"
  puts "Ok, fine!"
elsif convo == "I have a lot to say"
  talkboy(convo)
  yakbak
end

