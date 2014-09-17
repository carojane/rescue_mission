class Answer < ActiveRecord::Base
  belongs_to :question

  validate :description, presence: true, length: { minimum: 50 }
end
