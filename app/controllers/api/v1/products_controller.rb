# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/products_controller.rb
    class ProductsController < ApplicationController
      def index
        @products = Product.all
        render json: @products
      end
    end
  end
end
