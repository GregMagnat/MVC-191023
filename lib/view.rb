class View
    def create_gossip
      puts "balence ton fraté ?"
      author = gets.chomp
  
      puts "Il dit quoi le narvalo ?"
      content = gets.chomp
  
      params = { content: content, author: author }
      return params
    end
  end