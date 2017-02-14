DemoProject::App.controllers :rol do
    before :index, :listar, :guardar, :asociar_permisos do
        logueado
    end
  
    get :index, :map => '/accesos/permisos' do
        @title = 'Gestión de Permisos'
        @modulo = 'Accesos'
        @css = ['bower_components/swp-plugins/assets/css/mootools.grid']
        @js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/permiso/js/index']

        render 'accesos/permiso/index', :layout => :application
    end

    get :listar, :map => '/accesos/rol/listar' do
       get(Url.service('accesos') + "rol/listar")
    end

    post :guardar, :map => '/accesos/rol/guardar' do
		data = params[:data]
		post(Url.service('accesos') + "rol/guardar?data=" + data)
    end

    post :asociar_permisos, :map => '/accesos/rol/asociar_permisos' do
        data = params[:data]
        post(Url.service('accesos') + "rol/ascociar_permisos?data=" + data)
    end
end