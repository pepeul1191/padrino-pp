DemoProject::App.controllers :item do
    before :index do
        logueado
    end
  
    get :index, :map => '/accesos/item/listar/:subtitulo_id' do
		subtitulo_id = params[:subtitulo_id]
		get(Url.service('accesos') + 'item/listar/' + subtitulo_id.to_s)
    end

    post :index, :map => '/accesos/item/guardar' do
		data = params[:data]
		post(Url.service('accesos') + "item/guardar?data=" + data)
    end
end
