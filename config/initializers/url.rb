class Url
  @base_url = 'http://localhost:3000/'
  @services = { 
  		'accesos' => 'http://localhost:5001/', 
  		'acl' => 'http://localhost:3003/' 
  	}

  def self.base_url
      @base_url
  end

  def self.service(key)
      @services[key]
  end

end