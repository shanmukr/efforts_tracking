Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
 
  resources :home do
    collection do
      post "emp_validation"
      get  'logout'
    end
  end

  resources :employees do
    collection do
      post 'new', 'update'
    end
  end

  resources :goals do
    collection do
      post 'new', 'update'
      get  'my_goals', 'goal_actions'
    end
  end

end
