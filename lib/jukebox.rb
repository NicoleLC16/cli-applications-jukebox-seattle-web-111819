# Add your code here
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
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program" ""
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.strip
  
  if songs.include? (song_input)
    puts "Playing #{song_input}"
  elsif
     (1..9).include?(song_input.to_i)
      puts "Playing #{songs[song_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    command = gets.strip
    if command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end

    break if command == "exit"
  end
end 
  