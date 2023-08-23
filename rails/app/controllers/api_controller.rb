class ApiController
  require 'net/https'
  require 'uri'
  require 'json'

  def post_message(form_data)
    uri = URI.parse("https://miniul-api.herokuapp.com/affiliate/v2")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    http.start do
      req = Net::HTTP::Post.new(uri.path)
      req.set_form_data(form_data)
      http.request(req)
    end
  end
end
