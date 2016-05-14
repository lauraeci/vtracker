Rails.application.routes.draw do
  devise_for :accounts, :controllers => { registrations: 'registrations' }
  resources :donations
  root :to => "welcome#index"

  resources :members
  resources :accounts
  resources :organizations
  resources :emails
  resources :addresses

  mount MailsViewer::Engine => '/delivered_mails'
end
