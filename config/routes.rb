Rails.application.routes.draw do
  get 'scholars/index'
  get 'scholars/show'
  get 'scholars/new'
  get 'scholars/distroy'
  get 'faculties/index'
  get 'faculties/show'
  get 'faculties/new'
  get 'faculties/distroy'
  get 'principals/index'
  get 'principals/show'
  get 'principals/new'
  get 'principals/distroy'
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  # get 'books/update'
  # get 'books/destroy'
 
  


  namespace :management do
      resources :admins
      resources :teachers
      resources :students
      resources :books
      root to: "admins#index"
    end
  # devise_for :teachers
  # devise_for :students
  # devise_for :admins
  # get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "users#index"
  
  devise_for :admins, controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'
      }
  devise_for :teachers, controllers: {
        sessions: 'teachers/sessions',
        registrations: 'teachers/registrations'
     }
  
     devise_for :students, controllers: {
      sessions: 'students/sessions',
      registrations: 'students/registrations'
    }

end
