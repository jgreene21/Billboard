Rails.application.routes.draw do
  
 root "static_pages#home"

 resources :lists

  resources :artists do
  
  resources :songs 
 end 

 get 'new_list_song/:id', to: 'lists#new_song', as: 'new_list_song'

 post 'add_list_song/:id/:song_id', to: 'lists#add_song', as: 'add_list_song'
 
 delete 'remove_list_song/:id/:song_id', to: 'lists#remove_song', as: 'remove_list_song'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end 