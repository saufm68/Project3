class AnswersController < ApplicationController

  def create
    question = Question.find(answer_params[:question_id])
    @answer = Answer.new(
      description: answer_params[:description],
      vote: 0,
      profile: current_user.profile,
      question: question,
      media: answer_params[:media]
    )
    @answer.save
    redirect_to question
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.answered = true
    @answer.save
    @profile = Profile.find(@answer.profile.id)
    @profile.exp += 1
    if @profile.level > 5
      if @profile.exp >= 10
        @profile.exp = 0
        @profile.level += 1
      end
    else
      if @profile.exp >= 5
        @profile.exp = 0
        @profile.level += 1
      end
    end
    @profile.save
    redirect_to @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :description, :media)
  end

end
