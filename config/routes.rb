Rails.application.routes.draw do

  # dogs
  get '/dogs', to: "dogs#index", as: "dogs"
  get '/dogs/:id', to: "dogs#show", as: "dog"
  # resources :dogs

  # employees
  get '/employees', to: "employees#index", as: "employees"
  post '/employees', to: "employees#create"
  get '/employees/new', to: "employees#new", as: "new_employee"
  get '/employees/:id', to: "employees#show", as: "employee"
  get '/employees/:id/edit', to: "employees#edit", as: "edit_employee"
  patch '/employees/:id', to: "employees#update"

  # resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
