# frozen_string_literal: true
require 'net/https'
require 'uri'
require 'json'

class Assessment::Request::IeulApiClient
  API_ENDPOINT = 'https://miniul-api.herokuapp.com/affiliate/v2'

  def post(params)
    uri = URI.parse("#{API_ENDPOINT}/conversions")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    http.start do
      req = Net::HTTP::Post.new(uri.path)
      req.set_form_data(params)
      http.request(req)
    end
  end
end
