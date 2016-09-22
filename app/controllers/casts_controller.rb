class CastsController < ApplicationController

  def show
    @cast = Cast.find(params[:id])
  end

  def search
    @casts = Cast.where('cast LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

end
