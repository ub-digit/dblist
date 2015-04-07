class V1::CategoriesController < ApplicationController
  def index
    render json:{categories: Category.all}, status: 200
  end
end
