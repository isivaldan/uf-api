class UfsController < ApplicationController
  
  def daily
    if  UfPrice.find_by(date: params[:date])
    setting = Setting.first
    setting.request_count += 1
    setting.save

    @uf= UfPrice.find_by(date: params[:date])
    render json: @uf.uf, status: :ok
    else
      render json: {status: "error", code: 3000, message: "Can't find the date"}
    end
  end

  def stats
    @stats = Setting.first
    render json: @stats.request_count, status: :ok
  end
end