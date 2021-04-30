class View

  def create_gossip
    puts "Quel est ton nom ? Déposer un potin anonymement n'est pas bien vu... (un pseudo suffirat)"
    print "> "
    author  = gets.chomp
    puts "Quel est ton potin ?"
    print "> "
    content = gets.chomp
    params = {
      "author": author,
      "content": content 
    }
    return params
  end

  def index_gossips(all_gossips)
    system('clear')
    all_gossips.each do |gossip|
      puts "-"*30
      puts "\033[0;34mAuteur du potin : #{gossip[0]}"+"\033[0m"
      puts "--------------->"
      sleep (0.5)
      puts "\033[0;35mPotin : #{gossip[1]}"+"\033[0m"
      sleep (2)
    end
  end

  def destroy_gossip
    puts "Quel potin souhaites tu détruire pour la vie ?"
    puts "Donne moi le nom de son auteur et je m'en occupe... 💀"
    print "> "
    params = gets.chomp.downcase
  end
  
end
