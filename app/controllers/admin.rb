DemoProject::App.controllers :admin do
    before :index do
        puts "XD"
    end
  
    get :index, :map => '/admin' do
        @title = "Padrido Intento 2"
        render "admin/index", :layout => :blank
    end

    before :detalle do
        puts "1++++++++++++++++++++++++++++++++++++++++++"
        if params[:data].to_i < 18
            puts "es menor de edad???"
        else
            puts "es mayor de edad???"
        end
        puts "2++++++++++++++++++++++++++++++++++++++++++"
    end

    get :detalle, :map => '/admin/detalle/:id' do
       "detalle???<br> id = " + params[:id] + "<br> data = " + params[:data]
    end

    get :new do
       logeado(3)
        "nuevo"
    end

    post :create, :map => '/admin/enviar/' do
      "hola"
    end

end
