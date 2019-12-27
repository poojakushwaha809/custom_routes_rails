Rails.application.routes.draw do
	get 'cars/new', to: 'cars#new'
	post 'cars', to: 'cars#create'
	get 'cars/:id', to: 'cars#show', as: :pooja_ki_car
	get 'cars', to: 'cars#index'
	get 'cars/:id/edit', to: 'cars#edit', as: :edit_car
	patch 'cars/:id', to: 'cars#update'
   delete 'cars/:id', to: 'cars#destroy', as: :destory_car

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
