Rails.application.routes.draw do
  get 'statics/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'statics/ajax_update', to: 'statics#ajax_update'
end
