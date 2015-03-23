class AnswersController < ApplicationController

  def show

  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question_id = params[:question_id]
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question_id

    if @answer.save
      redirect_to question_path(@question.id)
    else
      render :new
    end
  end

private

  def answer_params
    params.require(:answer).permit(:answer, :user_id, :question_id)
  end


end
