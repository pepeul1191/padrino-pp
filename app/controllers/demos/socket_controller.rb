DemoProject::App.controllers :socket_controller do
    before :index do
        #logueado
    end
  
    get :index, :map => '/demo/socket' do
    	@js = ['bower_components/jquery/dist/jquery.min', 'bower_components/jquery-simple-websocket/dist/jquery.simple.websocket.min', 'assets/demos/sockets/index']
        @title = 'Socket Demo'
        render 'demo/socket/index', :layout => :blank
    end
end
