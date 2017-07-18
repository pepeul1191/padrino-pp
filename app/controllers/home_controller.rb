DemoProject::App.controllers :home_controller do
    before :index do
        #logueado
    end
  
    get :index, :map => '/home' do
        @title = "Padrido Home"
        render "home/index", :layout => :home
    end
end
