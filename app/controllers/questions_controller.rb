class QuestionsController < ApplicationController
  def ask
  end









  def answer_old(your_message)
    if (your_message.include? '?') && (your_message == your_message.upcase)
      @answer = 'I can feel your motivation! Silly question, get dressed and go to work!'
    elsif your_message == 'I AM GOING TO WORK RIGHT NOW!'
      @answer = ''
    elsif your_message == your_message.upcase
      @answer = 'I can feel your motivation! I don\'t care, get dressed and go to work!'
    elsif your_message.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      @answer = 'Great!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end

  def answer
    # binding.pry
    msg = params[:question]
    answer_old(msg)
  end
end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
# end


# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message.include? "?"
#     return "Silly question, get dressed and go to work!"
#   elsif your_message == "I am going to work right now!"
#     return ""
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end
