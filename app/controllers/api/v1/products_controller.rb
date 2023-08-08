# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/products_controller.rb
    class ProductsController < ApplicationController
      skip_before_action :authenticate_user!

      def index
        @products = Product.all
        render json: @products.to_json(include: { photos: { methods: :url } })
      end

      def show
        @product = Product.find(params[:id])
        render json: @product.to_json(include: { photos: { methods: :url } })
      end
    end
  end
end
