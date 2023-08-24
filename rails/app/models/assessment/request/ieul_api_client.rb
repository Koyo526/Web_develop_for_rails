# frozen_string_literal: true
require 'net/https'
require 'uri'
require 'json'

class Assessment::Request::IeulApiClient
  API_ENDPOINT = 'https://miniul-api.herokuapp.com'

  attr_reader :net_http

  def initialize
    uri = URI.parse(API_ENDPOINT)
    @net_http = Net::HTTP.new(uri.host, uri.port).tap do | h |
      h.use_ssl = true
      h.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end
  end

  def post(params)
    net_http.start do |http|
      req = Net::HTTP::Post.new("/affiliate/v2/conversions")
      req.set_form_data(params)
      http.request(req)
    end
  end
end
