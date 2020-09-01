Rails.application.routes.draw do
  get "traders/show" => "traders#show"
  get "traders/new" => "traders#new"
  post "traders/create" => "traders#create"
  get "traders/:id" => "traders#kwsk"
  get "traders/:id/edit" => "traders#edit"
  post "traders/:id/update" => "traders#update"
  post "traders/:id/destroy" => "traders#destroy"

  get 'order/index' => "order#index"
  get "order/traders" => "order#traders"
  get "order/expense" => "order#expense"
  get "order/sales" => "order#sales"

  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end