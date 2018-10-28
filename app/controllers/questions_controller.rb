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
    @question = Question.new(params)
    @question.profile = current_user.profile
    @question.save
    redirect_to @question
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
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
