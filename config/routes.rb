Rails.application.routes.draw do
  get 'report/top' => "report#top"
  get "report/new" => "report#new"
  post "report/create" => "report#create"
  get "report/index" => "report#index"
  get "report/:id" => "report#show"
  get "report/:id/edit" => "report#edit"
  post "report/:id/update" => "report#update"
  post "report/destroy" => "report#destroy"

  get 'items/index' => "items#index"
  get "items/:id/new" => "items#new"
  post "items/create" => "items#create"

  get 'expences/index' => "expences#index"

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