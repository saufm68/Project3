class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    question = Question.find(answer_params[:question_id])
    @answer = Answer.new(
      description: answer_params[:description],
      vote: 0,
      profile: current_user.profile,
      question: question,
      answered: false
    )
    if answer_params[:media]
      file = answer_params[:media].path
      cloudinary_file = Cloudinary::Uploader.upload(file)
      @answer[:media] = cloudinary_file['public_id']
    end
    @answer.save
    redirect_to question
  end

  def update
    @answer = Answer.find(params[:id])
    if params[:purpose] == "upvote"
      @answer.vote += 1
      @answer.save
    else
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
    end
    redirect_to @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :description, :media)
  end

end
