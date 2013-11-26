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

def gettysburg #requests filename for list of sayables
  puts "Ok, where can I find what you want to say?"
  @notepad = gets.chomp
  file_exists?(@notepad)
  puts "Loading #{@notepad}"
  File.open(@notepad, 'r').each_line do |line|
    string = line
    @strings << string
  end
end

def file_exists?(file)
  if !File.exists?(file) 
    puts "Where can I find what you want to say?"
    @notepad = gets.chomp
    file_exists?(@notepad)
  end
end

puts "what do you want to say?"
convo = gets.chomp
if !(convo == "Nothing!" || convo == "I have a lot to say" || convo == "I have something prepared")
  playback(convo)
elsif convo == "Nothing!"
  puts "Ok, fine!"
elsif convo == "I have a lot to say"
  talkboy(convo)
  yakbak
elsif convo == "I have something prepared"
  gettysburg
  yakbak
end

