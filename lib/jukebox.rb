songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  -help: displays this help message
  -list: displays a list of songs you can play
  -play: lets you choose a song you can play
  -exit: exits this program"
end

def list(songs)
  puts songs
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  songs.each_with_index do |i|
    # come back and figure out how to select songs with a number
    if (1..9).to_a.include?(user_response.to_i)
      puts "Playing #{songs[user_response.to_i-1]}"
    elsif user_response == i
    puts "Playing #{user_response}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
response = gets.chomp

  if response != "exit"
    loop do puts "Please enter a command:"
    break if response == "exit"
    exit_jukebox
    end
  end

    if response == "help"
      help
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
   end
end
