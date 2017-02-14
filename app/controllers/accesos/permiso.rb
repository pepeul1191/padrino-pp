DemoProject::App.controllers :permiso do
    before :index, :listar, :guardar, :listar_asociados do
        logueado
    end
  
    get :index, :map => '/accesos/permisos' do
        @title = 'Gestión de Permisos'
        @modulo = 'Accesos'
        @css = ['bower_components/swp-plugins/assets/css/mootools.grid']
        @js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/permiso/js/index']

        render 'accesos/permiso/index', :layout => :application
    end

    get :listar, :map => '/accesos/permiso/listar' do
       get(Url.service('accesos') + "permiso/listar")
    end

    post :guardar, :map => '/accesos/permiso/guardar' do
		data = params[:data]
		post(Url.service('accesos') + "permiso/guardar?data=" + data)
    end

    get :listar_asociados, :map => '/accesos/permiso/listar_asociados/:id' do
       id_rol = params[:id]
       get(Url.service('accesos') + "permiso/listar_asociados/" +id_rol)
    end
end
