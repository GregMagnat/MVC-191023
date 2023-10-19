require 'gossip'
require 'view'

class controller
    def create_gossip
        params = @view.create_gossip.
        new_gossip = Gossip.new
        gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
        gossip.save
        return new_gossip
        
    end
end
