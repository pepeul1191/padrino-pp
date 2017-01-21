DemoProject::App.controllers :base do
    get :index , :map => '/maestros/base' do
        @title = "Padrido Intento 2"
        render "maestros/base/index", :layout => :blank
    end
end
