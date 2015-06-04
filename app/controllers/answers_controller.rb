class AnswersController < ApplicationController
  def create
    @answer = Answer.create(answer_params)
    redirect_to question_path(@answer.question)
  end

  def answer_params
    params.require(:answer).permit(:response, :question_id, :user_id)
  end
end
