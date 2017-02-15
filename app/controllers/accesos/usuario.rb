DemoProject::App.controllers :usuario do
    before :index, :listar, :ver_accesos, :listar_accesos, :editar, :ver_roles_permisos, :listar_permisos, :asociar_permisos, :listar_roles, :asociar_roles do
        logueado
    end
  
    get :index, :map => '/accesos/usuarios' do
        @title = 'Gestión de USuarios'
        @modulo = 'Accesos'
        @css = ['bower_components/swp-plugins/assets/css/mootools.grid']
        @js = ['bower_components/swp-plugins/assets/js/mootools.dao', 'bower_components/swp-plugins/assets/js/mootools.form', 'bower_components/swp-plugins/assets/js/mootools.observer', 'bower_components/swp-plugins/assets/js/mootools.grid', 'bower_components/swp-plugins/assets/js/mootools.chain', 'assets/accesos/usuarios/js/index']
        @test_js = ['accesos/usuario/index_test']
        @qunit = true

        render 'accesos/usuario/index', :layout => :application
    end

    get :listar, :map => '/accesos/usuario/listar' do
       get(Url.service('accesos') + "usuario/listar")
    end

    get :ver_accesos, :map => '/accesos/usuario/ver_accesos' do
        @titulo_modal = 'Ver Accesos'
        @modal_js = ['assets/accesos/usuarios/js/accesos']

        render 'accesos/usuario/accesos', :layout => :modal_small
    end

    get :listar_accesos, :map => '/accesos/usuario/listar_accesos/:usuario_id' do
        usuario_id = params[:usuario_id]
        get(Url.service('accesos') + "usuario/listar_accesos/" + usuario_id)
    end

    get :editar, :map => '/accesos/usuario/editar_usuario' do
        @titulo_modal = 'Editar Usuario'
        @modal_js = ['assets/accesos/usuarios/js/usuario']

        render 'accesos/usuario/usuario', :layout => 'modal_medium'
    end

    get :ver_roles_permisos, :map => '/accesos/usuario/ver_roles_permisos' do
       usuario_id = params[:usuario_id]
       @modal_js = ['assets/accesos/usuarios/js/roles_permisos']
       @titulo_modal = 'Gestione los Roles y Permisos del Usuario'

       render 'accesos/usuario/roles_permisos', :layout => 'modal_large'
    end

    get :listar_permisos, :map => '/accesos/usuario/listar_permisos/:usuario_id' do
       usuario_id = params[:usuario_id]
       get(Url.service('accesos') + "usuario/listar_permisos/" + usuario_id)
    end

    post :asociar_permisos, :map => '/accesos/usuario/asociar_permisos' do
        data = params[:data]
        post(Url.service('accesos') + "usuario/asociar_permisos?data=" + data)
    end

    get :listar_roles, :map => '/accesos/usuario/listar_roles/:usuario_id' do
       usuario_id = params[:usuario_id]
       get(Url.service('accesos') + "usuario/listar_roles/" + usuario_id)
    end

    post :asociar_roles, :map => '/accesos/usuario/asociar_roles' do
        data = params[:data]
        post(Url.service('accesos') + "usuario/asociar_roles?data=" + data)
    end
end