DemoProject::App.controllers :login do
    before :index do
        puts "XD"
    end
  
    get :index, :map => '/login' do
        @css = ['assets/login/css/index']
        @title = "Padrido Intento 2"
        render "login/index", :layout => :blank
    end

    post :acceder, :map => '/login/acceder' do
        usuario = params[:usuario]
        contrasenia = post(Url.service('cipher') + 'encode?key=' + $cipher_key + '&texto=' + params[:contrasenia])
        rpta = post(Url.service('accesos') + "usuario/validar?usuario=" + usuario + "&contrasenia=" + contrasenia)  
        if rpta.to_str  == "1"
            session[:estado] = 'autenticado'
            session[:usuario] = usuario
            session[:tiempo] = Time.now.strftime('%Y-%m-%d %H:%M:%S')
            
            redirect_to Url.base_url + ''
        else
            @css = ['assets/login/css/index']
            @title = 'Login'
            @mensaje = true

             render "login/index", :layout => :blank
        end
    end

    get :ver, :map => 'login/ver' do
        begin
            return 'usuario : ' + session[:usuario] + '</br>' + 'estado : ' + session[:estado] + '</br>' + 'tiempo : ' + session[:tiempo]
        rescue TypeError => e
            return 'Alguno de las variables de session están nulas'
        end
  end

    get :cerrar, :map => 'login/cerrar' do
        session.clear
        redirect Url.base_url + 'login'
    end
end
