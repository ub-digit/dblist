class V1::DbsController < ApplicationController
  def index
    render json:{dbs: Db.all.includes(:categorizations, :classifications, :descriptions, :publishers, :alternate_titles, :urls).as_json({full: params[:full]})}, status: 200
  end
end
