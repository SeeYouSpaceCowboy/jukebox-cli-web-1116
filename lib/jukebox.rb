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
  songs.each_with_index{|song_title, index|
    puts "#{index+1}. #{song_title}"
  }
end

def play(songs)
  response = gets.strip

  songs.each_with_index{|song_title, index|
    if song_title == response || index+1 == response.to_i
      puts "Playing #{song_title}"
    elsif index+1 == songs.length
      puts "Invalid input, please try again"
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.strip

    puts case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    end
  end

end
