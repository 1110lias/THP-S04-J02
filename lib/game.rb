require 'pry'
require_relative 'player'

class Game 
    attr_accessor :human_player, :enemies         #Déclaration des variables d'instance que l'on peut R/W a la volé
    @@enemies = []                                #Déclaration d'une variable de class de type array 

    def initialize(name, number_of_enemies)       #Initiaze à chaque creation d'une instance de class
      @human_player = HumanPlayer.new(name)       #Création d'un Humanplayer, instance de class Player
      puts @human_player    
      @human_player.show_state          #Pouquoi pas possible d'appeler dans PRY???
      for i in (1 .. number_of_enemies)           #Boucle de création de bots dépendants du number_of_enemies en argument
        a_bot = Player.new("Bot#{i}")             #Attribution d'un Username en fonction de i pour les différencier
        puts a_bot
        a_bot.show_state                #Pareil, pourquoi pas possible d'appeler dans Pry???
        @@enemies << a_bot                        #Les bots sont rangés dans la variable de class de type array @@enemies
      end  
      return                                        #End loop
    end                                           #End def

    def self.all                                  #Ceci est une méthode de classe, qui peut être appelé en utilisant "classname".all ici Game.all
      @@enemies                                   #Renvoie de la variable de class encapsulée dans la méthode (Good practice)
      test3 = @human_player
    return @@enemies, test3
    end

    def kill_player                               #Methode pour supprimer un ennemi ayant 0 PV
      @@enemies.each_index do |index|             #Balaye la variable de classe contenant les Instances ennemies
        if @@enemies[index].life_points == 0      #Condition et test pour suppression
            @@enemies.delete_at(index)            #Suppression
        else                    
        end
      end
    end

      def is_still_ongoing?                       #méthode pour vérifier se le jeu continue (Player ou ennemi vivant)
 
      end

    def self.show_players
        puts human_player.show_state
        @@enemies.each_index do |index|

        end
      end


end