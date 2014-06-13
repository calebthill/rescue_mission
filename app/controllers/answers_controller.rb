class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      flash[:notice] = "Good answer! You are probably correct."
      redirect_to questions_path
    else
      flash[:notice] = "Sorry, that didn't work. You broke the computer, you idiot!"
      render :new
    end
  end

  def show
  end

  def new
  end


  private

  def answer_params
    params.require(:answer).permit(:answer)
  end

end
