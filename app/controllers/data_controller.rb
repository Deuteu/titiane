class DataController < ApplicationController
  before_action :authenticate_user!
  before_action :set_datum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @data = Datum.all
    respond_with(@data)
  end

  def show
    respond_with(@datum)
  end

  def new
    @datum = Datum.new
    respond_with(@datum)
  end

  def edit
  end

  def create
    @datum = Datum.new(datum_params)
    @datum.save
    respond_with(@datum)
  end

  def update
    @datum.update(datum_params)
    respond_with(@datum)
  end

  def destroy
    @datum.destroy
    respond_with(@datum)
  end

  private
    def set_datum
      @datum = Datum.find(params[:id])
    end

    def datum_params
      params.require(:datum).permit(:email, :phone, :link, :ref, :year, :order)
    end
end
