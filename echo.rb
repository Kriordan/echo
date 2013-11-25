# Beginning of the echo challenge

def playback (text)
  puts text.capitalize
  input = gets.chomp
  puts "You said: #{input}"
end

puts playback ("what do you want to say?")


