class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
    render :index
  end

  def new
    @survey = Survey.new
    render :new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to surveys_path
    else
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id].to_i)
    render :edit
  end

  def show
    # binding.pry
    @survey = Survey.find(params[:id].to_i)
    render :show
  end

  def update
    @survey = Survey.find(params[:id].to_i)
    if @survey.update(survey_params)
      redirect_to surveys_path
    else
      render :edit
    end
  end

  def destroy
    @survey = Survey.find(params[:id].to_i)
    @survey.destroy
    redirect_to surveys_path
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end

end
