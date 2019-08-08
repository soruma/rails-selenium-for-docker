Rails.application.routes.draw do
  get 'top/index'
  get 'top/abort'
  root 'top#index'

  get 'top/about'
end
