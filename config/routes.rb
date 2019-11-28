Rails.application.routes.draw do

  devise_for :teachers
  root to: 'pages#home'
  get '/students', to: 'students#index'
  get '/classrooms', to: 'classrooms#index'
  post '/sort', to: 'students#sort', as: 'sortbutton'

  resources :students, only: :update do
    resources :classroom_enrollments, only: :update
  end
  resources :teacher_locks, only: [:create, :update]
  resources :do_not_places, only: [:create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


