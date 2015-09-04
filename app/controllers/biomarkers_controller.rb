class BiomarkersController < ApplicationController
  before_action :set_biomarker, only: [:show, :edit, :update, :destroy]

  # GET /biomarkers
  # GET /biomarkers.json
  def index
    @biomarkers = Biomarker.all
  end

  # GET /biomarkers/1
  # GET /biomarkers/1.json
  def show
  end

  # GET /biomarkers/new
  def new
    @biomarker = Biomarker.new
  end

  # GET /biomarkers/1/edit
  def edit
  end

  # POST /biomarkers
  # POST /biomarkers.json
  def create
    @biomarker = Biomarker.new(biomarker_params)

    respond_to do |format|
      if @biomarker.save
        format.html { redirect_to @biomarker, notice: 'Biomarker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @biomarker }
      else
        format.html { render action: 'new' }
        format.json { render json: @biomarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biomarkers/1
  # PATCH/PUT /biomarkers/1.json
  def update
    respond_to do |format|
      if @biomarker.update(biomarker_params)
        format.html { redirect_to @biomarker, notice: 'Biomarker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @biomarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biomarkers/1
  # DELETE /biomarkers/1.json
  def destroy
    @biomarker.destroy
    respond_to do |format|
      format.html { redirect_to biomarkers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biomarker
      @biomarker = Biomarker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biomarker_params
      params.require(:biomarker).permit(:marker, :matrix, :purpose, :decision, :evidence_level, :analyte_type, :clinical_relevance, :project_id)
    end
end
