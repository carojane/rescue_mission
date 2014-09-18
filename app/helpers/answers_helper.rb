module AnswersHelper
  def choose_best(answer)
    @best_answer = Answer.find_by(best: true)
    @best_answer.update(best: false)
    answer.update(best: true)
  end
end
