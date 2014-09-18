class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)

    if @answer.errors.any?
    end
      redirect_to question_path(@question)
  end

  def edit
    @question = Question.find(params[:question_id])

    @best_answer = Answer.find_by(best: true)
    @best_answer.update_attribute(:best, false)

    @answer = Answer.find(params[:id])
    @answer.update_attribute(:best, true)

    redirect_to @question
  end

  private
    def answer_params
      params.require(:answer).permit(:description)
    end
end
