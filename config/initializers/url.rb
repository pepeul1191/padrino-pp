class Url
    @base_url = 'http://localhost:3000/'
    @services = { 
                'statics' => 'http://localhost:8001/html-redmine/',
    	       'accesos' => 'http://localhost:5001/', 
                'cipher' => 'http://localhost:5000/', 
    	       'acl' => 'http://localhost:3003/' 
    	}

    def self.base_url
        @base_url
    end

    def self.statics
         @services['statics']
    end

    def self.service(key)
        @services[key]
    end

end