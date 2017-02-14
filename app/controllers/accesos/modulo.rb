DemoProject::App.controllers :modulo do
    before :index, :guardar do
        logueado
    end
  
    get :index, :map => '/accesos/modulo/listar' do
    	get(Url.service('accesos') + 'modulo/listar')
    end

    post :guardar, :map => '/accesos/modulo/guardar' do
    	data = params[:data]
		post(Url.service('accesos') + "modulo/guardar?data=" + data)
    end
end
