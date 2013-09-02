class DudesController < ApplicationController
  before_action :set_dude, only: [:show, :edit, :update, :destroy]

  # GET /dudes
  # GET /dudes.json
  def index
    @dudes = Dude.all
  end

  # GET /dudes/1
  # GET /dudes/1.json
  def show
  end

  # GET /dudes/new
  def new
    @dude = Dude.new
  end

  # GET /dudes/1/edit
  def edit
  end

  # POST /dudes
  # POST /dudes.json
  def create
    @dude = Dude.new(dude_params)

    respond_to do |format|
      if @dude.save
        format.html { redirect_to @dude, notice: 'Dude was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dude }
      else
        format.html { render action: 'new' }
        format.json { render json: @dude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dudes/1
  # PATCH/PUT /dudes/1.json
  def update
    respond_to do |format|
      if @dude.update(dude_params)
        format.html { redirect_to @dude, notice: 'Dude was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dudes/1
  # DELETE /dudes/1.json
  def destroy
    @dude.destroy
    respond_to do |format|
      format.html { redirect_to dudes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dude
      @dude = Dude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dude_params
      params.require(:dude).permit(:name, :bio, :picture, :activity, :neighborhood_preference, :email, :phone)
    end
end
