class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by_id(params[:id])
    @answer = Answer.new
  end

end
