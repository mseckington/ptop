class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @answer = Answer.find_or_create_by(user: current_user, question: question)
  end

  def answer_response
    if @answer.response
      "You've answered 'Yes'"
    else
      "You've answered 'No'"
    end
  end

  def question
    @question ||= Question.find_by_id(params[:id])
  end

  def yes_responses_count
    question.answers.where(response: true).count
  end

  def no_responses_count
    question.answers.where(response: false).count
  end

  helper_method :answer_response, :question, :yes_responses_count, :no_responses_count
end
