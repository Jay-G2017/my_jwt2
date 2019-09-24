Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users,
               path_names: {sign_in: 'login', sign_out: 'logout'},
               controllers: { registrations: 'registrations', sessions: 'sessions' }
    get '/projects',  to: 'projects#hello'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
