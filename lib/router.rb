require 'controller'

class Router

#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end 

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    puts "Alors, frérot qu'est-ce qu'il se passe à Marseille ?"

    while true

      #on affiche le menu
      puts "Tu veux faire quoi le sang ?"
      puts "1\. Tu vas jacter le J"
      puts "4\. Tu veux qu'on stop ici le J"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Aaah je t'écoutes le sang , souviens toi, Le J c'est le S " 
        @controller.create_gossip

      when 4
        puts "À bientôt en RS en ville le sang !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Fait pas de manières vas droit au buts" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end