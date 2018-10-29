class AnswersController < ApplicationController

  def create
    question = Question.find(answer_params[:question_id])
    @answer = Answer.new(
      description: answer_params[:description],
      vote: 0,
      profile: current_user.profile,
      question: question
    )
    @answer.save
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :description)
  end

end
