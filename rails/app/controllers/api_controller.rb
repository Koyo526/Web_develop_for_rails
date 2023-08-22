class Sample
    require 'net/https'
    require 'uri'
    require 'json'
  
    def post_message
      uri = URI.parse("https://miniul-api.herokuapp.com/affiliate/v2")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  
      message = "hogeeeeeeeeeeeee"
  
      http.start do
        req = Net::HTTP::Post.new(uri.path)
        req.set_form_data(body: message)
        http.request(req)
      end
    end
  end
