require_relative '../app/controllers/api_controller.rb'
require 'rspec/mocks'
require 'rails_helper'

describe ApiController do
  let(:api_controller) { ApiController.new }

  let(:form_data) {
    {
      "branch_id" => "11111",
      "property_city" => "1111",
      "property_address" => "神戸市北区鹿の子台",
      "property_type" => "1",
      "property_exclusive_area" => "11111.1",
      "property_land_area" => "1111.1",
      "property_building_area_float" => "1111.1",
      "property_building_area_unit" => "1",
      "property_floor_area" => "11111.1",
      "url_param" => "bestsmile",
      "property_room_plan" => "1",
      "property_constructed_year" => "16",
      "user_email" => "john@example.com",
      "user_name" => "中田　愛刀",
      "user_name_kana" => "john@example.com",
      "user_tel" => "090-XXXX-XXXX",
    }
  }

  subject do
    api_controller.post_message(form_data)
  end

  it 'sends a POST request with form data' do
    before do

    end

    # モック処理
    http_double = instance_double(Net::HTTP) # HTTP通信を行うメソッド（Net::HTTP）を模倣する
    expect(Net::HTTP).to receive(:new).and_return(http_double)
    expect(http_double).to receive(:use_ssl=).with(true)
    expect(http_double).to receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_NONE)

    request_double = instance_double(Net::HTTP::Post)
    expect(Net::HTTP::Post).to receive(:new).and_return(request_double)
    expect(request_double).to receive(:set_form_data).with(form_data)

    response_double = instance_double(Net::HTTPOK)
    expect(http_double).to receive(:start).and_yield
    expect(http_double).to receive(:request).with(request_double).and_return(response_double)

    response = api_controller.post_message(form_data)

    expect(response).to eq(response_double)
  end
end