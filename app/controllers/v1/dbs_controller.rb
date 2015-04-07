class V1::DbsController < ApplicationController
  def index
    render json:{dbs: Db.all.as_json({full: params[:full]})}, status: 200
  end
end
