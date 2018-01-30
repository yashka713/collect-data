# CURRENT FILE :: config/routes.rb
Rails.application.routes.draw do
  post "collect/data" => "collect_data/collect#data" , :as => :collect_data
end