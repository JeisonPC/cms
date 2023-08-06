# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/products_controller.rb
    class ProductsController < ApplicationController
      skip_before_action :authenticate_user!

      def index
        @products = Product.all
        render json: @products
      end
    end
  end
end
