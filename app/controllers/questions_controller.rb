class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    params = question_params
    params[:tag] = Tag.find_by(name: params[:tag])
    if params[:media]
      file = params[:media].path
      cloudinary_file = Cloudinary::Uploader.upload(file)
      params[:media] = cloudinary_file['public_id']
    end
    @question = Question.new(params)
    @question.profile = current_user.profile
    @question.save
    redirect_to @question
  end

  def show
    if user_signed_in?
      @bookmark = Bookmark.find_by(profile_id: current_user.id, question_id: params[:id])
    end
    @question = Question.find(params[:id])
    @answer = Answer.new
    @correctAnswer = Answer.find_by(question_id: @question.id, answered: true)
    @answers = Answer.where(question_id: @question.id, answered: false)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:tag, :title, :description, :media)
  end
end
