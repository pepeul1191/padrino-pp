class Statics
  @url = 'http://localhost:8001/dashboard/'
  @nombre_app = 'Aplicación con Rails'

  def initialize(modulo, controlador)
      @controlador = controlador
      @modulo = modulo
      @css = Array.new
      @js = Array.new
      @public_css = Array.new
      @public_js = Array.new
  end
  #funciones estáticas
  def self.nombre_app
      @nombre_app
  end
  def self.url
      @url
  end
  def self.url_public_css
    @url + 'assets/site/css/'
  end
  def self.url_public_js
    @url + 'assets/site/js/'
  end
  def self.url_public_img
    @url + 'assets/site/img/'
  end
  def self.url_bower
     @url + 'bower_components/'
  end
  #archivos del controlador
  def modulo
      @modulo
  end
  def controlador
      @controlador
  end
  def css
      @css
  end
  def set_css(css)
    css.each{ |k| @css.push(k)  }
  end
  def js
      @js
  end
  def set_js(js)
    js.each{ |k| @js.push(k)  }
  end
  #archivos publicos
  def public_css
      @public_css
  end
  def set_public_css(public_css)
    public_css.each{ |k| @public_css.push(k)  }
  end
  def public_js
      @public_js
  end
  def set_public_js(public_js)
    public_js.each{ |k| @public_js.push(k)  }
  end
end
