Rails.application.routes.draw do
  get 'ask', to: 'pages#ask'

  get 'answer', to: 'pages#answer'

  root to: 'pages#ask'

end
