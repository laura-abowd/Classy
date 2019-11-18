Rails.application.routes.draw do
  get 'grades/create'
  get 'teachers/create'
  get 'classrooms/create'
  get 'classrooms/index'
  get 'classrooms/update'
  get 'classroom_enrollment/create'
  get 'classroom_enrollment/update'
  get 'students/index'
  get 'students/update'
  get 'do_not_place/create'
  devise_for :teachers
  root to: 'pages#home'
  get '/students', to: 'students#index'
  get '/classrooms', to: 'classrooms#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


