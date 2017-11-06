class PagesController < ApplicationController
  ANSWERS = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def ask

  end

  def answer
    @question = params[:question]
     @answers = ANSWERS
     if (params[:question].downcase == "i am going to work")
      @answer = @answers[0]
     elsif (params[:question].include?("?"))
      @answer = @answers[1]
     else
      @answer = @answers[2]
    end
  end
end
