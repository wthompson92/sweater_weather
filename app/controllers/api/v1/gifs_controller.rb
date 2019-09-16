class Api::V1::GifsController < ApplicationController

  def index
    render json: GifSerializer.new(Gif.new(search_params[:q]))
  end

private

  def search_params
    params.permit(:q)
  end
end
