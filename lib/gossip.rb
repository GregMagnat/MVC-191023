class Gossip
    attr_reader :author, :content 

    def initialize(author, content)
        @content = content
        @author = author
      end

      def save
        # Ouvrir le fichier CSV en mode ajout
        CSV.open('gossips.csv', 'a') do |csv|
          # Écrire une nouvelle ligne avec l'auteur et le contenu
          csv << [@author, @content]
        end
end

my_gossip = Gossip.new("Auteur", "Ceci est un exemple de contenu.")
my_gossip.save
puts "C'est bon le J valide ton info, toi t'es un bon fratééééé"
