class Api::CategoriesController < ApplicationController
  def index
    render status: 200, json: {
      category: Category.all
    }.to_json
  end
end
