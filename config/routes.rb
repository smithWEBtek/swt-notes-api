Rails.application.routes.draw do

root 'api/v1/notes#index'

namespace :api do 
		namespace :v1 do 
			resources :notes
		end
	end
end
