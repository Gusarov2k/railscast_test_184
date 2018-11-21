class SumptomsController < ApplicationController
  before_action :set_sumptom, only: [:show, :edit, :update, :destroy]

  # GET /sumptoms
  # GET /sumptoms.json
  def index
    @sumptoms = Sumptom.all
  end

  # GET /sumptoms/1
  # GET /sumptoms/1.json
  def show
  end

  # GET /sumptoms/new
  def new
    @sumptom = Sumptom.new
  end

  # GET /sumptoms/1/edit
  def edit
  end

  # POST /sumptoms
  # POST /sumptoms.json
  def create
    @sumptom = Sumptom.new(sumptom_params)

    respond_to do |format|
      if @sumptom.save
        format.html { redirect_to @sumptom, notice: 'Sumptom was successfully created.' }
        format.json { render :show, status: :created, location: @sumptom }
      else
        format.html { render :new }
        format.json { render json: @sumptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sumptoms/1
  # PATCH/PUT /sumptoms/1.json
  def update
    respond_to do |format|
      if @sumptom.update(sumptom_params)
        format.html { redirect_to @sumptom, notice: 'Sumptom was successfully updated.' }
        format.json { render :show, status: :ok, location: @sumptom }
      else
        format.html { render :edit }
        format.json { render json: @sumptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sumptoms/1
  # DELETE /sumptoms/1.json
  def destroy
    @sumptom.destroy
    respond_to do |format|
      format.html { redirect_to sumptoms_url, notice: 'Sumptom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sumptom
      @sumptom = Sumptom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sumptom_params
      params.require(:sumptom).permit(:animal_id, :problem_id)
    end
end
