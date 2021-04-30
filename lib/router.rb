class Router

  def initialize()
    @controller = Controller.new
  end

  def perform

    puts '
    ___________.__               ________                    .__        
    \__    ___/|  |__   ____    /  _____/  ____  ______ _____|__|_____  
      |    |   |  |  \_/ __ \  /   \  ___ /  _ \/  ___//  ___/  \____ \ 
      |    |   |   Y  \  ___/  \    \_\  (  <_> )___ \ \___ \|  |  |_> >
      |____|   |___|  /\___  >  \______  /\____/____  >____  >__|   __/ 
                    \/                 \/                       |__|    
    __________                   __               __   
    \______   \_______  ____    |__| ____   _____/  |_ 
     |     ___/\_  __ \/  _ \   |  |/ __ \_/ ___\   __\
     |    |     |  | \(  <_> )  |  \  ___/\  \___|  |  
     |____|     |__|   \____/\__|  |\___  >\___  >__|  
                            \______|                 '
    sleep(2)

    while true
      puts ""
      puts ""
      puts "Tu veux faire quoi jeune mouss' ?"
      puts ""
      sleep (0.3)
      puts "1. Je veux gréer un gossip"
      sleep (0.3)
      puts "2. Je veux afficher tous les potins 👻"
      sleep (0.3)
      puts "3. Je veux supprimer un potin (ça craint si ma meuf/mec tombe dessus...)"
      sleep (0.3)
      puts "4. Je veux quitter l'app"
      puts ""
      print ">"
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip"
        sleep (0.5)
        @controller.create_gossip
      
      when 2
        puts "Tu as choisi de voir tous les potins, petit curieux..."
        sleep(0.5)
        @controller.index_gossips

      when 3
        puts "Tu as choisi de supprimer un potin ... c'est sans retour ..."
        sleep(0.5)
        @controller.destroy_gossip

      when 4
        puts "Tchouss l'ami"
        break

      else 
        puts "Ce choix n'existe pas, merci de réessayer"

      end
    end

  end
      
end