class QuestionnairesController < ApplicationController
  before_action :go_login
  before_action :set_questionnaire, only: %i[ show edit update destroy ]
  
  # GET /questionnaires or /questionnaires.json
  def index
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/1 or /questionnaires/1.json
  def show
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
    @question_count = 0
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires or /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    respond_to do |format|
      if @questionnaire.save
        format.html { redirect_to @questionnaire, notice: "Questionnaire was successfully created." }
        format.json { render :show, status: :created, location: @questionnaire }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires/1 or /questionnaires/1.json
  def update
    respond_to do |format|
      if @questionnaire.update(questionnaire_params)
        format.html { redirect_to @questionnaire, notice: "Questionnaire was successfully updated." }
        format.json { render :show, status: :ok, location: @questionnaire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaires/1 or /questionnaires/1.json
  def destroy
    @questionnaire.destroy
    respond_to do |format|
      format.html { redirect_to questionnaires_url, notice: "Questionnaire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_params
      params.require(:questionnaire).permit(:name, questions_attributes: [:id, :text, :question_type, :possible_solutions, :_destroy])
    end
end
