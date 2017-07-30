Rails.application.routes.draw do
  get '/t', to: 'paperclips#create'  
  devise_for :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :microposts
  resources :profiles
  

  #以下這一段為開發檢視用,記得找時間重構,實在寫的不好,開發完如果要上線要嘛做admin權限出來,不然就註解掉
  show_db_path = ["profiles", "users", "microposts"]
  show_db_action = ["profiles", "users", "microposts"]
  show_db_y = 0
  show_db_path.each do |x| 
  get "/qwer/#{x}", to: "show_dbs##{show_db_action[show_db_y]}"
  show_db_y = show_db_y + 1
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
