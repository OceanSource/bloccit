Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'
  
  get 'welcome/contact.html.erb'
  
  root to: 'welcome#index'
  

end
