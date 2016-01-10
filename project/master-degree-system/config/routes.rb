MasterDegreeSystem::Application.routes.draw do
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  resources :student_sci_degree_grades

  resources :student_sci_degrees do
    resources :student_sci_degree_grades
  end

  resources :sci_degree_classes

  resources :student_program_giving_grades

  resources :student_scientific_degree_grades

  resources :user_privilege_group_roles

  resources :privilege_group_roles

  resources :privilege_groups

  resources :roles

  resources :student_scientific_degrees

  resources :departments

  resources :faculties

  resources :universities

  resources :scientific_degree_classes

  resources :student_program_warning_histories

  resources :student_program_status_histories

  resources :program_class_statuses

  resources :student_program_professors

  resources :student_program_courses

  resources :grade_classes

  resources :student_programs

  resources :students

  resources :professor_program_class_courses

  resources :professors

  resources :users

  resources :user_types

  resources :professor_titles

  resources :program_class_semester_courses

  resources :program_classes

  resources :semesters

  resources :course_classes

  resources :courses

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
