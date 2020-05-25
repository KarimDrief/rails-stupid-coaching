class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:answer]
    if @ask == 'I am going to work'
      @answer = 'Great!'
    elsif @ask == ''
      @answer = "I can't hear you !"
    elsif @ask.include?('?')
      @answer = 'Silly question ! Get dressed and go to work !'
    else
      @answer = "I don't care, get dressed and go to work !"
    end
  end
end
