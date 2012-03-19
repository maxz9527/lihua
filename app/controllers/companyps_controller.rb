class CompanypsController < ApplicationController
  # GET /companyps
  # GET /companyps.json
   before_filter :authenticate_admin!
  def index
    @companyps = Companyp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @companyps }
    end
  end

  # GET /companyps/1
  # GET /companyps/1.json
  def show
    @companyp = Companyp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @companyp }
    end
  end

  # GET /companyps/new
  # GET /companyps/new.json
  def new
    @companyp = Companyp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @companyp }
    end
  end

  # GET /companyps/1/edit
  def edit
    @companyp = Companyp.find(params[:id])
  end

  # POST /companyps
  # POST /companyps.json
  def create
    @companyp = Companyp.new(params[:companyp])

    respond_to do |format|
      if @companyp.save
        format.html { redirect_to @companyp, notice: 'Companyp was successfully created.' }
        format.json { render json: @companyp, status: :created, location: @companyp }
      else
        format.html { render action: "new" }
        format.json { render json: @companyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /companyps/1
  # PUT /companyps/1.json
  def update
    @companyp = Companyp.find(params[:id])

    respond_to do |format|
      if @companyp.update_attributes(params[:companyp])
        format.html { redirect_to @companyp, notice: 'Companyp was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @companyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyps/1
  # DELETE /companyps/1.json
  def destroy
    @companyp = Companyp.find(params[:id])
    @companyp.destroy

    respond_to do |format|
      format.html { redirect_to companyps_url }
      format.json { head :ok }
    end
  end
end
