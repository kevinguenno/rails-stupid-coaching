class QuestionsController < ApplicationController
  def ask

  end

  def answer
    return unless params[:message]

    @message = params[:message]
    @response = if @message == 'I am going to work'
                  'Great!'
                elsif @message.include?('?')
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
    @response
  end
end
