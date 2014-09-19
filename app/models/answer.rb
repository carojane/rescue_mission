class Answer < ActiveRecord::Base
  belongs_to :question

  validates :description, presence: true, length: { minimum: 50 }
  validates_uniqueness_of :best if :best == true
end
