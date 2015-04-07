class V1::KeywordsController < ApplicationController
  def index
    render json:{keywords: Keyword.all}, status: 200
  end
end
