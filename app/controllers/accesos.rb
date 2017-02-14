DemoProject::App.controllers :accesos do
    before :index do
        logueado
    end
  
    get :index, :map => '/accesos' do
        @title = "Módulo de Accesos"
        @modulo = 'Accesos'
        render "accesos/index", :layout => :application
    end
end
