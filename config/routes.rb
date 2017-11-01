Rails.application.routes.draw do

  namespace :cms do
    resources :awards
  end
  get 'awards/index'



  get 'pages/show'

  namespace :teachers do
    get 'announcements/index'
  end

  namespace :cms do
    resources :announcements
  end
  get 'news/index'

  get 'golf_classic/show'

  namespace :cms do
    resources :schools
  end
  get 'conventions/show'
  
  namespace :cms do
    resources :conventions
  end
  namespace :cms do
    resources :attachments
  end
  get 'convention/show'

  namespace :cms do
    resources :slideshow_images
  end
  namespace :cms do
    resources :chapter_meeting_minutes
  end
  get 'chapters/:id' => 'chapters#show'
  get 'chapters/meeting_minutes/:id' => 'chapters#meeting_minutes'

  namespace :cms do
    resources :chapters
  end
  namespace :auth do
  get 'admin/index'
  end

  namespace :auth do
  get 'users/index'
  delete "users/destroy/:id" => "users#destroy"
  get "users/edit/:id" => "users#edit"
  post "users/update" => "users#update"
  end

  namespace :cms do
    resources :page_sections
  end
  
  namespace :cms do
    resources :roles
  end
  
  namespace :cms do
    resources :pages
  end
  
  get 'cms/pages/add_content/:id' => 'cms/pages#add_content'
  patch 'cms/pages/update_content/:id' => 'cms/pages#update_content'
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  
  get 'pages/home'
  get 'pages/contact'
  get 'pages/show/:id' => 'pages#show'
  

  # Define Default Root
  root 'pages#home'
end
