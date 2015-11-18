class DemoreelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_demoreel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @demoreels = Demoreel.all
    respond_with(@demoreels)
  end

  def show
    respond_with(@demoreel)
  end

  def new
    @demoreel = Demoreel.new
    respond_with(@demoreel)
  end

  def edit
  end

  def create
    @demoreel = Demoreel.new(demoreel_params)
    @demoreel.save
    respond_with(@demoreel)
  end

  def update
    @demoreel.update(demoreel_params)
    respond_with(@demoreel)
  end

  def destroy
    @demoreel.destroy
    respond_with(@demoreel)
  end

  private
    def set_demoreel
      @demoreel = Demoreel.find(params[:id])
    end

    def demoreel_params
      params.require(:demoreel).permit(:title, :link)
    end
end
