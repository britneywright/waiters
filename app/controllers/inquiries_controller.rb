class InquiriesController < ApplicationController
before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

  def index
    @inquiries = Inquiry.all
  end

  def show
  end

  def new
    @inquiry = Inquiry.new
  end

  def edit
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
  
    respond_to do |format|
      if (@inquiry.save)
        format.js { render action: "show", status: :created, location: @inquiry }
      else
        format.js { render json: @inquiry.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to inquiries_url }
      format.json { head :no_content }
    end
  end

  private

    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    def inquiry_params
      params.permit(:name, :role, :email, :phone, :city, :license, :date)
    end
end