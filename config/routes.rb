Rails.application.routes.draw do
  get 'team/index'#Pour avoir accès à la team
  get 'team/contact' #Pour avoir accès aux contacts de la team
  root 'welcome#accueil_inconnu' #Page d'accueil pour un utilisateur non identifié
  get 'welcome', to:'welcome#accueil' #Page d'accueil pour un utilisateur identifié, avec les gossips
  get 'welcome/:first_name', to:'welcome#accueil', as: 'welcome_first_name' #Si un malin s'amuse à mettre son nm direct sur l'url
  get 'user/:id', to:'user#show', as: 'user_show_id' #Afficher un utilisateur en fonction de son id
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
