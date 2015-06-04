class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :answers
  has_many :questions, through: :answers
end
