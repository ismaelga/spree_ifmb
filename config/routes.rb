Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match '/ifmb' => 'ifmb_callback#notify', :via => [:get, :post]
end
