Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"

  # This is a shorthand that makes Rails generate a bunch of routes for
  # the model specified. That way, we can focus on writing the controller actions
  # that handle requests sent to those routes. For example, Rails will generate:
  # - GET /articles,
  # - POST /articles,
  # - GET /articles/:id (a read-only page for viewing the article),
  # - GET /articles/:id/edit (the page with a form for editing the article),
  # - PUT or PATCH /articles/:id,
  # - DELETE /articles/:id
  # - etc
  # if we simply write `resources :articles`. To see the full list of generated
  # routes AND the controller actions that Rails requires you to create for them,
  # run `rails routes --expanded` in a terminal. However, we can use `:only` to specify
  # the exact routes we want to be auto-generated.
  resources :articles, only: [:index, :show, :new]
  get "/articles/new", to: "articles#new"
  post "/articles/new", to: "articles#create"
  get "/articles/:id/edit", to: "articles#edit"
  patch "/articles/:id/edit", to: "articles#update"
end
