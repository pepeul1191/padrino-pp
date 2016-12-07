# Helper methods defined here can be accessed in any controller or view in the application

module DemoProject
  class App
    module AppHelper
      	def menu_modulos(modulo)
	        modulo.upcase   
	    end
    end

    helpers AppHelper
  end
end