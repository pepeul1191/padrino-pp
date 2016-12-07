DemoProject::App.controllers :admin do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
    get :index do
        @title = "Padrido Intento 2"
        render "admin/index", :layout => :blank
    end

    get :new do
       logeado(3)
        "nuevo"
    end

    post :create do

    end

end
