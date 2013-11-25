# Beginning of the echo challenge

def playback (input)
  if input == "Nothing!"
    puts "Ok, fine!"
  elsif input == "I have a lot to say"
    puts "I don't have time for that right now!"
  else
    puts "You said: #{input}"
  end
end

puts "what do you want to say?"
playback (gets.chomp)


