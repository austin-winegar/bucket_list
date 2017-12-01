Rails.application.routes.draw do

  resources :lists do
    resources :destinations
  end

  scope 'destinations/:destination_id', as: 'activity' do
    resources :activities
  end

end
