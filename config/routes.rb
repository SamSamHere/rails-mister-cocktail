Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :cocktails, only: [:index, :show, :new, :create]

# cocktails
# # User can see all cocktails
# GET '/cocktails/' - index

# # User can seee details of a cocktail
# GET '/cocktails/:id' - show

# # User can create a new cocktail
# GET '/cocktails/new' - new
# POST '/cocktails/' -create

# doses
# User can add a new dose to an exisitng cocktail
# Ingredients


end
