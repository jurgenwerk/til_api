Rails.application.routes.draw do
  
  get 'api/til', to: 'application#til', as: :til
  
end
