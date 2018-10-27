class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
  end

  def create
    params = question_params
    params[:tag] = Tag.find_by(name: params[:tag])
    @question = Question.new(params)
    @question.profile = current_user.profile
    @question.save
    redirect_to @question
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:tag, :title, :description)
  end
end
