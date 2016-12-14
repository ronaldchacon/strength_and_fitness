Rails.application.routes.draw do
  scope '/api' do
    resources :exercises
  end
end
