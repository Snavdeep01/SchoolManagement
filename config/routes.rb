Rails.application.routes.draw do
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
