Rails.application.routes.draw do
  get 'books/index'
  root "root#index"
end
