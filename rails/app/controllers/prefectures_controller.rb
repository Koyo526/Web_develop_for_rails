# frozen_string_literal: true

class PrefecturesController < ApplicationController
  def index
    @offices = Office.all
    @reviews = Review.all
  end
end
