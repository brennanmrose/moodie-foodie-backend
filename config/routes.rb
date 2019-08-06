Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do
		  resources :moods do
			  resources :desserts
			  resources :drinks
			  resources :foods
			end 
		end
	end

end
