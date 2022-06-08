Rails.application.routes.draw do
  get 'blind_dates/employees_index'
  post 'blind_dates/create_next'
  post 'blind_dates/pick_restaurant'
  post 'blind_dates/employee_go_lunch'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
