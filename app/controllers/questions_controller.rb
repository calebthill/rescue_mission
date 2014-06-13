class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Thank you for submiting a question!"
      redirect_to questions_path
    else
      flash[:notice] = "Did not go through!"
      render :new
    end
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end



  private
  def question_params
    params.require(:question).permit(:title, :description)
  end


end
