class WelcomeController < ApplicationController
  def accueil
    @first_name = params[:first_name]
    @gossips = []
    Gossip.all.each do |my_gossip|
      @gossips << {author: my_gossip.user.first_name, title: my_gossip.title, user_id: my_gossip.user.id}

    end
  end

  def accueil_inconnu
  end

end
