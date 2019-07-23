## ALL WORKS EXCEPT FOR THE PLAY METHOD 
## CAN'T GET IT TO LOOK AT BOTH INTEGERS AND STRINGS

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|item, index| puts "#{index+1}. #{item}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  user_integer = user_response.to_i 
    if user_integer == 0
      if songs.include?(user_response)
        puts "Playing #{user_response}" 
      else 
        puts "Invalid input, please try again"
      end
    elsif user_integer > 0 && user_integer < songs.length
      puts "Playing #{songs[user_integer-1]}"
    else 
      puts "Invalid input, please try again"
    end
end   

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  puts "Please enter a command:"
  user_command = gets.chomp
  while user_command != "exit"
    break if user_command == "exit"
    if user_command == "list"
      list(songs)
      puts "Please enter a command:"
      user_command = gets.chomp
    elsif user_command == "play"
      play(songs)
      puts "Please enter a command:"
      user_command = gets.chomp
    elsif user_command == "help"
      help
      puts "Please enter a command:"
      user_command = gets.chomp
    end
  end
  exit_jukebox
end

