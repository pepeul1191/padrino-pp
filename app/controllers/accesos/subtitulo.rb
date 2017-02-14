DemoProject::App.controllers :subtitulo do
    before :index, :guardar do
        logueado
    end
  
    get :index, :map => '/accesos/subtitulo/listar/:modulo_id' do
		modulo_id = params[:modulo_id]
		get(Url.service('accesos') + "subtitulo/listar/" + modulo_id.to_s)
    end

    post :guardar, :map => '/accesos/subtitulo/guardar' do
		data = params[:data]
		post(Url.service('accesos') + "subtitulo/guardar?data=" + data)
    end
end
