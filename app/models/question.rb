class Question < ActiveRecord::Base
  ANSWER_THRESHOLD = 1

  has_many :answers
  has_many :users, through: :answers

  def threshold_reached?
    answers.count > ANSWER_THRESHOLD
  end

  def majority_agreed?
    total = answers.count
    yes_total = answers.where(response: true).count
    no_total = answers.where(response: false).count

    yes_percentage = yes_total.to_f / total * 100
    no_percentage = no_total.to_f / total * 100

    (yes_percentage > 90) || (no_percentage > 90)
  end

  def resolved?
    threshold_reached? && majority_agreed?
  end
end
