class HostsController < ApplicationController
  before_action :set_host, only: [:show, :edit, :update, :destroy]

  # GET /hosts
  # GET /hosts.json
  def index
    @hosts = Host.all
  end

  # GET /hosts/1
  # GET /hosts/1.json
  def show
  end

  # GET /hosts/new
  def new
    @host = Host.new
    @host.events.build
  end

  # GET /hosts/1/edit
  def edit
  end

  # POST /hosts
  # POST /hosts.json
  def create
    @host = Host.new(host_params)

    errors = {}

    unless @host.save
      errors.merge! @host.errors
    end

    event = Event.new(event_params.merge(host: @host))

    unless event.save
      errors.merge! event.errors
    end

    if errors.empty?
      render action: 'show', status: :created, location: @host
    else
      render json: {errors: {host: errors}}.to_json, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hosts/1
  # PATCH/PUT /hosts/1.json
  def update
    respond_to do |format|
      if @host.update(host_params)
        format.html { redirect_to @host, notice: 'Host was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hosts/1
  # DELETE /hosts/1.json
  def destroy
    @host.destroy
    respond_to do |format|
      format.html { redirect_to hosts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host
      @host = Host.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_params
      params.permit(:name, :email, :phone)
    end

    def event_params
      params.permit(:event_date, :city)
    end
end
