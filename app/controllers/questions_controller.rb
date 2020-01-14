class QuestionsController < ApplicationController
  def show
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    render :show
  end

  def edit
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    render :edit
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
    render :new
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to survey_path(@question.survey)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to survey_path(@question.survey)
  end 

end
