LogExceptions::Engine.routes.draw do
  get "exceptions/index"
  root :to => "exceptions#index"
end