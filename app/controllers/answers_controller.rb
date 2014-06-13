class AnswersController < ApplicationController
  def index
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      @question = Question.find(params[:question_id])
      flash[:notice] = "Good answer! You are probably correct."
      redirect_to @question
    else
      flash[:notice] = "Sorry, that didn't work. You broke the computer, you idiot!"

    end
  end

  def show
  end

  def new
  end


  private

  def answer_params
   results =  params.require(:answer).permit( :answer)
   results[:question_id] = params[:question_id]
   results
  end

end
